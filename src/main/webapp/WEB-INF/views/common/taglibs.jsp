<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxPlugin" value="${pageContext.request.contextPath}/plugins"/>
<c:set var="allCtx" value="${pageContext.request.scheme}${'://'}${pageContext.request.serverName}${':'}${pageContext.request.serverPort}${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
//全局URL变量
var basePath = "${ctx}";
var allPath = "${allCtx}";
</script>