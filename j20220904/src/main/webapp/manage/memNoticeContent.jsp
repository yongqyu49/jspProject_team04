<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/manageCss/faq.css">
<style type="text/css">
.border-line-box-header+.border-line-box, .border-line-box-header+.mypage-detail-info-box, .border-line-box-header+.mypage-complete-wrap {
    margin-top: 16px;
}
.border-line-box {
    border-top: 2px solid #000;
    border-bottom: 1px solid #b5b5b5;
}

body {
    width: 100%;
    color: #000;
    background-color: #fff;
    line-height: 1;
}
.board-view-wrap .board-view-head {
    height: 90px;
    padding: 0 21px 0 19px;
    border-bottom: 1px solid #e5e5e5;
    -webkit-box-align: center;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
}

.board-view-wrap .board-view-head .view-tit {
    color: #000;
    font-size: 20px;
    letter-spacing: -1px;
}

.board-view-wrap .board-view-head .text-date {
    color: #666;
    margin-left: 10px;
    font-family: "Montserrat",sans-serif;
    font-size: 15px;
    line-height: 19px;
}
.board-view-wrap .board-view-cont {
    padding: 40px 20px 50px 20px;
    font-size: 15px;
    letter-spacing: -.75px;
    line-height: 24px;
}

.board-view-wrap .board-view-btm .tbl-wrap.tbl-col {
    border-top: 1px solid #b5b5b5;
}
.tbl-wrap.tbl-col {
    text-align: center;
    font-family: "Montserrat","Noto Sans KR",sans-serif;
}
table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    table-layout: fixed;
}
.board-view-wrap .board-view-btm .tbl-wrap.tbl-col.notice-list table tbody {
    border-bottom: none;
}
.tbl-col.notice-list table tbody {
    border-color: #d5d5d5;
}
.board-view-wrap .board-view-btm .tbl-wrap.tbl-col td .ico-next {
    border-bottom: 5px solid #000;
}
.board-view-wrap .board-view-btm .tbl-wrap.tbl-col td [class^='ico-'] {
    display: inline-block;
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    vertical-align: 4px;
}
.tbl-wrap.tbl-col table tbody tr:first-child td {
    border-top: none;
}
.tbl-col.notice-list table tbody tr td {
    padding: 19px 10px 16px;
}
.board-view-wrap .board-view-btm .tbl-wrap.tbl-col td.text-left {
    padding-left: 0;
}
.tbl-wrap.tbl-col table tbody tr:first-child td {
    border-top: none;
}
.tbl-col.notice-list table tbody tr td {
    padding: 19px 10px 16px;
}
.tbl-col.notice-list table tbody tr td a.notice-link {
    display: inline-block;
    max-width: 100%;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    height: auto;
    max-height: none;
}
a, a:active, a:focus, a:hover, a:link, a:visited {
    text-decoration: none;
}
.tbl-col.notice-list table tbody tr td.date-txt {
    font-family: "Montserrat",sans-serif;
    font-size: 15px;
    color: #666;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
   <div id="header">
       <jsp:include page="../main/header.jsp"></jsp:include>
    </div><!-- header -->

   <div id="contentsWrap" class="contents-wrap">
     <div class="contents-width">
	   <div class="contents-inner">
	   																							
	     <!--고객센터 -->
	   	  <div class="page-title-wrap mypage">
	      	<h2 class="text-head1 text-left">고객센터</h2>
	      </div>
	      
	      <!-- 고객센터 밑 화면 -->
	      <div class="contents-inner contents-aside customer-wrap">
	      	<!-- 왼쪽 선택창 -->
	      	<div class="aside-wrap">
	         <ol class="customer-lnb">
	            <li class="customer-lnb-item eng"><a href="#" class="active">공지사항</a></li>
	            <li class="customer-lnb-item"><a href="memberFaqView.jsp">FAQ</a></li>
	         </ol>
	        </div>
	     	
	      <!-- 중앙 화면 -->
	      <div class="aside-contents" align="center">
	      		<h3 class="text-head2 eng">공지사항</h3>
	      
	      		<!-- 공지사항 채워넣기 -->
	      		<div class="board-view-wrap border-line-box">
	      			<div class="flex-box board-view-head">
	      				<span class="view-tit">${notice.notice_title}</span>
	      				<span class="text-date">${notice.notice_date}</span>
	      			</div>
	      			
	      			<!-- 이전 글 / 다음 글 -->
	      			<div class="board-view-cont"><pre>${notice.notice_content}</pre></div>
			      	<div class="board-view-btm">
			      		<div class="tbl-wrap tbl-col notice-list">
			      			<table>
			      				<colgroup>
			      					<col style="width: 44px;">
			      					<col>
			      					<col style="width: 112px;">
			      				</colgroup>
			      				
			      				<tbody>
			      					<tr>
			      						<td>
			      							<span class="ico-next"></span>
			      						</td>
			      						<td class="text-left">
			      							<a href="memNoticeContent.do?notice_code=${notice.notice_code-1}&pageNum=${pageNum}'" id="btnPrevNotice" class="notice-link">${notice.notice_title}</a>
			      						</td>
			      						<td class="date-txt">${notice.notice_date }</td>
			      					</tr>
			      					
			      					<tr>
			      						<td>
			      							<span class="ico-prev"></span>
			      						</td>
			      						<td class="text-left">
			      							<a href="#" id="btnPrevNotice" class="notice-link" value="${notice.notice_code-1}">${notice.notice_title}</a>
			      						</td>
			      						<td class="date-txt">${notice.notice_date }</td>
			      					</tr>
			      				</tbody>
			      			</table>
			      		
			      		</div>
			      	
			      	
			      	
			      	</div>	
	      		
	      		
	      		</div>
	      		
	      		
    		<div class="tab-wrap anchor-tab multi-line" id="tabDiv">
				<table border="1">
					<tr>
						<td width="50">번호</td>
						<td>${notice.notice_code}</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="수정"
							onclick="location.href='updateForm.do?num=${board.num}&pageNum=${pageNum}'">
							<input type="button" value="답변작성"
							onclick="location.href='writeForm.do?num=${board.num}&pageNum=${pageNum}'">
							<input type="button" value="삭제"
							onclick="location.href='deleteForm.do?num=${board.num}&pageNum=${pageNum}'">
							<input type="button" value="목록"
							onclick="location.href='list.do?pageNum=${pageNum}'"></td>
					</tr>
				</table>
			</div>
	      </div>      
	   </div>
	</div>
	   </div>
	</div>
   <div id="footer">
        <jsp:include page="../main/footer.jsp"></jsp:include>
    </div><!-- footer -->

</body>
</html>