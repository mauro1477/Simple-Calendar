<?php
    $url = getenv('JAWSDB_URL');
    $dbparts = parse_url($url);

    $hostname = $dbparts['lfmerukkeiac5y5w.cbetxkdyhwsb.us-east-1.rds.amazonaws.com	'];
    $username = $dbparts['tgdr8gusfhis70oe'];
    $password = $dbparts['hn9qeyx166ugjz05'];
    $database = ltrim($dbparts['path'],'/');
    try {
        $conn = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected successfully";
    }
    catch(PDOException $e)
    {
        echo "Connection failed: " . $e->getMessage();
    }