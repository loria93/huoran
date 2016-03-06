<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${pageContext.request.contextPath eq '/'}">
<c:set var="ctx" value="" />
</c:if>
<c:if test="${pageContext.request.contextPath ne '/'}">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
</c:if>
<c:set var="basectx"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${ctx}/" />
