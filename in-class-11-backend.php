<?php
header('Content-Type: application/json'); 

$data = [
    "status" => "success",
    "message" => "Hello, I am from the backend. :)",
    "timestamp" => time()
];

echo json_encode($data);
?>
