<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>id ： ${task.id }のタスク詳細ページ</h2>

        <table>
            <tr>
                <th>ID</th>
                <th>内容</th>
                <th>作成日時</th>
                <th>更新日時</th>
            </tr>
            <tr>
                <td><c:out value="${task.id }" /></td>
                <td><c:out value="${task.content }" /></td>
                <td><fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td><fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>

            </tr>
        </table>

        <p><a href="${pageContext.request.contextPath }/index">一覧に戻る</a></p>
        <p><a href="${pageContext.request.contextPath }/edit?id=${task.id}">このメッセージを編集する</a></p>
    </c:param>
</c:import>