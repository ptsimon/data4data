<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Standard Meta -->
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		
		<!-- Site Properties -->
		<title>Insert Data Into Database Using CodeIgniter Form</title>
		<link href='http://fonts.googleapis.com/css?family=Marcellus' rel='stylesheet' type='text/css'/>
		<!-- <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/styles.css'); ?>" /> -->
		<link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.min.css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.7/semantic.min.css" />

		<script type="text/javascript" src="<?php echo base_url('assets/js/scripts.js'); ?>"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/components/form.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/components/transition.js"></script>

	</head>


	<body>
		<!-- <div id="container">
			<?php echo form_open('signup_ctrl'); ?>
			<h1>Register to use Data For Data!</h1><hr/>

			<?php if (isset($message)) { ?>
				<CENTER><h3 style="color:green;">Username Registered!</h3></CENTER><br>
			<?php } ?>

			<?php echo form_label('Student No:'); ?> <?php echo form_error('dsnum'); ?><br />
			<?php echo form_input(array('id' => 'dsnum', 'name' => 'dsnum')); ?><br />

			<?php echo form_label('Username:'); ?> <?php echo form_error('duname'); ?><br />
			<?php echo form_input(array('id' => 'duname', 'name' => 'duname')); ?><br />

			<?php echo form_label('Password:'); ?> <?php echo form_error('dpass'); ?><br />
			<?php echo form_input(array('id' => 'dpass', 'name' => 'dpass')); ?><br />

			<?php echo form_submit(array('id' => 'submit', 'value' => 'Submit')); ?>
			<?php echo form_close(); ?><br/>
			
			<div id="fugo">
			</div>
		</div> -->

		<div class="ui middle aligned center aligned grid">
		  <div class="column">
		    <h2 class="ui teal image header">
		      <div class="content">
		        Register to use Data For Data!
		      </div>
		    </h2>
		    <!-- <form class="ui large form"> -->
			<!-- <?php echo form_open('signup_ctrl'); ?> -->
			<?php
	      	$attributes = array("class" => "ui large form", "id" => "signupform");
	      	echo form_open("signup_ctrl", $attributes);?>
		      <div class="ui stacked segment">
		        <div class="inline field required">
		        	<label>Student Number</label>
		          <div class="ui left icon input">
		            <i class="user icon"></i>
		            <input id="snum" type="text" name="snum" placeholder="xxxx-xxxxx" value="<?php echo set_value('snum'); ?>">
		          </div>
		        </div>
		        <div class="inline field required">
          			<label>Username</label>
		          <div class="ui left icon input">
		            <i class="user icon"></i>
		            <input id="uname" type="text" name="uname" placeholder="User Name" value="<?php echo set_value('uname'); ?>">
		          </div>
		        </div>
		       <div class="inline field required">
          			<label>Password</label>
		          <div class="ui left icon input">
		            <i class="lock icon"></i>
		            <input id="pass" type="password" name="pass" placeholder="Password" value="<?php echo set_value('pass'); ?>">
		          </div>
		        </div>
		        <div class="inline field required">
          			<label>Re-type Password</label>
		          <div class="ui left icon input">
		            <i class="lock icon"></i>
		            <input id="pass2" type="password" name="pass2" placeholder="Re-type Password" value="<?php echo set_value('pass2'); ?>">
		          </div>
		        </div>
		        <button id="submit" name="submit" class="ui fluid large teal submit button" value="submit" type="submit" form="changepass">Sign me up!</button>
				<?php echo form_close(); ?>
		      </div>

		      <?php if (isset($message) and $message == "Success!") { echo $message?>
		      <div class="ui positive message">
				You are Registered!
			  </div>
			<?php } elseif (isset($message) and $message == "Failed!") { ?>
				<div class="ui error message">
				Something went wrong. Please try again. (or contact Pola or Tammy)
			  </div>
			<?php } ?>

		    <!-- </form> -->
		  </div>
		</div>

	</body>

	<style type="text/css">
	body {
	  background-color: #DADADA;
	}
	body > .grid {
	  height: 100%;
	}
	.image {
	  margin-top: -100px;
	}
	.column {
	  max-width: 450px;
	}
	#signupform label{
    display: inline-block;
    clear: left;
    width: 120px;
    text-align: right;
	}
	#signupform input {
	  display: inline-block;
	}
	</style>

	<script>
	$(document)
	.ready(function() {
	  $('.ui.form')
	    .form({
	    inline: true,
	    on: 'change',
	      fields: {
	      	snum: {
	          identifier  : 'snum',
	          rules: [
	            {
	              type   : 'empty',
	              prompt : 'Please enter student number'
	            }
	          ]
	        },
	        uname: {
	          identifier  : 'uname',
	          rules: [
	            {
	              type   : 'empty',
	              prompt : 'Please enter username'
	            }
	          ]
	        },
	        pass: {
	          identifier  : 'pass',
	          rules: [
	            {
	              type   : 'empty',
	              prompt : 'Please enter password'
	            },
	            {
	              type   : 'length[8]',
	              prompt : 'Your password must be at least 8 characters'
	            }
	          ]
	        },
	        pass2: {
	          identifier  : 'pass2',
	          rules: [
	            {
	              type   : 'empty',
	              prompt : 'Please re-enter password'
	            },
	            {
	              type   : 'match[pass]',
	              prompt : 'Your passwords do not match!'
	            }
	          ]
	        }
	      }
	    })
	  ;
	})
	;
	</script>
	<script>
		$(function() {
		    $('#btnSignUp').click(function() {
		 
		        $.ajax({
		            url: '/signUp',
		            data: $('form').serialize(),
		            type: 'POST',
		            success: function(response) {
		                cons	ole.log(response);
		            },
		            error: function(error) {
		                console.log(error);
		            }
		        });
		    });
		});
			</script>

</html>