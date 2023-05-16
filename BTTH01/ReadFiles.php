<?php
$filename = "";
$file = fopen($filename, "r");
$contents = fread($file, filesize($filename));
fclose($file);
$lines = explode("\n",$contents);

class Student{
    public $id;
    public $name;
    public $age;

    public function_construct($id,$name,$age)
    {
        $this->id =$id;
        $this->name =$name;
        $this->age =$age;

    }
}
$students = array();

