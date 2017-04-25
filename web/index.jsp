<%--
    Document   : index
    Created on : 05.04.2017
    Author     : bs
--%>
<%-- Set session-scoped variable to track the view user is coming from.
     This is used by the language mechanism in the Controller so that
     users view the same page when switching between English and Polish. --%>
<c:set var='view' value='/index' scope='session' />

<div class="row">
    <div class="col-4 indexLeftColimn">
    <div id="welcomeText">
        <p style="font-size: larger"><fmt:message key='greeting' /></p>

        <p><fmt:message key='introText' /></p>
    </div>

    </div>

    <div class="col-8 indexRightColumn">
    <c:forEach var="category" items="${categories}">
        <div class="categoryBox">
            <a href="<c:url value='category?${category.id}'/>">
                <span class="categoryLabel"></span>
                <span class="categoryLabelText"><fmt:message key='${category.name}'/></span>

                <img src="${initParam.categoryImagePath}${category.name}.jpg"
                     alt="<fmt:message key='${category.name}'/>" class="categoryImage">
            </a>
        </div>
    </c:forEach>
    </div>
</div>

