<?php

error_reporting(0);
$response = $argv[1];

$doc = new DOMDocument();
$doc->loadHTML($response);
echo "DOMDocument: ".base64_encode($doc->saveHTML()). "\n";

$x = simplexml_load_string($response);
if($x){
    echo "SimpeXML: ".base64_encode($x->saveXML())."\n";
}else{
    echo "SimpeXML: \n";
}