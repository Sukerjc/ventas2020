<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Article List</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <h2>Lista de Productos</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">#ID</th>
    <th scope="row">NOMBRE</th>
    <th scope="row">PRECIO</th>
    <th scope="row">STOCK</th>
    <th scope="row">ACTUALIZAR</th>
    <th scope="row">ELIMINAR</th>
   </thead>
   <tbody>
    <c:forEach items="${articleList }" var="producto" >
     <tr>
      <td>${producto.id }</td>
      <td>${producto.nombre_producto }</td>
      <td>${producto.precio_producto }</td>
      <td>${producto.stock_producto }</td>
      <td>
       <spring:url value="/article/updateArticle/${producto.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >ACTUALIZAR</a>
      </td>
      <td>
       <spring:url value="/article/deleteArticle/${producto.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >ELIMINAR</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/article/addArticle/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >AGREGAR NUEVO PRODUCTO</a>
  
  <spring:url value="/article/addArticle/" var="buscarURL" />
  <a class="btn btn-primary" href="${buscarURL }" role="button" >ELIMINAR TODO</a>
  
  <spring:url value="/article/addArticle/" var="buscarURL" />
  <a class="btn btn-primary" href="${buscarURL }" role="button" >BUSCAR</a>
  
  <spring:url value="/article/addArticle/" var="buscarURL" />
  <a class="btn btn-primary" href="${buscarURL }" role="button" >TOTAL PRODUCTOS</a>
 </div>
</body>
</html>