<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isThreadSafe="false"%>
<%@page info="표현식, 선언문에 대한 예제"%>
<!-- 표현식,선언문에 대한 예제 -->
<!DOCTYPE html>
<%!
	//선언문->현재 jsp페이지 전체에서 위치 상관없이 사용 가능한 변수,메서드 필요로 하는 경우 사용되는 구문
	String name="홍길동"; //전역변수의 성격(static이 있는 느낌)
	 public String getName(){ //일반메서드 
		return name;
	}
%>
name의 값은? <%=name%><p>
getName() 호출? <%=getName()%> <!-- 일반메서드인데 느낌은 정적메서드 느낌 -->
<html>
<head>
<meta charset="UTF-8">
<title>Jsp 세번째 예제(표현식 활용, 선언문의 메서드 작성)</title>
</head>
<body>
	<%
		float f=2.3f; //double
		int i=Math.round(f); //반올림 0.3 -> 2
		//import 할 필요X Math(자동 인식).Date();
		//java.util.Date d=new java.util.Date();
		Date d = new Date();
		out.println("d의 값은?="+d); //d.toString() (날짜 -> 문자)
	%>
	<hr><p>
	정수 f의 반올림값은? <%=i%><p>
	현재의 날짜와 시간은? <%=d.toString()%><br> <!-- 객체명.호출할 메서드명 -->
</body>
</html>