<%@page import="pers.dhf.exam.util.CurrentUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setAttribute("user", CurrentUtils.getCurrentUser());
%>
<div id="header">
  <nav class="navbar" id="header-navbar">
    <div class="container-fluid">
      <div class="navbar-header" style="padding-left: 15px;">
        <a class="navbar-brand" href="${ctx}/login" style="padding: 3 0 2 0;">
          <img src="${ctx}/static/img/logo.png" />
        </a>
      </div>
      <div class="pull-left" style="padding: 5px 0 5px 10px">
        <ul class="nav navbar-nav">
          <li><a href='${ctx}/exam/show'>在线考试</a></li>
          <%-- <li><a href='${ctx}/exam/show'>在线练习</a></li> --%>
          <li><a href='${ctx}/examresult/show'>我的成绩</a></li>
          <li><a href='${ctx}/exam/wrong/show'>我的错题</a></li>
          <li><a href='${ctx}/resource/all'>资源大全</a></li>
        </ul>
      </div>
      <div class="pull-right" style="padding: 5px 15px 5px 0">
        <ul class="nav navbar-nav">
          <li><a>${user.name}</a></li>
          <li><a>积分：${user.money}</a></li>
          <c:if test="${user.admin}">
          	<li><a href="${ctx}/sys/user/list">管理员页面</a></li>
          </c:if>
          <li><a href="${ctx}/logout">退出登录</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>