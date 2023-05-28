<?php
    class doctor{
        private $id;
        private $name;   
        private $specialization;
        private $contract;
        private $salary;    

        public function __construct($id, $name, $specialization, $contract, $salary){
            $this ->id = $id;
            $this -> name=$name;
            $this -> specialization=$specialization;
            $this -> contract=$contract;
            $this -> salary=$salary;
        }
        
            public function getid(){
                return $this -> id;
            }
            public function setid($id){
              $this -> id = $id;
            }
            public function getname(){
                return $this -> name;
            }
            public function setname($name){
                $this -> name = $name;
            } public function getspecialization(){
                return $this -> specialization;
            }
            public function setspecialization($specialization){
                $this -> specialization = $specialization;
            } public function getcontract(){
                return $this -> contract;
            }
            public function setcontract($contract){
                $this -> contract = $contract;
            } public function getsalary(){
                return $this -> salary;
            }
            public function setsalary($salary){
                $this -> salary = $salary;
            }
    }
?>