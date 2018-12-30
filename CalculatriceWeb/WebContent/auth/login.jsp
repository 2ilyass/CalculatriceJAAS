<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div  class="container" style="height: 50px;"></div>



	
	<div class="container col-md-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Login Pannel</div>
			<div class="panel-body">

				<form action="j_security_check" method="post">

					<div class="form-group">
						<label for="txt" class="control-label">Identifiant : </label> <input
							type="text" name="j_username" id="txt" class="form-control" /> <span></span>
					</div>
					<div class="form-group">
						<label for="txt" class="control-label">mot de passe : </label> <input
							type="password" name="j_password" id="txt" class="form-control" /> <span></span>
					</div>

					<button class="btn btn-primary" type="submit">login</button>
					<button class="btn btn-primary" type="reset">Cancel</button>
				</form>
			</div>
		</div>
	</div>


</body>
</html>