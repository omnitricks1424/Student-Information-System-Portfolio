function TitleLogin(){
	checkHeight = $(".alert-login").height();
	checkText = $('.login').text();

	if(checkHeight == 0 && checkText == ""){
		$('.login').append('Sign In');

	}else if(checkHeight != 0){
		$('.login').empty();

	}
}

function TitleRegister(){
	checkHeight = $(".alert-register").height();
	checkText = $('.register').text();

	if(checkHeight == 0 && checkText == ""){
		$('.register').append('Register');

	}else if(checkHeight != 0){
		$('.register').empty();

	}
}

$(document).ready(function(){
	window.setInterval(function(){
		TitleLogin();
		TitleRegister();
	}, 10);

	// Loads Last Toggle Class
	if (localStorage.getItem('Toggle') === 'true') {

		$('.img').addClass('notransition');
		$('.img-btn span').addClass('notransition');
		$('.img-text').addClass('notransition');
		$('.sub-cont').addClass('notransition');

		$('.cont').addClass('s-signup');

		setTimeout(function() {
			$('.img').removeClass('notransition');
			$('.img-btn span').removeClass('notransition');
			$('.img-text').removeClass('notransition');
			$('.sub-cont').removeClass('notransition');
		}, 100);
	}

	// Toggles Login and SignUp
	$('.img-btn').click(function(){
		$('.cont').toggleClass('s-signup');
		localStorage.setItem('Toggle', $('.cont').hasClass('s-signup'));
	});



	// Register
	$('.register-btn').click(function(){
		var $RegisterForm = $('#Register');
		if($RegisterForm.length){
			$RegisterForm.validate({
				rules:{
					"username":{
						required: true
					},
					"email":{
						required: true,
						email: true
					},
					"password":{
						required: true
					},
					"cpassword":{
						required: true,
						equalTo: "#password"
					},
				},
				groups:{
                    "password": "password cpassword",
                },
				messages:{
					"username":{
						required: '<li>Username is required</li>'
					},
					"email":{
						required: ' <li>Email is required</li>',
						email: ' <li>Email is invalid</li>'
					},
					"password":{
						required: ' <li>Password is required</li>'
					},
					"cpassword":{
						required: ' <li>Password is required</li>',
						equalTo: ' <li>Confirm Password should be the same as Password</li>'
					},
				},
				errorPlacement: function(error, element) {
					if (element.attr("name") == "username" || element.attr("name") == "email" || element.attr("name") == "password" || element.attr("name") == "cpassword") {
                        error.appendTo(".bullet");
						TitleRegister();

                    } else {
                        error.insertAfter(element);
						TitleRegister();

                    }

                },
				submitHandler: function(form) {
					//Serialize form as array
					var serializedForm = $(form).serializeArray();
					//trim values
					serializedForm.forEach(o => o.value = jQuery.trim(o.value));
					//turn it into a string if you wish
					serializedForm = $.param(serializedForm);

					$.ajax({
						url: 'php/LoginRegister/Register.php',
						type: 'POST',
						dataType:"json",
						data: serializedForm,
						error: function() {
							alert('Register: Something is wrong');
						},
						success: function(data) {
							if(data.location){
								window.location.replace(data.location);
							}
							
						}
					});
				}
			})
		}

		
	});



	// Login
	$('.login-btn').click(function(e){

		var $LoginForm = $('#Login');

		if($LoginForm.length){
			$LoginForm.validate({
				rules:{
					"usernamelogin":{
						required: true
					},
					"passwordlogin":{
						required: true
					},
				},
				messages:{
					"usernamelogin":{
						required: '<li>Username is required</li>'
					},
					"passwordlogin":{
						required: ' <li>Password is required</li>'
					},
				},
				errorPlacement: function(error, element) {
					error.appendTo(".bullet-login");
					TitleLogin();
                },
				submitHandler: function(form) {
					$.ajax({
						url: 'php/LoginRegister/Login.php',
						type: 'POST',
						dataType: "json",
						data: $(form).serialize(),
						error: function() {
							  alert("Login: Something is Wrong");
						},
						success: function(data) {							
							if(data.location){
								window.location.replace(data.location);
							}
							
						}
					});
				}
			})
		}
	});



	// Forgot Password
	$(".forgot-pass").click(function(){
        $(".bg-modal-recover").css('display', 'flex');
        $('body').css('overflow', 'hidden');

    });

	$(".close").click(function(){
        $(".bg-modal-recover").hide();
        $('body').css('overflow', 'auto');
    });



	// Submit Email for Forgot Password
	$(".forgot-password").click(function(){

		// connect to forgot password
		var $ResetForm = $('#Recover');

		if($ResetForm.length){
			$ResetForm.validate({
				rules:{
					"emailrecover":{
						required: true,
						email: true
					},
				},
				messages:{
					"emailrecover":{
						required: 'Email is required',
						email: 'Email is invalid'
					},
				},
				errorPlacement: function(error, element) {
					error.appendTo(".error");
                },
				submitHandler: function(form) {
					$.ajax({
						url: 'php/LoginRegister/SendPasswordResetLink.php',
						type: 'POST',
						data: $(form).serialize(),
						error: function() {
							alert('Password Reset: Something is wrong');
			
						},
						success: function(data) {
							$(".bg-modal-recover").hide();
							$(".bg-modal-message").css('display', 'flex');
			
						}
					});
				}
			})
		}
    });

	$(".ok-btn").click(function(){
        $(".bg-modal-message").hide();
        $('body').css('overflow', 'auto');
    });
	

	// Change Password
	$(".change-password").click(function(){

		// connect to forgot password
		var $ChangeForm = $('#Change');

		if($ChangeForm.length){
			$ChangeForm.validate({
				rules:{
					"password":{
						required: true
					},
					"cpassword":{
						required: true,
						equalTo: "#password"
					},
				},
				groups:{
                    "password": "password cpassword",
                },
				messages:{
					"password":{
						required: 'Password is required'
					},
					"cpassword":{
						required: 'Password is required',
						equalTo: 'Confirm Password should be the same as Password'
					},
				},
				errorPlacement: function(error, element) {
					error.appendTo(".error");
                },
				submitHandler: function(form) {
					$.ajax({
						url: 'php/LoginRegister/Change.php',
						type: 'POST',
						dataType:"json",
						data: $(form).serialize(),
						error: function() {
							alert('Password Change: Something is wrong');
			
						},
						success: function(data) {
							if(data.location){
								window.location.replace(data.location);
							}
			
						}
					});

				}
			})
		}
    });
});
