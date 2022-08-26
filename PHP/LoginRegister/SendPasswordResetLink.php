<?php
    // database connection
    include('../Config/config.php');

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;

    require '../../LIBS/PHPMailer/src/Exception.php';
    require '../../LIBS/PHPMailer/src/PHPMailer.php';
    require '../../LIBS/PHPMailer/src/SMTP.php';

    // Erros Stored in single array
    $errors = array();

    if (empty($_POST['emailrecover'])){
        $errors['userEmail'] = "User Email is Required";
    } else{
        $userEmail = $_POST['emailrecover'];
    }


    $sql = "SELECT * FROM users Where email='$userEmail' LIMIT 1";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);
    $token = $user['token'];


    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

    // try {
        //Server settings
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                       //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = EMAIL;                                  //SMTP username
        $mail->Password   = PASSWORD;                               //SMTP password
        $mail->SMTPSecure = 'ssl';                                  //Enable implicit TLS encryption
        $mail->Port       = 465;

        //Recipients
        $mail->setFrom(EMAIL);

        $mail->addAddress($userEmail);

        $body = '<!DOCTYPE html>
            <html lang="en>
            <head>
                <meta charset="UTF-8">
                <title>Verify email</title>
            </head>
            <body>
                <div class="wrapper">
                    <p>
                        Hello there,
                        Please click on the link below to reset your password.
                    </p>
                    <a href="http://localhost/StudentInformation/PHP/LoginRegister/ChangePassword.php?password-token=' . $token . '">
                        Reset your password
                    </a>
                </div>
            </body>
            </html>';

        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = 'Password Reset Link';
        $mail->msgHTML($body);

        $mail->send();
    //     echo 'Message has been sent';
    // } catch (Exception $e) {
    //     echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    // }
?>