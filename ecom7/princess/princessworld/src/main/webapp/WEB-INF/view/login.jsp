<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@page isELIgnored="false" %>
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
   <form:form action="/checkLogin" method="POST">
        <div class="col-md-4 col-md-offset-9">
            
                <div class="panel-heading"> <h2>LOGIN</h2>
                <div class="panel-body transparent">
                
                <div class="panel-body">
                    
                        <div class="form-group">
                            <label id="inputEmail3" path="UserName" class="col-sm-3 control-label">Username</label>
                            <div class="col-sm-9">
                                <input type="text" id="inputEmail3" path="UserName" class="form-control"  placeholder="username" required=""/>
                            </div>
                        </div>
                        <div class="form-group">
                        
                            <label id="inputPassword3" path="Password" class="col-sm-3 control-label">Password</label>
                            <div class="col-sm-9">
                                <input type="Password" id="inputPassword3" path="password" class="form-control" placeholder="Password" required="" />
                            </div>
                        </div>                
                        <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div id="browse_app">
                                <input type="submit" value="Login" class="btn btn-success "/>                            
                                
                                </div>
                            </div>
                        </div>
                   
                </div>
                <div class="footer">New User? <a href="memberShip" type="button" class="btn btn-info btn-sm" >sign up</a>
                </div>
                <div style="color: red">${error}</div>
        </div>
            </div>
            
           </div>
           
            </div>
          </form:form>
          
        </div>
    </div>   
</body>
<%@include file="footer.jsp" %>
</html>