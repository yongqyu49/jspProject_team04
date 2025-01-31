<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	#listA{
		color: black;
		text-decoration: none;
	}
</style>
<script>

$(function() {
	$('.pro_buynow').click(function() {
		var product_id = $(this).siblings('input[name="buyNow_product_id"]').val();
		var gender = $(this).siblings('input[name="buyNow_gender"]').val();
		console.log(product_id);
		console.log(gender);
		$.ajax({
			url : '${pageContext.request.contextPath}/category/buyNow.do',
			data : 
				{product_id : product_id,
					gender : gender}, 
			dataType : 'html',
			success : function(data) {
				$('.modal_content').html(data);
			}
		});
		
		
		$('.modal').fadeIn();
	});
	$('.modal #modalClose').click(function() {
		$('.modal').fadeOut();
	})
})



$(function () {
	var imageName = ["heart0","heart1"];
	$(".like_img").click(function() {
		var num =$(this).attr('alt');
		var product_id = $(this).attr('id');
		console.log(num);
		console.log(product_id);
		if(num == 1) {
			//num=0;
			$(this).attr('alt','0');
			$.ajax({
				url:  '${pageContext.request.contextPath}/contents/deleteLike.do',
				type: 'get',
				data: {
						'product_id' : product_id,
						'mem_id' :  '${sessionScope.mem_id}'
						
						
				      },
					
				dataType: 'text',
				success : function(data){
					console.log('data='+data);
					if(data == '1') {	
						alert('찜한 상품이 삭제되었습니다');
					}else {
						alert('로그인후 찜한 상품을 담을수 있습니다');
						location.href="${pageContext.request.contextPath}/member/loginForm.do?toURI=${toURI}";
					}
				},
				error: function(err){
					console.log(err);
				}
			});	
			
		}else	    {
			//num++;
			$(this).attr('alt','1');
			$.ajax({
				url: '${pageContext.request.contextPath}/contents/insertLike.do',
				type: 'get',
				data: {
						'product_id' : product_id,
						'mem_id' :  '${sessionScope.mem_id}'
					  },
				dataType: 'text',
				success : function(data){
					console.log('data='+data);
					if(data == '1') {
						alert('찜한 상품이 등록되었습니다');
					}else {
						alert('로그인후 찜한 상품을 담을수 있습니다');
						
						location.href="${pageContext.request.contextPath}/member/loginForm.do?toURI=${toURI}";
					}
				},
				error: function(err){
					console.log(err);
				}
			});	
			
		
			}
		
		$(this).attr("src","../img/contexts/"+ imageName[num]+".png");
	});
});	
</script>
	
	
	<c:forEach var="filterList" items="${filterList }">
		<li class="pro_content">
			<div>
			<a id="listA" href="${pageContext.request.contextPath}/contents/contents_men.do?product_id=${filterList.product_id}&&gender=${filterList.gender}">
				<img alt="상품이미지" src="${filterList.s_file_path }" class="pro_img" id="pro_img"><br>
				<span class="pro_brand">${filterList.brand }</span><br>
				<span class="pro_model">${filterList.kor_name }</span><br>
				<span class="pro_price">${filterList.price }</span><span>원</span><br>
				</a>
				<hr>
				<div class="pro_buycontent">
					<c:choose>
						<c:when test="${filterList.like_product_id > 0 }">
							<img class="like_img" alt="1"   src="../img/contexts/heart0.png" id="${filterList.product_id }">
						</c:when>
						<c:otherwise>
							<img class="like_img" alt="0"  src="../img/contexts/heart1.png" id="${filterList.product_id }">
						</c:otherwise>
					</c:choose>
					
					<button type="button" class="pro_buynow">바로구매</button>
					<input type="hidden" name="buyNow_product_id" id="buyNow_product_id" class="buyNow_product_id" value="${filterList.product_id }">
					<input type="hidden" name="buyNow_gender" id="buyNow_gender" class="buyNow_gender" value="${filterList.gender }">
					<div class="modal">
					<div id="modal_div_button">
						<div class="modal_div_inner">
							<div class="modal_content" title="구매용 모달창">
							
							로딩중...
							</div>
						</div>
						
						<button id="modalClose" class="custom-btn btn-close">닫기</button>
						</div>
					</div>
				</div>
			
			</div>
			</li>
	</c:forEach>
