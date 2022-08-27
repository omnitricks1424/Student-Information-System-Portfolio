
<?php

if(isset($_GET['password-token'])){
	$passwordToken = $_GET['password-token'];

	// database connection
    include('../Config/config.php');

    $sql = "SELECT * FROM users Where token='$passwordToken' LIMIT 1";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);
    $_SESSION['email'] = $user['email'];
}

?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Information System</title>
        <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
        <link rel="manifest" href="img/favicon/site.webmanifest">

        <link rel="stylesheet" href="https://unpkg.com/open-props"/>
        <link rel="stylesheet" href="../../css/LoginRegisterstyle.css">
        <script src="https://kit.fontawesome.com/072cf49956.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="bg-modal">
            <div class="modal-contents-change">

                <br>
                <h2 class="text-center">Password Reset</h2>
                <br>
                <form id="Change">
                    <input type="hidden" name="email" id="email" value=<?php echo $_SESSION['email']; ?>>

                    <label class="label">
                        <span>Password</span>
                        <input type="password" name="password" id="password">
                    </label>

                    <label class="label">
                        <span>Confirm Password</span>
                        <input type="password" name="cpassword" id="cpassword">
                        </br>
                        <span class="error"></span>
                    </label>

                    <button type="submit" name="change-password" class="change-password">Recover your password</button>

                </form>
            </div>
        </div>



        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
        <!-- <script src="../../JS/utils.js"></script> -->
        <script src="../../js/LoginRegisterscript.js"></script>
    </body>
</html>