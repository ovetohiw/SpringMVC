<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>

<form:form action="saveEmployee" modelAttribute="employee">

  <form:hidden path="id"/>

  Name <form:input path="name"/>
  <br><br>
  Surname <form:input path="surname"/>
  <br><br>
  Department <form:input path="department"/>
  <br><br>
  Salary <form:input path="salary"/>
  <br><br>

  <tr>
    <th><input type="submit" value="OK!"></th>
    <th><input type="button" value="Back"
               onclick="window.location.href = '/MVCProject/'"></th>
  </tr>
</form:form>

</body>
</html>
