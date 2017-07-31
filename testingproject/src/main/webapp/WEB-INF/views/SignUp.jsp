<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
    <style>
.container{
    padding-top: 100px;
}
  </style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<h3>Quick SignUp!</h3>
<br>
<div class="row">

<f:form modelAttribute="user" action="saveregister" method="post"> <!-- modelAttribute go to user model class -->
<div class="col-lg-12">
<div class="form-group row col-xs-4">
<div>
<label>First Name:</label> 
<f:input path="first_name" placeholder="Enter First Name" class="form-control"/>
</div>

<div class="form group">
<label>Last Name:</label>
<f:input path="last_name" placeholder="Enter Last Name" class="form-control"/>
</div>

<div class="form group">
<label>Email:</label>
<f:input path="email" placeholder="Enter Email" class="form-control"/>
</div>

<div class="form group">
<label>Password:</label>
<f:input path="password" type="password" placeholder="Enter Password" class="form-control"/>
</div>

<div class="form group">
<label>Phone:</label>
<f:input path="phone" placeholder="Enter Phone" class="form-control"/>
</div>

<div class="form-group">
<label>Address:</label>
<f:input path="address" placeholder="Enter Address" class="form-control"/>
</div>
<br>
<br>
<input type="submit" value="Register" class="btn btn-success btn-block btn-md">
<input class="btn btn-danger btn-block btn-md" type="reset" value="Reset">
<Button type="reset" class="btn btn-danger" style="width:220px">Cancel</Button>
</div>
</div>
</f:form>

</div>
</div>




 		




</body>
</html>