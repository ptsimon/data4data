<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Standard Meta -->
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		
		<!-- Site Properties -->
		<title>Data For Data Sign Up</title>
		<link href='http://fonts.googleapis.com/css?family=Marcellus' rel='stylesheet' type='text/css'/>
		<link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.min.css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.7/semantic.min.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/styles.css'); ?>" /> 

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/components/form.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/components/transition.js"></script>
		<script type="text/javascript" src="<?php echo base_url('assets/js/scripts.js'); ?>"></script>

	</head>


	<body>

		<div class="ui middle aligned center aligned grid">
		  <div class="column">
		  	<div class="ui huge info message">
			  <h2 class="ui header">
			  <i class="download icon"></i>
			  <div class="content">
			    <a href="https://drive.google.com/uc?export=download&id=14-oi_D6AowUi5Y7sFDGtshshaleNGY-Q" download>CLICK TO DOWNLOAD THE APK AND INSTALL</a>
			  </div>
			</h2>
			</div>
		  	
		    <h2 class="ui teal image header">
		      <div class="content">
		        Register to use Data For Data!
		      </div>
		    </h2>
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
		        <button id="btnsubmit" name="btnsubmit" class="ui fluid large teal submit button" value="Submit" type="Submit" form="signupform">Sign me up!</button>
		        <!-- <?php echo form_submit(array('id' => 'btnsubmit', 'class' => 'ui fluid large teal submit button', 'value' => 'Submit')); ?> -->
				<?php echo form_close(); ?>
		      </div>

		      <?php if (isset($message) and $message === "Success!") {?>
		      <div class="ui positive message">
				You are Registered!
			  </div>
			<?php } elseif (isset($message) and $message === "Failed!") { ?>
				<div class="ui error message">
				Something went wrong. Please try again. (or contact Pola or Tammy)
			  </div>
			<?php } ?>

		  </div>
		</div>

	</body>

</html>