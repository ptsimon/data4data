$(function(){
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
		$(function() {
		    $('#btnSignUp').click(function() {
		 
		        $.ajax({
		            url: '/signUp',
		            data: $('form').serialize(),
		            type: 'POST',
		            success: function(response) {
		                console.log(response);
		            },
		            error: function(error) {
		                console.log(error);
		            }
		        });
		    });
		});
});