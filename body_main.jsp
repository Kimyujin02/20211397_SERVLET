<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<%! String greeting = "Apple 상품 목록입니다.";
   String tagline = "하단 페이지 : 확인";%>
<div class="jumbotron">
<div class="container">
<h1 class="display-3">
<%=greeting%>
</h1>
</div>
</div>


<%
   ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%>    
   <div class="container">
      <div class="row" align="center">
         <%
            for (int i = 0; i < listOfProducts.size(); i++) {
               Product product = listOfProducts.get(i);
         %>
         <div class="col-md-4">
            <div class="card bg-dark text-white">
                <img src="image/<%=product.getFilename()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">ipad pro</h5>
                        <p class="card-text">출처 : apple</p>
                        </div>
                        </div>

            <h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
            <p><%=product.getDescription()%> <!-- 상품 정보 -->
            <p><%=product.getUnitPrice()%>원 <!-- 상품 가격 -->
            <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

         </div>
         <%
            } //반복문 끝
         %>
      </div>
      <hr>
   </div>
        
        <div class="card bg-dark text-white">
    <img src="image/iphone 14.jpg" style="max-width: 1000px; height: auto; display: block; margin: 0 auto;" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">iphone 14 pro</h5>
    <p class="card-text">출처 : apple</p>
  </div>
  </div>