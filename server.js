var app = require('express')();

var http = require('http').Server(app);
var io = require('socket.io')(http);
var users =[];

http.listen(8009, function(){
    console.log('listenin to part 8009');
});

io.on('connection', function(socket){

    socket.on('send-message', function(data) {
        io.emit('received-message', data);

        // console.log(data);
    });

    socket.on('send-notif', function(data) {
        io.emit('received-notif', 'Send Notif');
        // console.log("message notif");
    });

    var oneSecondInterval = setInterval(() => {
        console.log(socket.conn.id);
        socket.emit('data', { ts: new Date() });
      }, 1000);


    socket.on('disconnect', function(){
        clearInterval(oneSecondInterval);
    });

});
