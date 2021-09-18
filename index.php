<?php
        $host = 'db';

        $user = 'test';

        $pass = 'test';

        $conn = new mysqli($host, $user, $pass);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } else {
            echo "successfull in connecting to mysq servr!";
        }
?>

