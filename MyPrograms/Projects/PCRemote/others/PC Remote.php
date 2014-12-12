
<?php

    $address="localhost";
    $port=10000;
    $connection=socket_create(AF_INET,SOCK_STREAM,SOL_TCP);
    socket_bind($connection,$address,$port);
    socket_listen($connection,5);
    $stream=socket_accept($conection);
    socket_write($stream);
    
?>