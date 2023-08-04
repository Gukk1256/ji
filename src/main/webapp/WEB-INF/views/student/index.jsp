<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    	<base href="${pageContext.servletContext.contextPath}/"/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>MyContact App</title>
    <link href="../assets/images/logo.png" rel="shortcut icon" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Font Awesome -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <!-- Custom style -->
   
  </head>
<style>
body {
	background-color: #FAFAFA;
}

#main-content {
	min-height: 500px;
	margin-top: 50px;
}

.no-padding {
	padding: 0;
}

.table th, td {
   text-align: center;   
}

.field-error {
	border-color: #FF0000;
	margin-bottom: 10px;	
}
</style>
  <body>
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand" href="#">MyContact App</a>
    </nav>

    <div class="container" id="main-content">
      <div class="row">

        <!-- LEFT AREA -->
        <div class="col-7 container">
          <div class="row">
            <form>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search by name ..." />
              </div>
            </form>
          </div>

          <div class="row">
            <div class="table-responsive">
              <h5>List of contacts</h5>
              <table border="1" style="width:100%">
			<tr>
				<th>Manv</th>
				<th>Ho Ten</th>
				<th>Diachi</th>
				<th>gioitinh</th>
				<th>Action</th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr >
					<td>${item.manv}</td>
					<td>${item.hoten}</td>
					<td>${item.diachi}</td>
					<td>${item.gioitinh}</td>
					<td>
					
				
					<a  href="/student/edit/${item.manv}"  class="mr-sm-2 text-primary"><i class="fa fa-pencil"></i></a> 
                   <a href="/student/delete/${item.manv}" class="text-danger"><i class="fa fa-trash"></i></a>  
					
					<%-- 	 <a href="/student/edit/${item.id}">Edit</a>   --%>
					</td>
				</tr>
			</c:forEach>
			</table>
			
            </div>
          </div>
        </div>
        
        <!-- end LEFT AREA -->

        <!-- RIGHT AREA -->
        <div class="col-4 offset-1">
          <form:form action="/student/index" modelAttribute="item">
            <h5>Contact form</h5>

            <div class="form-group">
              <form:input class="form-control" type="text" path="manv" placeholder="mssv" />
            </div>

            <div class="form-group">
              <form:input class="form-control" type="text" path="hoten" placeholder="name" />
            </div>
             <div class="form-group">
              <form:input class="form-control" type="text" path="diachi" placeholder="mark" />
            </div>

            <div class="form-group">
              <form:input class="form-control" type="text" path="gioitinh" placeholder="major" />
            </div>

            <div class="form-group text-center">
              <button type="submit" class="btn btn-success" formaction="/student/create">
                <i class="fa fa-plus-square"></i> Create
              </button>
              <button type="submit" class="btn btn-primary" formaction="/student/update">
                <i class="fa fa-save"></i> Update
              </button>
              <button type="button" class="btn btn-danger" >
                <a href="/student/delete/${item.manv}" style="color: white; text-decoration: none">
                <i class="fa fa-trash-o"></i>
                Delete
               <!--  <a href="/category/delete2/" ></a> -->
               </a>
                
              </button>
            </div>
          </form:form>
        </div>
        <!-- end RIGHT AREA -->

      </div><!-- END row -->
    </div><!-- END container -->
    
    <footer class="container">
      <strong>&copy; 2018 Ashina</strong>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>