<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
				<nav class="navbar navbar-inverse">
					<div class="container">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">
							   
								    <span class="text-danger">
								    	Welcome 
									</span>
							</a>
						</div>
						<div id="sk-top-welcome" >  
									
										<ul class="nav navbar-nav navbar-right test">
										<li><button type="button" class="btn btn-danger btn-margin-right navbar-btn" ><i class="fa fa-sign-in" aria-hidden="true"></i>  <a href="logout" style="color:inherit; link-style:none;">logout</a></button></li>

										</ul>
						</div>
						<div>

							<div id="sk-top-modules" >
								<ul class="nav navbar-nav navbar" >
								<li><a href="admin/admin.jsp"><i class="fa fa-user" aria-hidden="true"></i> Admin</a></li>
								<li><a href="compta/compta.jsp"><i class="fa fa-shopping-bag" aria-hidden="true"></i> Compta </a></li>
								<li><a href="public/public.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Public </a></li>
								</ul>
							</div>
						
						</div>
					</div>
				</nav>

<div  class="container" style="height: 50px;"></div>
	<div class="container col-md-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Appel de l'EJB CalculetteBean</div>
			<div class="panel-body">

				<form action="calcule.html" method="POST">
					
					<div class="form-group">
					    <label for="exampleFormControlSelect1">Select function</label>
					    <select name="ejb" class="form-control" id="exampleFormControlSelect1">
					      <option>ejb1</option>
						  <option>ejb2</option>
					    </select>
					  </div>
					<div class="form-group">
					    <label for="exampleFormControlSelect1">Select function</label>
					    <select name='operation' class="form-control" id="exampleFormControlSelect1">
					      <option value="plus">additionner</option>
						  <option value="sous">soustraire</option>
					    </select>
					  </div>
					<div class="form-group">
						<label for="txt" class="control-label">Nombre 1 : </label> <input
							type="text" name="nb1" id="txt" class="form-control" /> <span></span>
					</div>
					<div class="form-group">
						<label for="txt" class="control-label">Nombre 2 : </label> <input
							type="txt" name="nb2" id="txt" class="form-control" /> <span></span>
					</div>

					<button class="btn btn-primary" type="submit">Calculer</button>
					<button class="btn btn-primary" type="reset">Reset</button>
				</form>
			</div>
		</div>
	</div>
${message }
</body>
</html>