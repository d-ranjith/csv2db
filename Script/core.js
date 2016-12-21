 var myApp = angular.module('myApp', []);

// This controller is not used currently, left for debugging purpose
 myApp.controller('myCtrl', ['$scope', '$http', function($scope, $http){
 	      $scope.readCSV = function() {
                console.log("success");
         		    // http get request to read CSV file content
         		    /* $http.get("data_example.csv")
                .then(function(response) {
                    console.log("success" + response);
                    $scope.processData = response;
                });
                */
                $http.get('data_example.csv').success($scope.processData);
       	};
       	$scope.processData = function(allText) {
       		// split content based on new line
       		var allTextLines = allText.split(/\r\n|\n/);
       		var headers = allTextLines[0].split(',');
       		var lines = [];
       		for ( var i = 0; i < allTextLines.length; i++) {
       			// split content based on comma
       			var data = allTextLines[i].split(/[,"]/);
       			if (data.length == headers.length) {
       				var tarr = [];
       				for ( var j = 0; j < headers.length; j++) {
       					tarr.push(data[j]);
       				}
       				lines.push(tarr);
       			}
       		}
       		$scope.data = lines;
          console.log(lines);
       	};
}]);

// Makes remote GET request to /load url that processes the file.
myApp.controller('loadCtrl',function($scope,$http,$interval){
    load_data();
    function load_data(){
          $http.get('http://localhost:3000/load').success(function(data){
          $scope.expenses=data;
      });
    };
});
