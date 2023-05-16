<?php
$filename = "Student.csv";
$file = fopen($filename, "r");
$contents = fread($file, filesize($filename));
fclose($file);

$lines = explode("\n", $contents);

class Student
{
    public $id;
    public $name;
    public $age;
    public $grade;

    public function __construct($id, $name, $age, $grade)
    {
        $this->id = $id;
        $this->name = $name;
        $this->age = $age;
        $this->grade = $grade;
    }
}

$students = array();

foreach ($lines as $line) {
    $data = explode(",", $line);
    $id = $data[0];
    $name = $data[1];
    $age = $data[2];
    $grade = $data[3];

    $student = new Student($id, $name, $age, $grade);
    array_push($students, $student);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show</title>
</head>

<body>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
            <th>Grade</th>
        </tr>
        <?php foreach ($students as $student) : ?>
            <tr>
                <td><?php echo $student->id; ?></td>
                <td><?php echo $student->name; ?></td>
                <td><?php echo $student->age; ?></td>
                <td><?php echo $student->grade; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>

</body>

</html>
