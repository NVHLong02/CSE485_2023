<?php
include "Student.php";
$student = new student();
$errors = [
    'name' => '',
    'age' => '',
    'id' => ''
];
$message = '';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $student->setName($_POST['name']);
    $student->setAge((int) $_POST['age']);
    $student->setID((int) $_POST['id']);
    $isValid = true;
    if ($student->getName() == '') {
        $errors['name'] = 'Name is required!';
        $isValid = false;
    }
    if ($student->getAge() == -1) {
        $errors['age'] = 'Age is required!';
        $isValid = false;
    }
    if ($student->getID() == -1) {
        $errors['id'] = 'ID is required!';
        $isValid = false;
    }
    if ($isValid) {
        $student->setID((int) $_POST['id']);
        $student->setName($_POST['name']);
        $student->setAge((int) $_POST['age']);
        $file = fopen("Test.txt", "a");
        $isSuccess = fwrite($file, "{$student->getID()},{$student->getName()},{$student->getAge()}\n");
        if ($isSuccess) {
            $message = 'Create student success!';
        }
        fclose($file);
    }
    header("Location: index.php");
}