<?php

require_once '../Vendor/autoload.php';
require_once '../Config/constants.php';
// Create the Transport
$transport = (new Swift_SmtpTransport('smtp.gmail.com', 465, 'ssl'))
  ->setUsername(EMAIL)
  ->setPassword(PASSWORD);

// Create the Mailer using your created Transport
$mailer = new Swift_Mailer($transport);


function sendVerificationEmail($userEmail, $token)
{
    global $mailer;

    $body = '<!DOCTYPE html>
        <html lang="en>
        <head>
            <meta charset="UTF-8">
            <title>Verify email</title>
        </head>
        <body>
            <div class="wrapper">
                <p>
                    Thank you for signing up on our website. Please click on the link below 
                    to verify your email.
                </p>
                <a href="http://localhost/Project/Index.php?token=' . $token . '">
                    Verify your email address
                </a>
            </div>
        </body>
        </html>';
   // Create a message
    $message = (new Swift_Message('Verify your email'))
    ->setFrom(EMAIL)
    ->setTo($userEmail)
    ->setBody($body, 'text/html');

    // Send the message
    $result = $mailer->send($message);
}


function sendPasswordResetLink($userEmail, $token){
    global $mailer;

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
                <a href="http://localhost/Project/Index.php?password-token=' . $token . '">
                    Reset your password
                </a>
            </div>
        </body>
        </html>';
   // Create a message
    $message = (new Swift_Message('Reset your password'))
    ->setFrom(EMAIL)
    ->setTo($userEmail)
    ->setBody($body, 'text/html');

    // Send the message
    $result = $mailer->send($message);
}

?>