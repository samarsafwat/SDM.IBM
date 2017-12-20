var express = require('express');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var mysql = require('mysql');
var cookieParser = require('cookie-parser')();
var expressSession = require('express-session')
var session = expressSession({secret: 'appsecret'})
app.use(session)


 var home = "http://localhost:3000/";
 var dbconfig = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'whiteboard'
};


//server.listen(process.env.PORT || 3000);
app.get('/', function (req, res) {

    res.sendFile(__dirname + '/resources/index2.html');


});




var connection = mysql.createConnection(dbconfig);


io.on('connection', function (socket) {
	 socket.on('reqHome', function (room) {


        connection.query('SELECT * FROM products limit 5', function (err, rows, fields){
        	if(err)
        		throw err;
        	socket.emit('getSuggestedProducts', rows);
        }) ;

	 });
});
