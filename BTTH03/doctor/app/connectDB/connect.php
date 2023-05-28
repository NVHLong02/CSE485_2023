<?php
//require_once ('../config/config.php');
class connect{
    private $host;
    private $user;
    private $pass;
    private $dbname;
    private $conn;

    public function __construct(){
        $this->host = 'localhost';
        $this->user = 'root';
        $this->pass = '';
        $this->dbname = 'hospital_management_system';

        try{
            $this->conn = new PDO("mysql:host={$this->host};dbname={$this->dbname}",$this->user,$this->pass);
            //echo "thanh cong";
        }catch(PDOException $e){
            $this->conn = null;
        }
    }

    public function getConnection(){
        return $this->conn;
    }
}