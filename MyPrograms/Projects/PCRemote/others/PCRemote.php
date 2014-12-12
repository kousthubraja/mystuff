//PC remote server
<?php
    $address="localhost";
    $port=10000;
    $conection=socket_create(AF_INET,SOCK_STREAM,SOL_TCP);
    socket_bind($conection,$address,$port);
    socket_listen($connection,5);
    $stream=socket_accept($conection);
    socket_write($stream);
    
?>