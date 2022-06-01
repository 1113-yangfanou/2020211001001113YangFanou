<%--
  Created by IntelliJ IDEA.
  User: 15392
  Date: 2022/6/1
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%%>
<%String path = request.getContextPath();%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<html>
<head>
    <title>Title</title>

    <script>
        function checkNum() {

            var regPos = /^[0-9]+.?[0-9]*/;
            var n1 = document.getElementById("first");
            var n2 = document.getElementById("second");
            if(regPos.test(n1)) {
                alert("First val is not a number");
                form1.first.focus();
                return false;
            }
            if(regPos.test(n2)){
                alert("Second val is not a number");
                form1.second.focus();
                return false;
            }
            return true;
        }
        function checkName() {
            if(form1.name == "") {
                alert("Please Input name");
                form1.name.focus();
                return false;
            }
            return true;
        }
        function add() {
            if(checkNum()) {
                document.form1.action="<%=basePath%>/CalServlet?method=ADD";
                document.form1.onsubmit;
            }
        }
        function sub() {
            if(checkNum()) {
                document.form1.action="<%=basePath%>/CalServlet?method=Sub";
                document.form1.onsubmit;
            }
        }
        function mul() {
            if(checkNum()) {
                document.form1.action="<%=basePath%>/CalServlet?method=Mul";
                document.form1.onsubmit;
            }
        }
        function div() {
            if(checkNum()) {
                document.form1.action="<%=basePath%>/CalServlet?method=Div";
                document.form1.onsubmit;
            }
        }
        function com() {
            document.form1.action="<%=basePath%>/CalServlet?method=other";
            document.form1.onsubmit;
        }
        function reset() {

        }
    </script>
</head>
<body>
<form name="form1" method="post" >
    <%
        String result = request.getParameter("result");
        String length = request.getParameter("length");
    %>
    First val: <input type="text" name="first" id="first" value="${param.first}" > &nbsp; &nbsp; &nbsp; Enter a name: <input type="text" name="name" value="${param.name}">  <br>
    Second val: <input type="text" name="second" id="second" value="${param.second}"> &nbsp; &nbsp; &nbsp; Length: <input type="text" name="length" value="${param.length}"> <br>
    Result: <input type="text" name="result" value="${param.result}"> <br>

    <button onclick="add()">Add</button>
    <button onclick="sub()">Subtract</button>
    <button onclick="mul()">Multiply</button>
    <button onclick="div()">Divide</button>
    <button onclick="com()">Compute Length</button>
    <button onclick="reset()">Reset</button>
</form>

</body>
</html>
