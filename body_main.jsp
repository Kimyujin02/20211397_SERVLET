<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

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
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>

         <div class="col-md-4">
            <div class="card bg-dark text-white">
                <img src="image/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">ipad pro</h5>
                        <p class="card-text">출처 : apple</p>
                        </div>
                        </div>

        <h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_UnitPrice")%>원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>

            <%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>

         </div>

      </div>
      <hr>
   </div>
        
        <div class="card bg-dark text-white">
    <img src="image/iPhone112.jpg" style="max-width: 1000px; height: auto; display: block; margin: 0 auto;" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">iphone 14 pro</h5>
    <p class="card-text">출처 : apple</p>
  </div>
  </div>