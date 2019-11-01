<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"  rel="stylesheet">
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }

</style>
</head>

<body>
   
    <br>
    <div class="container-fluid">
        <div class="panel panel-success">
            <div class="panel-heading" align="center">
                <h4><b><font color="black" >The Students Times</font> </b></h4>
            </div>
            <div class="panel-body" style="background-color:lightblue" align="center"> 
                <div class="container " style="margin-top: 5%; margin-bottom: 5%;">
   					<b ><font color="green">${message3}</font> </b>
                    <div class="panel panel-success" style="max-width: 35%;" align="left">
                        <div class="panel-heading form-group" align="center">
                            <b><font color="black">Login Here</font> </b>
                        </div>
                   
                        <div class="panel-body" >
						<form:form id="loginForm" modelAttribute="login" action="loginProcess" 	method="post">
 
                            <div class="form-group">
                                <form:label path="username">User Name</form:label> 
                                <form:input path="username" class="form-control" name="username" id="username" placeholder="Enter User Name" required="required" />  
                            </div>
                            <div class="form-group">
                                <form:label path="password">Password</form:label> 
                                <form:password path="password" class="form-control" name="password"	id="password" placeholder="Password" required="required" />                     
                            
                            </div>
                          
                            <form:button id="login" class="btn btn-large btn btn-success btn-lg btn-block" name="login">Login</form:button>
							
							<div class="panel-heading form-group">
            						<label class="pull-left checkbox-inline">
            						<input type="checkbox"> Remember me</label>
            						<a href="#" class="pull-right">Forgot Password?	</a>
        					</div>  
                             <div class="panel-heading form-group" align="center">            
                            		<p class="text-center">Don't have account?<a href="register">   Create an Account</a></p>
                            		<a  href="home.jsp">Home</a>
                        	</div>
                        	<table align="center">
						 		<tr>
									<td style=" color: red;">${message}</td>
								</tr>
							</table>              
                        </form:form>

                        </div>
                    </div>
                    
                   
                </div>
               
            </div>
            
        </div>
    </div>
   
</body>
</html>