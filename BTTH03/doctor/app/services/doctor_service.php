<?php
 require_once APP_ROOT.'/app/models/doctor.php';
 //require_once APP_ROOT.'/app/connectDB/connect.php';

    class doctor_service{
        public function getAlldoctor(){
            $dbconnection = new connect();
            $conn = $dbconnection-> getConnection();

            if($conn != Null){
                 $sql = "SELECT * FROM doctor";
                 $stmt = $conn->query($sql);
                // Buoc 3: Xu ly ket qua
                $doctors = [];
            
                //Chuyen doi moi Ban ghi lay ra > Doi tuong: Article
                while($row=$stmt->fetch()){
                   
                    $doctor = new doctor($row['ID'], $row['Name'], $row['specialization'], $row['contract'], $row['salary']);
                    $doctors[] = $doctor;
                 }
                return $doctor;
            }
            

    }
}
?>