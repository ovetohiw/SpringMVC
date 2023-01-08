<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<table>
  <tr>
    <th>Name</th>
    <th>Surname</th>
    <th>Department</th>
    <th>Salary</th>
    <th>Operations</th>
  </tr>

  <c:forEach var="emp" items="${allEmps}">

    <d:url var="updateButton" value="/updateInfo">
      <d:param name="empId" value="${emp.id}"/>
    </d:url>

    <d:url var="deleteButton" value="/deleteInfo">
      <d:param name="empId" value="${emp.id}"/>
    </d:url>
    <tr>
      <td>${emp.name}</td>
      <td>${emp.surname}</td>
      <td>${emp.department}</td>
      <td>${emp.salary}</td>
      <td>
        <input type="button" value="Update"
        onclick="window.location.href = '${updateButton}'">
      </td>
      <td>
        <input type="button" value="Delete"
               onclick="window.location.href = '${deleteButton}'">
      </td>
    </tr>
  </c:forEach>
</table>

<br><br>
<input type="button" value="Add employee"
       onclick="window.location.href = 'addNewEmployee'"/>
</body>
</html>
