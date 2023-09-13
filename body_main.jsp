<%@ page contentType="text/html; charset=utf-8"%>
<%! String greeting = "Apple Store";
	String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron">
		<div class="container">
         <h1 class="display-3">
            <%=greeting%>
         </h1>
      </div>
   </div>   
   <div class="container">
      <div class="text-center">
         <h3>
            <%=tagline%>
         </h3>
      </div>
      <hr>
   </div>   

<div class="card bg-dark text-white">
    <img src="image/hero_endframe__ov6ewwmbhiqq_large.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">iphone 15 pro</h5>
    <p class="card-text">출처 : apple</p>
  </div>
  </div>

<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        iphone 15 pro
      </a>
      <a href="#" class="list-group-item list-group-item-action">MacBook Air</a>
      <a href="#" class="list-group-item list-group-item-action">iPad</a>
    </div>
