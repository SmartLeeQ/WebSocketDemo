var http = require('http');

var server = http.createServer();

var socketIO = require('socket.io');

var socket = socketIO(server);


server.listen(8080);

socket.on('connection',function(clientsocket){
    console.log('建立连接');
});

console.log('建立连接');