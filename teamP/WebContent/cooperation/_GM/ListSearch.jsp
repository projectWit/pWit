<?xml version="1.0" encoding="UTF-8"?><%@page import="java.util.ArrayList"%><%@page import="mem.wit.gm.LecDTO"%><%@ page language="java" contentType="text/xml; charset=UTF-8"
   pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<codes> <c:forEach var="item" items="${list}" >
   <lecId>${item.lecId }</lecId>
   <lecName>${item.lecName }</lecName>
   <sName>${item.sName }</sName>
   <tName>${item.tName }</tName>
   <place>${item.place }</place>
   <eKName>${item.eKName }</eKName>
   <eTel>${item.eTel }</eTel>
   <sSDay>${item.sSDay.substring(0,10) }</sSDay>
   <sEDay>${item.sEDay.substring(0,10) }</sEDay>
   <sNum>${item.sNum }</sNum>
</c:forEach></codes>