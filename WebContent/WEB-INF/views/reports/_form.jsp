<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>
        
    </div>
</c:if>
<label for="report_date">日付</label><br />
<input type="date" name="report_date" value="<fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<label for="title">タイトル</label><br />
<input type="text" name="title" value="${report.title}" />
<br /><br />

<label for="commuting">出勤</label><br />
<select name="commuting">
 <option value="0"<c:if test="${report.commuting == 0}"> selected</c:if>>なし</option>
 <option value="1"<c:if test="${report.commuting == 1}"> selected</c:if>>出勤</option>
 <option value="2"<c:if test="${report.commuting == 2}"> selected</c:if>>病欠</option>
 <option value="3"<c:if test="${report.commuting == 3}"> selected</c:if>>出張</option>
</select>
<br /><br />

<label for="commuout">退勤</label><br />
<select name="commuout">
 <option value="0"<c:if test="${report.commuout == 0}"> selected</c:if>>なし</option>
 <option value="1"<c:if test="${report.commuout == 1}"> selected</c:if>>退勤</option>
 <option value="2"<c:if test="${report.commuout == 2}"> selected</c:if>>病欠</option>
 <option value="3"<c:if test="${report.commuout == 3}"> selected</c:if>>出張</option>
</select>
<br /><br />

<label for="content">内容</label><br />
<textarea name="content" rows="10" cols="50">${report.content}</textarea>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>
