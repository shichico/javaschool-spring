<%@ page import="com.springapp.domain_objects.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.springapp.domain_objects.Product" %>
<%--
  Created by IntelliJ IDEA.
  AuthUser: Shichirin
  Date: 03.02.14
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="backend-header.jsp" %>
<div id="content">
    <div id="menu">
        <ul>
            <li><a href="/backend/category">Categories</a></li>
            <li><a href="/backend/products">Products</a></li>
        </ul>
    </div>
    <div class="inner-content">
        <div id="sub-menu"><a href="/backend/category/add">Add</a></div>
        <form method="post" name="categories-list" action="">
            <table>
                <thead>
                <tr>
                    <td style="width: 300px;">Name</td>
                    <td style="width: 200px">Action</td>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("products");
                    for (int i = 0; i < products.size(); i++) {
                %>

                <tr>
                    <td><%=products.get(i).getName()%>
                    </td>
                </tr>
                <%}%>
                </tbody>
            </table>
        </form>
    </div>
</div>
<div id="footer"></div>
</body>
</html>