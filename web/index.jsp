<%--
    Document   : index
    Created on : 05.04.2017
    Author     : bs
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<div class="row">
    <div class="col-4 indexLeftColimn">
        <p style="font-size: larger"><fmt:message key='greeting'/></p>

        <p><fmt:message key='introText'/></p>
    </div>

    <div class="col-8 indexRightColumn">
        <c:forEach var="category" items="${categories}">
            <div class="categoryBox">
                <a href="category?${category.id}">
                    <span class="categoryLabel"></span>
                    <span class="categoryLabelText"><fmt:message key='${category.name}'/></span>

                    <img src="${initParam.categoryImagePath}${category.name}.jpg"
                         alt="<fmt:message key='${category.name}'/>" class="categoryImage">
                </a>
            </div>
        </c:forEach>
    </div>
</div>

