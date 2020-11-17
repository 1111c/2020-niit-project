 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/layui/css/layui.css" rel="stylesheet" type="text/css"/>
        <script src="resources/layui/layui.js" type="text/javascript"></script>
        
        
         <style>
        body {
            background-color: #0A7189;
            color: #fff;
            font: 100% "Lato", sans-serif;
            font-size: 1.8rem;
            font-weight: 300;
        }

        a {
            color: #75C6D9;
            text-decoration: none;
        }

        h3 {
            margin-bottom: 1%;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
            line-height: 50px;
        }

        li a:hover {
            color: #fff;
        }

        .center {
            height:800px;
            padding-top: 100px;
            text-align: center;
        }
        /* Search Bar Styling */

        form>* {
            vertical-align: middle;
        }



        .header {
            font-size:60px;
            font-weight: 700;
        
            text-shadow: 0px 3px 0px #7f8c8d;
        }
        /* Error Styling */

        .error {
           
            font-size:40px;
            text-shadow: 0px 3px 0px #7f8c8d;
            font-weight: 100;
        }
        </style>
        
    </head> 
  

<body>
    <%@include file="Header.jsp"%>
       <section class="center">
            <article>
                <div class="header">
                    404</div>
                <div class="error">
                    ERROR</div>
            </article>
            <article>
                  你要找的页面不见了...
            </article>
           
            <article>
                <h3>
               我们的建议</h3>
                <ul>
                    <li><a href="index.do">返回首页</a></li>
                </ul><br /><br />
            </article>
        </section>
    
</body>
</html>
