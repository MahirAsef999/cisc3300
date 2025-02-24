<?php

$request = $_SERVER['REQUEST_URI'];

echo $request;

if ($request == '/html') {
    header('Content-Type: text/html');
    echo "<!DOCTYPE html>
    <html>
    <head><title>HTML Page</title></head>
    <body><h1>Hello, this is an HTML page :)</h1></body>
    </html>";

} elseif ($request == '/json') {
    header('Content-Type: application/json');
    $data = ["message" => "Hello, this is a JSON response :) ", "status" => 200];
    echo json_encode($data);

} else {
    header("HTTP/1.0 404 Not Found");
    echo "Error! Page not found";
}

?>