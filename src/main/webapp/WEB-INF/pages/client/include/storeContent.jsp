<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" href="Frontend/css/searchResult.css">
<script src="Frontend/js/jquery.min.js"></script>
<script src="Frontend/js/responsiveslides.min.js"></script>
<script src="js/client/accounting.js"></script>
<script src="<c:url value='/js/client/store.js'/>" ></script>
</head>

<script type="text/javascript">	  
	$(document).ready(function() { 
		 $(".grid_1_of_4 .changeToVND").each(function() {
			  var value = accounting.formatMoney($(this).text())+ ' VND';
			  $(this).html(value);
			});
		
		 
	  });
	</script>




<body>
	<div class="clear"> </div>
	<div class="wrap">
		    <div class="content">	    	
		    <div class="content-grids">
		    	    	
		    	<c:if test = "${list.size() == 0}">
		    		<div class="section group">
		    			<h4>Không tìm thấy kết quả nào</h4>
		    		</div>
		    	</c:if>
		    	<c:forEach var="sanpham" items="${list}" varStatus="loop">
		    		<c:if test = "${loop.index != list.size()-1}">
         				<c:if test = "${loop.index%4 == 0}">
         					<div class="section group">
         					<div class="grid_1_of_4 images_1_of_4 products-info" style=" width: 232px; height: 400px;"><a href="sp?id=${sanpham.id}">
									<img style="width: 225px; height: 230px" src="/ngonmart/img/${sanpham.id}.png">
									<h3 style="font-weight: bold; height: 43.2px">${sanpham.tenSanPham}</h3></a>
									<h3 class="changeToVND">${sanpham.donGia}</h3>
									<button onClick="addToCart(${sanpham.id})" class="btn btn-warning"><span class= "glyphicon glyphicon-shopping-cart pull-center"></span> Giỏ hàng</button>
									<h3></h3>
							</div>
         				</c:if>
         				
         				<c:if test = "${loop.index%4 != 0}">
         					<c:if test = "${loop.index%4 == 3}">
         						<div class="grid_1_of_4 images_1_of_4 products-info" style=" width: 232px; height: 400px;"><a href="sp?id=${sanpham.id}">
									<img style="width: 225px; height: 230px"src="/ngonmart/img/${sanpham.id}.png">
									<h3 style="font-weight: bold;height: 44px">${sanpham.tenSanPham}</h3></a>
									<h3 class="changeToVND">${sanpham.donGia}</h3>
									<button onClick="addToCart(${sanpham.id})" class="btn btn-warning"><span class= "glyphicon glyphicon-shopping-cart pull-center"></span> Giỏ hàng</button>
									<h3></h3>
							</div>
								</div>
							</c:if>
							
							<c:if test = "${loop.index%4 != 3}">
								<div class="grid_1_of_4 images_1_of_4 products-info" style=" width: 232px; height: 400px;"><a href="sp?id=${sanpham.id}">
									<img style="width: 225px; height: 230px" src="/ngonmart/img/${sanpham.id}.png">
									<h3 style="font-weight: bold;height: 44px">${sanpham.tenSanPham}</h3></a>
									<h3 class="changeToVND">${sanpham.donGia}</h3>
									<button onClick="addToCart(${sanpham.id})" class="btn btn-warning"><span class= "glyphicon glyphicon-shopping-cart pull-center"></span> Giỏ hàng</button>
									<h3></h3>
							</div>
							</c:if>
         				</c:if>  				
     				</c:if>
     				<c:if test = "${loop.index == list.size()-1}">
     					<c:if test = "${loop.index%4 == 0}">
     						<div class="section group">
         					<div class="grid_1_of_4 images_1_of_4 products-info" style=" width: 232px; height: 400px;"><a href="sp?id=${sanpham.id}">
									<img style="width: 225px; height: 230px" src="/ngonmart/img/${sanpham.id}.png">
									<h3 style="font-weight: bold;height: 44px">${sanpham.tenSanPham}</h3></a>
									<h3 class="changeToVND">${sanpham.donGia}</h3>
									<button onClick="addToCart(${sanpham.id})" class="btn btn-warning"><span class= "glyphicon glyphicon-shopping-cart pull-center"></span> Giỏ hàng</button>
									<h3></h3>
							</div>
							</div>
     					</c:if>
     					<c:if test = "${loop.index%4 != 0}">
     						<div class="grid_1_of_4 images_1_of_4 products-info" style=" width: 232px; height: 400px;"><a href="sp?id=${sanpham.id}">
									<img style="width: 225px; height: 230px" src="/ngonmart/img/${sanpham.id}.png">
									<h3 style="font-weight: bold;height: 44px">${sanpham.tenSanPham}</h3></a>
									<h3 class="changeToVND">${sanpham.donGia}</h3>
									<button onClick="addToCart(${sanpham.id})" class="btn btn-warning"><span class= "glyphicon glyphicon-shopping-cart pull-center"> </span>Giỏ hàng</button>
									<h3></h3>
							</div>
							</div>
     					</c:if>
     				</c:if>    				
		    	</c:forEach>
		    	<c:if test = "${list.size() != 0}">
		    		<div class="paging">
            		<c:if test = "${currentPage != 1}">
                		<a href="/ngonmart/store?page=${currentPage-1}&range=${range}&brand=${brand}&manufactor=${manufactor}&os=${os}&ram=${ram}&pin=${pin}">Back</a>
                	</c:if>
                	<c:if test = "${currentPage == 1}">	
        				<a class="current">1</a>
        			</c:if>
        			<c:if test = "${currentPage != 1}">	
        				<a href="/ngonmart/store?page=1&range=${range}&brand=${brand}&manufactor=${manufactor}&os=${os}&ram=${ram}&pin=${pin}">1</a>
        			</c:if>
        			
        			<c:forEach var="pag" items="${pageList}" varStatus="loop">
            			<c:if test = "${currentPage == pag}">	
        					<a class="current">${pag}</a>
        				</c:if>
        				<c:if test = "${currentPage != pag}">	
        					<a href="/ngonmart/store?page=${pag}&range=${range}&brand=${brand}&manufactor=${manufactor}&os=${os}&ram=${ram}&pin=${pin}">${pag}</a>
        				</c:if>
      				</c:forEach>

            		<c:if test = "${currentPage != totalPage}">
                		<a href="/ngonmart/store?page=${currentPage+1}&range=${range}&brand=${brand}&manufactor=${manufactor}&os=${os}&ram=${ram}&pin=${pin}">Next</a>	
                	</c:if>
				</div>
		    	</c:if>
					
		    
			</div>
			
    
		    	</div>
		    	<div class="content-sidebar">
		    		<h4>Lọc sản phẩm</h4>		    			
						<form>
						<input type="hidden" name="name" value="${name}">
        				<p>Mức giá</p>
        				<div class="select-range">
        					<select name="range" class="form-control">
        						<option value="">Tất cả giá</option>
								<option value="duoi-30-nghin">Dưới 30 nghìn</option>
								<option value="30-nghin-den-50-nghin">30 nghìn đến 50 nghìn</option>
								<option value="50-nghin-den-100-nghin">50 nghìn đến 100 nghìn</option>
								<option value="100-nghin-den-200-nghin">100 nghìn đến 200 nghìn</option>
								<option value="tren-200-nghin">Trên 200 nghìn</option>					
        					</select>
        				</div>   				
        				<p>Hãng sản xuất</p>
        				<div class="select-range">
        					<select name="manufactor" class="form-control">
        						<option value="">Tất cả nhà sản xuất</option>
        						<c:forEach var="manufactor" items="${hangsx}" varStatus="loop">
								<option value="${manufactor}">${manufactor}</option>
								</c:forEach>				
        					</select>
        				</div>
        				
        				
        					<input type="hidden" name="brand" value="${brand}">
        					<input class="search-submit" type="submit" value="Lọc sản phẩm">
						</form>
						
		    	</div>
		    </div>
	<div class="clear"> </div>
</body>
</html>