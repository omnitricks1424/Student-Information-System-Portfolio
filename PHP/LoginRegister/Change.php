<?php
    // database connection
    include('../Config/config.php');

    $email = $_POST['email'];
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];

    $errors = array();

    if(empty($password) || empty($cpassword)){
        $errors['password'] = "Password required";
    }

    if($password !== $cpassword){
        $errors['password'] = "The two password do not match";
    }

    $password = password_hash($password, PASSWORD_DEFAULT);

    if (count($errors) == 0) {
        $sql = "UPDATE `users` SET `password`='$password' WHERE `email`='$email'";
        $result = mysqli_query($conn,$sql);

        if($result){
            header('Content-Type: application/json');
                echo json_encode(['location'=>'LoginRegister.php']);
            exit();
        }
    }


?>