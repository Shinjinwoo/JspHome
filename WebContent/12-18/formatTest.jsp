<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*"%>

       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

       <%
       request.setCharacterEncoding("utf-8");
       %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷팅 태그 라이브러리 예제</title>
</head>
<body>
    <h2>fmt의 number 태그를 이용한 숫자 포맷팅 예제</h2>
    <c:set var="price" value="100000000"/>

    <fmt:formatNumber value="${price }" type="number" var="priceNumber"/>

    통화로 표현 : 
    <fmt:formatNumber value="${price }" type="currency" currencySymbol="W" groupingUsed="true"/><br>
	<!-- groupingUsed : 콤마등 기호로 구분 여부를 지정한다. 이속성이 true면 세자리수 마다 , 가 붙음
	     기본값은 treu이다.
	   currency를 사용하면 돈 다위와 액수를 표현할수 있다.
	     심볼은 말그대로 심볼   -->
    퍼센트로 표현 : 
    <fmt:formatNumber value="${price }" type="percent" groupingUsed="false"/><br>
	<!-- type : percent 일시 퍼센트  -->
    일반 숫자 표현 : ${priceNumber }<br>

    <h2>formatDate 예제</h2>
    <c:set var="now" value="<%=new Date() %>"/>

    <fmt:formatDate value="${now }" type="date" dateStyle="full"/><br>
    <fmt:formatDate value="${now }" type="date" dateStyle="short"/><br>
    <fmt:formatDate value="${now }" type="time" /><br>
    <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br>
    <fmt:formatDate value="${now }" pattern="YYYY-MM-DD :hh:mm:ss"/><br>
	<!-- 
		value : 포맷될 날짜를 지정
		type : 포매팅할 타입을 지전한다. date인 경우 날짜만, time인 경우 시간만, both인 경우 모두 지정
		dataStyle : 날자의 출력 형식을 지정한다. DateFormat 클래스의 full,long,medium,shot 등이 지정되어 있다.
		timeStyle : 시간 출력 형식을 지정한다. DateFormatdp 정의된 형식 사용	
	 -->
    <br><br>
    한국 현재 시간 :
    <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br>
    <br><br>
    
      <!-- 둘 다 지정한 국가의 시간을 지정하는 태그 이다. 그러나 <fmt:timeZone> 태그의 
         경우 태그를 열고 닫는 영역 안에서만 적용되는 차이가 있다. -->

    <fmt:timeZone value="America/New York">
        뉴욕 현재 시간 :
        <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br>
    </fmt:timeZone>



</body>
</html>