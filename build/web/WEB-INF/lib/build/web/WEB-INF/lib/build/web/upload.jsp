<%-- 
    Document   : upload
    Created on : 2019-11-26, 21:54:31
    Author     : 52976
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/layui/css/layui.css" rel="stylesheet" type="text/css"/>
        <script src="resources/layui/layui.js" type="text/javascript"></script>
        <script src="resources/js/jquery.js" type="text/javascript"></script>
        <script src="resources/js/ajaxfileupload.js" type="text/javascript"></script>
    </head>
    <body>


        <textarea name="" id="edit" cols="30" rows="10"></textarea>

        <script>
            layui.extend({
                tinymce: '{/}./layui/mods/tinymce/tinymce'
            }).use(['tinymce', 'util', 'layer'], function () {
                var tinymce = layui.tinymce
                var edit = tinymce.render({
                    elem: "#edit"
                    , height: 600
                    , width: '100%'
                });
            });
        </script>

    </body>



</html>
