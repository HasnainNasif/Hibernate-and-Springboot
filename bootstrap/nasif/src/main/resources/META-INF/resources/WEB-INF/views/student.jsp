<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <link type="text/css" rel="stylesheet" href="<c:url value="/styles/bootstrap.min.css"/>" />
</head>
<body>
    <h1> Student Form</h1>
    <form:form commandName="student" method="post">
    <table class="table">
        <tbody>
            <tr>
                <td>1</td>
                <td>Name: </td>
                <td><form:input path="name" cssClass="form-control"/></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Age: </td>
                <td><form:input path="age" cssClass="form-control"/></td>
            </tr>
            <tr>
                <td>3</td>
                <td>RollNo: </td>
                <td><form:input path="rolNo" cssClass="form-control"/></td>
            </tr>

            <tr>
                <td>3</td>
                <td>Occupation: </td>
                <td><select class="form-control">
                    <option value="0">Select any</option>
                    <option value="1">Business</option>
                    <option value="2">Private Job</option>
                    <option value="3">Govt. Service</option>
                    <option value="4">Broker</option>
                </select></td>
            </tr>
            <tr>
                <td colspan="3"><input type="submit" class="btn btn-danger btn-xs"></td>
            </tr>
        </tbody>
    </table>
    </form:form>
</body>

</html>