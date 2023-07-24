<?php 

function dd($var){
    var_dump($var);
    die();
}

function base_path($path){
    return BASEPATH ."$path";
}