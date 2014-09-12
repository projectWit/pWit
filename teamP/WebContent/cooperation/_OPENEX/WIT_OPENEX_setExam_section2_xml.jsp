<?xml version="1.0" encoding="UTF-8"?><%@page
	import="java.util.ArrayList"%> 
<%@page import="mem.wit.openex.OsetExamQueDTO"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<codes> <c:forEach var="item" items="${selectQUEList}">
	<QUE_USERSUBJECT>${item.QUE_USERSUBJECT}</QUE_USERSUBJECT>
	<QUE_SCORE>${item.QUE_SCORE}</QUE_SCORE>
	<QUE_CONTENT>${item.QUE_CONTENT}</QUE_CONTENT>
	<QUE_EXAMPLE1>${item.QUE_EXAMPLE1}</QUE_EXAMPLE1>
	<QUE_EXAMPLE2>${item.QUE_EXAMPLE2}</QUE_EXAMPLE2>
	<QUE_EXAMPLE3>${item.QUE_EXAMPLE3}</QUE_EXAMPLE3>
	<QUE_EXAMPLE4>${item.QUE_EXAMPLE4}</QUE_EXAMPLE4>
	<QUE_EXAMPLE5>${item.QUE_EXAMPLE5}</QUE_EXAMPLE5>
	<QUE_RIGHTANSWER>${item.QUE_RIGHTANSWER}</QUE_RIGHTANSWER>
</c:forEach></codes>