<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <tr>
        <td>id</td>
        <td>이메일</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>생년월일</td>
        <td>전화번호</td>
        <td>수정</td>
        <td>삭제</td>
    </tr>
    <c:forEach items="${memberLsit}" var="member">
    <tr>
        <td>
            <a href="/detail?id=${member.id}">${member.id}</a>
        </td>

        <td>${member.memberEmail}</td>
        <td>${member.memberPassword}</td>
        <td>${member.memberName}</td>
        <td>${member.memberBirth}</td>
        <td>${member.memberMobile}</td>

        <td>
            <button onclick="update_fn('${member.id}')">수정</button>
        </td>
        <td>
            <button onclick="delete_fn('${member.id}')">삭제</button>
        </td>
    </tr>
    </c:forEach>
</body>
<script>
    const update_fn = (id) => {
        location.href="/update?id="+id;
    }

    const delete_fn = (id) => {
        location.href="/delete?id="+id;
    }
</script>
</html>
