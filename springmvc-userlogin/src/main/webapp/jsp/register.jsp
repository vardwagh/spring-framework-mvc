<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"  rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	body{
		color: #fff;
		background: #63738a;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 35px;
		box-shadow: none;
		color: #969fa4;
	}
	.form-control:focus{
		border-color: #5cb85c;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.signup-form{
		width: 500px;
		margin: 0 auto;
		padding: 25px 0;
	}
	.signup-form h2{
		color: #636363;
        margin: 0 0 10px;
		position: relative;
		text-align: center;
    }
	.signup-form h2:before, .signup-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.signup-form h2:before{
		left: 0;
	}
	.signup-form h2:after{
		right: 0;
	}
    .signup-form .hint-text{
		color: #999;
		margin-bottom: 15px;
		text-align: center;
	}
    .signup-form form{
		color: #999;
		border-radius: 20px;
    	margin-bottom: 10px;
        background: #f2f3f7;
        box-shadow: 0px 10px 10px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.signup-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}    	
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
    .signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.signup-form form a:hover{
		text-decoration: underline;
	}  
</style>
</head>
<body>
	<div class="signup-form">
    <form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
		<h2>Register</h2>
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
		<table class="hint-text" align="center">
						 		<tr>
									<td style="color: red;">${message1}</td>
								</tr>
		</table>   
        <div class="form-group">
			<div class="row">
				<div class="col-xs-6"><form:input type="text" class="form-control" path="username" name="username" id="username" placeholder="Username" required="required" />
				</div>
				<div class="col-xs-6"> <form:password class="form-control" path="password" name="password"	id="password" placeholder="Password" required="required" />				
			</div>        	
        </div>
        </div>
        <div class="form-group">
			<div class="row">
				<div class="col-xs-6"><form:input type="text" class="form-control" path="firstname" name="firstname" id="firstname" placeholder="First Name" required="required" />
				</div>
				<div class="col-xs-6"> <form:input type="text"  class="form-control" path="lastname" name="lastname"	id="lastname" placeholder="Last Name" required="required" />				
			</div>        	
        </div>
        </div>
        <div class="form-group">
        	<form:input type="email" class="form-control"  path="email" name="email" id="email" placeholder="Email" required="required"/>
        </div>
		<div class="form-group">
            <form:input type="text" class="form-control"  path="address" name="address" id="address" placeholder="Address" required="required" />
        </div>
		<div class="form-group">
            <form:input type="text" class="form-control"  path="phone" name="phone" id="phone" placeholder="Phone Number" required="required"/>
        </div>        
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <form:button type="submit" class="btn btn-success btn-lg btn-block" id="register" name="register">Register Now</form:button>
        </div>
        <div class="text-center">Already have an account? <a href="login">Log in</a></div>
    </form:form>
</div>

</body>


</html>