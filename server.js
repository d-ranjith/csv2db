// Load express and csv processing modules
var express = require("express");
var csv = require('ya-csv');
var multer  = require('multer');
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './uploads/')
  },
  filename: function (req, file, cb) {
    cb(null, file.fieldname + '-' + Date.now())
  }
})
// Store the uploaded file in server (upload folder)
var upload = multer({ storage: storage });

var app     = express();

app.use(express.static(__dirname + '/View'));
//Store all HTML files in view folder.
app.use(express.static(__dirname + '/Script'));
//Store all JS and CSS in Scripts folder.

// Setup MySQL connection
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'xxxx',
  database : 'csv2db'
});

// Verifies database connection status
connection.connect(function(err){
if(!err) {
    console.log("Database is connected ... nn");
} else {
    console.log("Error connecting database ... nn");
}
});

// URL routing settings
app.get('/',function(req,res){
  res.sendFile('index.html');
  //It will find and locate index.html from View or Scripts
});

// Fetches data from MySQL for rendering
app.get('/load',function(req,res){
      connection.query("select * from expenses_per_month",function(err,rows){
      if(err) {
          console.log("Problem with MySQL"+err);
      }
      else {
          res.end(JSON.stringify(rows));
      }
  });
});

// Loads View/data_example.csv file and inserts each line to MySQL database.
// Parsing separator is configured for , and ""
// CSV first header entry line is not processed.
// Date insert requires STR_TO_DATE() function.
//app.post('/upload', upload.single('expensefile'), function(req,res){
app.post('/upload', upload.single('expensefile'), function(req,res){

  try {
                // equivalent of csv.createCsvFileReader('data.csv')
//          if (req.file.name === undefined) {
//                throw new Error('Invalid click!');
//          }
              console.log('File name is ' + req);
              console.log('File name is ' + req.file.name);
              console.log('File size is ' + req.file.size);
              console.log('File size is ' + req.file.path);
              var reader = csv.createCsvFileReader(req.file.path, {
            //  var reader = csv.createCsvFileReader('data_example.csv', {
                  'separator': ',',
                  'quote': '"',
                  'escape': '"',
                  'comment': '',
              });
              var writer = new csv.CsvWriter(process.stdout);
              var i = 0;
              reader.addListener('data', function(data) {
                  // console.log("==DATA LENGTH==>", + data) ;
                  i =i+1;
                  if (i !=1 )  // Skip header line
                  {
                              console.log('Processing Employee' + i );
                              var post  = {emp_id:i, name:data[2], address:data[3]};
                              var query = connection.query('INSERT INTO employees SET ? ', post, function(error, result) {
                              });

                              //console.log(query.sql);
                                    // var post  = {expense_id:i, emp_id:i ,category:data[1], expense_date:"(STR_TO_DATE(" + data[0] + ",'%m/%d/%Y')", description:data[4], pre_tax_amt:data[5], tax_name:data[6], tax_amt:data[7]};
                                    // var post  = {expense_id:i, emp_id:i ,category:data[0], expense_date:"(STR_TO_DATE(`" + data[0] + "`,`%m/%d/%Y`)", description:data[4], pre_tax_amt:data[5], tax_name:data[6], tax_amt:data[7]};
                                    // var query = connection.query('INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt) VALUES ? ', post, function(error, result) {
                                    var query = connection.query('INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt) VALUES ('
                                                             + i + ',' + i + ',"'
                                                             +  data[1] + '", STR_TO_DATE(\'' + data[0] + '\',\'%m/%d/%Y\'),"'+ data[4] + '",'+ data[5].split(',').join('') +',"'
                                                             + data[6] +'",'+ data[7] +')', function(error, result) {
                                    // console.log(query.sql);
                               });

                 }
                 console.log("File processing complete");
                  // writer.writeRecord([ data[0] , data[1] ]);
              });
        } catch (e) {
          console.log(e.name + ': ' + e.message);
        }
});

app.listen(3000);

console.log("Running at Port 3000");
