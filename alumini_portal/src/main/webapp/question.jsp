<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>REGISTRATION | ALUMNI | CSE dept</title>
  </head>
  <body>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
<div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" style="background:#8c1515;">
		<a class="navbar-brand" href="#" style=" color: white;">
			<img src="download.png" height="50px" width="50px"></a>
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
    	</button>
    	<div class="collapse navbar-collapse" id="navbarNavDropdown">
      		<ul class="navbar-nav">
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">events</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link" href="#" style=" color: white;">Gallery</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link" href="#" style=" color: white;">Research Clubs</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">MOUs</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">Dept. Library</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">Griviences</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">Circulars</a>
        		</li>
        		<li class="nav-item dropdown">
          			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false" style=" color: white;">
            			membership
          			</a>
          			<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            			<li><a class="dropdown-item" href="#">Faculty</a></li>
            			<li><a class="dropdown-item" href="#">Students</a></li>
            			<li><a class="dropdown-item" href="index.jsp">Alumni</a></li>
          			</ul>
        		</li>
      		</ul>
      		<% 
      		 if(!session.getAttribute("sess").equals("false"))
  {	   %>

      <div class="navbar-nav ms-auto"> <form action="ab" method="post"><button class="btn btn-outline-light" style="background: #8c1515; color: white;">logout</button></form></div>
      <% }%>
    	</div>
  	</div>
</nav>
</div>


<div style="padding: 100px 0px">
 <%
   String s = request.getParameter("U_id");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
   PreparedStatement st = con.prepareStatement("select * from student where U_id=?");
   st.setString(1,s);
	ResultSet rs = st.executeQuery();
	if(!rs.next())
	{
		session.setAttribute("forgot","false");
		response.sendRedirect("forgot.jsp");
	}
	else
	{
		
		session.setAttribute("forgot","true");
		
		  if(!session.getAttribute("questions").equals("true")) 
		  {	   
		  %>
		  <div class = "alert alert-danger" role="alert" >
		  <h5 style="text-align:center; color:red">Something went wrong. Please check your answers!!!</h5>
		  </div>
		 
		  
		  <%}
		   %>
   
  <div class="container-fluid">
    <div class="row">
      <div class="col-1">
        
      </div>
      <div class="col-10" style="background: #eff5f5">
        <form action="getpassword?name=<%=s%>" method="post">
  
          <div class="row">
            <div class="col-6">
              <label class="form-label"><h6>question 1</h6></label>
            </div>
            <div class="col-6">
              <label class="form-label"><h6>answer 1</h6></label>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <p><%=rs.getString(3)%> </p>
            </div>
            <div class="col-6">
              <input class="form-control" type="text" name="s1" placeholder="Enter the answer..." required>
            </div>
          </div>
          <br>
           <div class="row">
            <div class="col-6">
              <label class="form-label"><h6>question 2</h6></label>
            </div>
            <div class="col-6">
              <label class="form-label"><h6>answer 2</h6></label>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <p><%=rs.getString(4)%> </p>
            </div>
            <div class="col-6">
              <input class="form-control" type="text" name="s2" placeholder="Enter the answer..." required>
            </div>
          </div>
          <br>
           <div class="row">
            <div class="col-6">
              <label class="form-label"><h6>question 3</h6></label>
            </div>
            <div class="col-6">
              <label class="form-label"><h6>answer 3</h6></label>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <p><%=rs.getString(5)%> </p>
            </div>
            <div class="col-6">
              <input class="form-control" type="text" name="s3" placeholder="Enter the answer" required>
            </div>
          </div>
          <div> <br> <br>
          <center><button class="btn btn-primary" type="Submit" value="submit" style="color: white; text-decoration: none;">sumbit</button></center>
          </div>
          <br>
           </form>
    </div>
  </div>
  <%} %>
</div>
</div>
  <!--Body-->
  <!--<form class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">City</label>
    <input type="text" class="form-control" id="inputCity">
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">State</label>
    <select id="inputState" class="form-select">
      <option selected>Choose...</option>
      <option>...</option>
    </select>
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">Zip</label>
    <input type="text" class="form-control" id="inputZip">
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
</form>-->
<div style="position:fixed; bottom:0; height:auto; margin-top:40px;
            width:100%; text-align:center; background:#8c1515; color: white; padding: 3px 0px" class="container-fluid">
            <FOOTER><p><center>Copyright &copy; CSE | RGUKT-Basar. All Rights Reserved. Contact Us: +91 80081 55105</center></p></FOOTER>

</div>

  </body>
</html>
