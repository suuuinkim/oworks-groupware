<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Document</title>

<style>
    /*전체 틀 css*/
    .container{
        border: 1px solid lightgray;
    }

    /*table*/
    .table{text-align: center;}
    .container table>tbody>tr:hover{cursor: pointer;}

    /*글씨 크기 및 굵기 css*/
    .approvalMain h2{font-size: 30px; font-weight: 700;}
    .container h2{
        font-size: 20px;
        font-weight: 700;
    }

    /*아이콘 css*/
    #homeIcon{
        position: relative;
        top : -4px;
        width: 40px;

    }
    
    .main{
        position: relative;
        left: 250px;
        }

</style>
</head>
<body>
    <br><br>
    <div class="approvalMain">
        <h2 class="main"><img src="${pageContext.servletContext.contextPath }/resources/images/approval/home.png" id="homeIcon">전자결재 홈</h2><br><br>
        <div class="container">
        
            <br>
            <h2>결재대기문서</h2><br>
            <table class="table table-hover" id="approvalDocList">
                <thead class="thead-dark">
                    <tr>
                        <th><input type="checkbox"></th>
                        <th>문서번호</th>
                        <th>제목</th>
                        <th>첨부파일</th>
                        <th>기안자</th>
                        <th>기안일</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                	<c:choose>
                		<c:when test = "${fn:length(list) eq 0}">
        			    	<tr>
                        		<td><input type="checkbox"></td>
                        		<td colspan = "7" align="center"> 결재할 문서가 없습니다.</td>
                    		</tr>
                		</c:when>
                		
                		<c:otherwise>
                			<c:forEach var ="a" items="${list }">
                				<c:if test="${a.appStatus == '대기' }">
				                    <tr>
				                        <td><input type="checkbox"></td>
				                        <td class = "ano">${a.appNo }</td>
				                        <td>${a.appTitle }</td>
				                        <td></td>
				                        <td>${a.empName }</td>
				                        <td>${a.writeDate }</td>
				                        <td>${a.appStatus}</td>
				                    </tr>
				                </c:if>
                    		</c:forEach>
                		</c:otherwise>
                	</c:choose>
                	
                	
                </tbody>

            </table>
            
            <h2>기안진행문서</h2> <br>
            <table class="table table-hover" id="approvalDocList">
                <thead class="thead-dark">
                    <tr>
                        <th><input type="checkbox"></th>
                        <th>문서번호</th>
                        <th>제목</th>
                        <th>첨부파일</th>
                        <th>기안자</th>
                        <th>기안일</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                	<c:choose>
                		<c:when test = "${fn:length(list) eq 0}">
        			    	<tr>
                        		<td><input type="checkbox"></td>
                        		<td colspan = "6" align="center"> 결재할 문서가 없습니다.</td>
                    		</tr>
                		</c:when>
                		
                		<c:otherwise>
                			<c:forEach var ="a" items="${list }">
                				<c:if test="${a.appStatus == '진행' }">
				                    <tr>
				                        <td><input type="checkbox"></td>
				                        <td class = "ano">${a.appNo }</td>
				                        <td>${a.appTitle }</td>
				                        <td></td>
				                        <td>${a.empName }</td>
				                        <td>${a.appDate }</td>
				                        <td>${a.appStatus}</td>
				                    </tr>
				                </c:if>
                    		</c:forEach>
                		</c:otherwise>
                	</c:choose>
                	
                	
                </tbody>
            </table>
            
            
            
            <h2>완료 문서</h2> <br>
            <table class="table table-hover" id="approvalDocList">
                <thead class="thead-dark">
                    <tr>
                        <th><input type="checkbox"></th>
                        <th>문서번호</th>
                        <th>제목</th>
                        <th>첨부파일</th>
                        <th>기안자</th>
                        <th>기안일</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                	<c:choose>
                		<c:when test = "${fn:length(list) eq 0}">
        			    	<tr>
                        		<td><input type="checkbox"></td>
                        		<td colspan = "6" align="center"> 결재할 문서가 없습니다.</td>
                    		</tr>
                		</c:when>
                		
                		<c:otherwise>
                			<c:forEach var ="a" items="${list }">
                				<c:if test="${a.appStatus == '완료' }">
				                    <tr>
				                        <td><input type="checkbox"></td>
				                        <td class = "ano">${a.appNo }</td>
				                        <td>${a.appTitle }</td>
				                        <td></td>
				                        <td>${a.empName }</td>
				                        <td>${a.appDate }</td>
				                        <td>${a.appStatus}</td>
				                    </tr>
				                </c:if>
                    		</c:forEach>
                		</c:otherwise>
                	</c:choose>
                	
                	
                </tbody>
            </table>
            
            <!-- test -->
                        <div class="w3-bar">
            <c:choose>
            	<c:when test="${ fn:length(alist) ne 0 }">
	            	<c:choose>
	            		<c:when test="${ pi.currentPage eq 1 }">
			                <a href="#" class="w3-button" style="display: none;">&laquo;</a>
	            		</c:when>
	            		<c:otherwise>
			                <a href="list.ap?currentPage=${ pi.currentPage - 1 }" class="w3-button">&laquo;</a>
	            		</c:otherwise>
	            	</c:choose>
	            	
	            	<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
		                <a href="list.ap?currentPage=${ p }" class="w3-button">${ p }</a>
	            	</c:forEach>
	            	
	            	<c:choose>
	            		<c:when test="${ pi.currentPage eq pi.maxPage }">
			                <a href="#" class="w3-button" style="display: none;">&raquo;</a>
	            		</c:when>
	            		<c:otherwise>
			                <a href="list.ap?currentPage=${ pi.currentPage + 1 }" class="w3-button">&raquo;</a>
	            		</c:otherwise>
	            	</c:choose>
            	</c:when>
            </c:choose>
            </div>
            
            <!-- 상세보기 페이지로 넘기기 -->
            
			<script>
				$(function(){
					$("#approvalDocList tbody tr").click(function(){
						location.href="detail.ap?ano="+$(this).children(".ano").text();
					})
				})
			
			</script>

        </div>
    </div>
</body>
</html>