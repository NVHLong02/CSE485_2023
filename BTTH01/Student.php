<?php
class student{
    private int $id;
    private string $name;
    private int $age;
    private int $grade;
    public function __construct($id , $name , $age, $grade){
        $this->id = $id;
        $this->name = $name;
        $this->age = $age;
        $this->grade = $grade;
    }
    function getID(){
        return $this->id;
    }
    function getName(){
        return $this->name;
    }
    function getAge(){
        return $this->age;
    }
    function getgrade(){
        return $this->grade;
    }
    function setID(int $id){
        $this->id = $id;
    }
    function setName(string $name){
        $this->name = $name;
    }
    function setAge(int $age){
        $this->age = $age;
    }
    function setgrade(int $grade){
        $this->grade = $grade;
    }
} 
?>