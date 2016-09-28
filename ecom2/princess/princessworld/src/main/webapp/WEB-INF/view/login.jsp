<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TEXTILES</title>
  <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>  
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>"/></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"/></script> 
  <style>
  body {
    background:url('resources/images/sun.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    }
    
    .transparent{    
    background-color: rgba(0,0,0,0.15);
}

.panel{
    background-color: transparent;
    border: 1px #222;
}
.panel-heading{
    background-color: transparent;
    text-align: center    
}
.panel-body{
    background-color: transparent;
}
.footer{
    background-color: transparent;
    text-align: center
}
    
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-7">
            
                <div class="panel-heading"> <strong class="text-bold">LOGIN</strong>
                <div class="panel-body transparent">
                </div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">Username</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="inputEmail3" placeholder="username" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="inputPassword3" placeholder="Password" required="">
                            </div>
                        </div>                
                        <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div id="browse_app">
                                <button type="submit" class="btn btn-success btn-sm">submit</button>                              
                                <button type="reset" class="btn btn-default btn-sm">cancel</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="footer">New User? <a href="register" role="button" class="btn btn-info btn-sm" >sign up</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
<%@include file="footer.jsp" %>
</html>