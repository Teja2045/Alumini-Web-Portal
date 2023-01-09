<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>UPDATE | ALUMNI | CSE dept</title>
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
    	</div>
  	</div>
</nav>
</div>
<%
   String str=(String)session.getAttribute("sess");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
   PreparedStatement st = con.prepareStatement("select * from alumini_table where U_id=?");
   st.setString(1,str);
   ResultSet rs = st.executeQuery();
   rs.next();
   String a = rs.getString(1);
   String b = rs.getString(2);
   String c = rs.getString(3);
   String d = rs.getString(4);
   String e = rs.getString(5);
   String f = rs.getString(6);
   String g = rs.getString(7);
   String h = rs.getString(8);
   String i = rs.getString(9);
   String j = rs.getString(10);
   String k = rs.getString(11);
   String l = rs.getString(12);
   String m = rs.getString(13);
   String n = rs.getString(14);
   String o = rs.getString(15);
   String p = rs.getString(16);
   String q = rs.getString(17);
   session.setAttribute("q",q);
   st = con.prepareStatement("select * from student where U_id=?");
   st.setString(1,str);
   ResultSet rs1 = st.executeQuery(); 
   rs1.next();
   String aa = rs1.getString(3);
   String bb = rs1.getString(4);
   String cc = rs1.getString(5);
   String dd = rs1.getString(6);
   String ee = rs1.getString(7);
   String ff = rs1.getString(8);
   %>

<div style="padding: 100px 0px">
  <div class="container-fluid">
    <center><h3>Updation Form</h3></center><br><br>
    <div class="row">
      <div class="col-1">
        
      </div>
      <div class="col-10" style="background: #eff5f5">
        <form action="up?U_id=<%=str%>" method="post" enctype = "multipart/form-data">
          <div class="row">
            <center>
            <div class="col-6">
              <label class="form-label">Profile Image</label>
              <input type="file" class="form-control" name = "image" placeholder = "select your profile picture">
            </div>
          </center>
          </div><br>
          <div class="row">
            <div class="col-6">
              <label class="form-label"><h6>University ID</h6></label>
            </div>
            <div class="col-6">
              <label class="form-label"><h6>Password</h6></label>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <input class="form-control" value="<%=a%>" type="text" name="id" value="<%=str%>" required disabled>
            </div>
            <div class="col-6">
              <input class="form-control" value="<%=b%>" type="Password" name="U_pswd" placeholder="Enter your password" required>
            </div>
          </div>
          <br>
           <div class="row">
            <div class="col-6">
              <label class="form-label"><h6>Security Question 1</h6></label>
            </div>
            <div class="col-6">
              <label class="form-label"><h6>Solution</h6></label>
            </div>
          </div>
          <div class="row">
           	<div class="col-6">
              <input class="form-control" type="text" value="<%=aa%>" name="q1" placeholder="enter the question..." required>
            </div>  
            <div class="col-6">
              <input class="form-control" type="text" value="<%=dd%>" name="s1" placeholder="enter the solution" required>
            </div>
          </div> <br> 
          <div class="row">
            <div class="col-6">
              <label class="form-label"><h6>Security Question 2</h6></label>
            </div>
            <div class="col-6">
              <label class="form-label"><h6>Solution</h6></label>
            </div>
          </div>
          <div class="row">
           	<div class="col-6">
              <input class="form-control" type="text" value="<%=bb%>"  name="q2" placeholder="enter the question..." required>
            </div>  
            <div class="col-6">
              <input class="form-control" type="text" value="<%=ee%>" name="s2" placeholder="enter the solution" required>
            </div>
          </div> <br>
          <div class="row">
            <div class="col-6">
              <label class="form-label"><h6>Security Question 3</h6></label>
            </div>
            <div class="col-6">
              <label class="form-label"><h6>Solution</h6></label>
            </div>
          </div>
          <div class="row">
           	<div class="col-6">
              <input class="form-control" type="text" value="<%=cc%>" name="q3" placeholder="enter the question..." required>
            </div>  
            <div class="col-6">
              <input class="form-control" type="text" value="<%=ff%>" name="s3" placeholder="enter the solution" required>
            </div>
          </div>
          <br>
          <br>
          <div class="row">
            <div class="col-6">
              <label class="form-label">First Name</label>
            </div>
            <div class="col-6">
              <label class="form-label">Last Name</label>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <input class="form-control" value="<%=c%>" type="text" name="f_name" placeholder="Enter your first name" required>
            </div>
            <div class="col-6">
              <input class="form-control" value="<%=d%>" type="text" name="l_name" placeholder="Enter your last name" required>
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-6">
              <label class="form-label">E-mail ID</label>
            </div>
            <div class="col-6">
              <label class="form-label">Mobile Number</label>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <input class="form-control" value="<%=e%>" type="email" name="email" placeholder="Enter your email ID" required>
            </div>
            <div class="col-6">
              <input class="form-control" value="<%=f%>" type="tel" name="Mob_num" pattern="[0-9][0-9]{9}" placeholder="Enter your Mobile Number" required> 
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-6">
              <label class="form-label">Gender</label>
            </div>
            <div class="col-6">
              <label>Date of Birth</label>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="Male" required>
                      <label class="form-check-label" for="inlineRadio1">Male</label>
              </div>
              <div class="form-check form-check-inline">
                      <input class="form-check-input" value="" type="radio" name="gender" id="inlineRadio2" value="Female">
                      <label class="form-check-label" for="inlineRadio2">Female</label>
              </div>
              <div class="form-check form-check-inline">
                  <input class="form-check-input" value="" type="radio" name="gender" id="inlineRadio3" value="Other">
                  <label class="form-check-label" for="inlineRadio3">Other</label>
              </div><br><br>
            </div>
            <div class="col-6">
              <input type="Date" value="<%=h%>" name="dob" placeholder="Enter your date of birth">
            </div>
          </div>
          <div class="row">
            <div class="col">
              <div class="input-group mb-3">
                      <label class="input-group-text" for="inputGroupSelect01">Passed Out Year</label>
                      <select class="form-select" name="y" id="inputGroupSelect01" required>
                          <option value="<%=i%>" selected><%=i%></option>
                          <option value="2022">2022</option>
                          <option value="2021">2021</option>
                          <option value="2020">2020</option>
                          <option value="2019">2019</option>
                        <option value="2018">2018</option>
                          <option value="2017">2017</option>
                        <option value="2016">2016</option>
                          <option value="2015">2015</option>
                          <option value="2014">2014</option>
                      </select>
              </div>
            </div>
            <div class="col">
              <div class="col">
                    <div class="input-group mb-3">
                      <label class="input-group-text">Company</label>
                      <select class="form-select" name="company">
                        <option value="<%=j%>" selected><%=j%></option>
                      	<option value="Microsoft">Microsoft</option>
                      	<option value="Google">Google</option>
                      	<option value="Facebook">Facebook</option>
                      	<option value="Apple">Apple</option>
                      	<option value="TCS">TCS</option>
                      	<option value="Wipro">WIPRO</option>
                      	<option value="Epam">EPAM</option>
                        <option value="Thoughtworks">THOUGHT WORKS</option>
                        <option value="Vaserlabs">VASER LABS</option>
                        <option value="Infosys">INFOSYS</option>
                        <option value="Outplay">Outplay</option>
                        <option value="Others">OTHERS</option>
                      </select>
                    </div>
                  </div>
            </div>
          </div>

          <div class="row">
            <div class="col-6">
              Present Designation
            </div>
            <div class="col-6">
              Present Package/Annum
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <input class="form-control" value="<%=k%>" name="ds" type="text" placeholder="Enter your Designation">
            </div>
            <div class="col-6">
              <input class="form-control" value="<%=l%>" name="pk" type="text" placeholder="Enter your per annum package in number">
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-12">
              <center><h6>Social Media Handles</h6></center>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <label class="form-label">Linked In</label>
              <input class="form-control" value="<%=m%>" name="lk" type="url" placeholder="Paste your Linked-In Profile link">
            </div>
            <div class="col-6">
              <label class="form-label">Twitter</label>
              <input class="form-control" value="<%=n%>" type="url" name="tr" placeholder="Paste your Twitter profile link">
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <label class="form-label">Instagram</label>
              <input class="form-control" value="<%=o%>"  type="url" name="ins"placeholder="Paste your Instagram Profile link">
            </div>
            <div class="col-6">
              <label class="form-label">Facebook</label>
              <input class="form-control" value="<%=p%>"  type="url" name="fb"placeholder="Paste your Facebook profile link">
            </div>
          </div>
          <br><br>
          <div class="row">
                <div class="col-12">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
           </div>
        </form>
      </div>
      <div class="col-1">
        
      </div>
    </div>
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
