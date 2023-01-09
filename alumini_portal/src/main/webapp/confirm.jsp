<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>CONFIRMATION | ALUMNI | CSE dept</title>
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
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid" style="background:#8c1515;">
    <a class="navbar-brand" href="#" style=" color: white;"><img src="download.png" height="50px" width="50px"></a>
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
<br><br>

<div style="padding: 100px 0px">
  <div class="container">
  
  
   <% 
  if(session.getAttribute("con").equals("csefalse")) 
  {	   
  %>
  <div class = "alert alert-danger" role="alert" >
  <h5 style="text-align:center; color:red">oops... we can't find you in the cse databse. Please contact the admin !!!</h5>
  </div>
 
  
  <%} 
  
  else if(session.getAttribute("con").equals("false")) 
  {	   
  %>
  <div class = "alert alert-danger" role="alert" >
  <h5 style="text-align:center; color:red">You are already registered !!!</h5>
  </div>
 
  
  <%} %>
  <div class="row">
    <div class="col-4">
    </div>
    <div class="col-4">
      <form method="post" action="confirm">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">University ID Number</label>
    <input type="text" class="form-control" name="u_id" id="u_id">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
    </div>
    <div class="col-4">
    </div>
  </div>
</div><br>

<!--Footer-->
<div style="position:fixed; bottom:0; height:auto; margin-top:40px;
            width:100%; text-align:center; background:#8c1515; color: white; padding: 3px 0px">
            <FOOTER><p><center>Copyright &copy; CSE | RGUKT-Basar. All Rights Reserved. Contact Us: +91 80081 55105</center></p></FOOTER>

</div>

  </body>
</html>
