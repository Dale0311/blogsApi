<?php 
use Model\Database;

const BASEPATH = __DIR__."/../";
require BASEPATH. "function.php";
// require base_path("Model/Database.php");
$config = require base_path("config.php");

spl_autoload_register(function($class){
    $class = str_replace("/", DIRECTORY_SEPARATOR, $class. ".php");
    require base_path($class);
});

$db = new Database($config['database']);
$q = "select * from blogs";

$data = $db->query($q)->fetch();
dd($data);