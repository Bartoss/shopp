<%--
    Document   : index
    Created on : 05.04.2017
    Author     : bs
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<div class="row">
    <div class="col-4 welcomeText">
        <p style="font-size: larger">Welcome to the online home of the Affable Bean Green Grocer.</p>

        <p>Enjoy browsing and learning more about our unique home delivery
            service bringing you fresh organic produce, dairy, meats, breads
            and other delicious and healthy items to your doorstep.</p>
    </div>

    <div class="col-8 categories">
        <c:forEach var="category" items="${categories}">
            <div class="categoryBox">
                <a href="category?${category.id}">
                    <span class="categoryLabel"></span>
                    <span class="categoryLabelText">${category.name}</span>

                    <img src="${initParam.categoryImagePath}${category.name}.jpg"
                         alt="${category.name}" class="categoryImage">
                </a>
            </div>
        </c:forEach>
    </div>
</div>

