# What is CSV2DB?

Solution to import csv data into a database. It includes a web interface that accepts file uploads, and then stores them in a relational database.

# Design considerations

- The solution is implemented using Node.js, Express(Web framework), AngularJS(Javascript Framework), HTML(Bootstrap) and MySQL.
- Presentation tier provides user interface.
- Business tier provides csv file processing and database updates. Uploaded file is retained at ./uploads folder.
- Database tier computes expenses using views, offloading the processing from business tier. Data base schema normalized for the purpose.
- Architecture leverages the benefits of all tiers.
- To overcome performance overhead with large file processing NodeJS non-blocking functionality was considered.
- To keep the solution to one-page, AngularJS two-way binding was considered.
- Express and AngularJs are popular web development frameworks that helped simplify development and support asynchronous request processing.

# Solution concerns
- Sharing personal data over http is not secured.
- Code could be made robust for error reporting and troubleshooting.
- Better handling of repeated user data could have been implemented by further checking user data in employees table before inserting.

# Pre-Requisite
1. Mysql
2. Node.js and npm support
   In Linux/Mac
```
    Download https://nodejs.org/dist/v6.9.2/node-v6.9.2-linux-x64.tar.xz
    Unzip the file and modify your environment setting
```  

# How to build and run the application
```
$ mkdir $HOME/csv2db; cd csv2db
$ git clone https://github.com/d-ranjith/csv2db.git
$ npm install
```
# Starting/Accessing the application

Open Unix/Linux command line terminal and perform these tasks.

- Edit $HOME/csv2db/server.js and modify mysql connection parameters as applicable to your MySQL setup.
```
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'xxxx',
  database : 'csv2db'
});
```

- Imports database schema
```
$ cd $HOME/csv2db
$ mysql -u root -p < database.sql
```

- Starts node server listening on port 3000
````
$ cd $HOME/csv2db    
$ node server.js
Running at Port 3000
Error connecting database ... nn
```

- Open browser and access the site
```
http://localhost:3000/
```

- Uploading/Data view steps
  1. Choose File' button and pick the demo csv file (data_example.csv)
  2. Click on 'Submit' button
  3. Click on 'Refresh' button to view data.
