var mysql = require('mysql');
//console.log("Connected to mysql db");
// connect on start
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'a',
    database : 'sail_db',
    multipleStatements: true
});
connection.connect();
console.log("Connected to mysql db");

module.exports = connection;
