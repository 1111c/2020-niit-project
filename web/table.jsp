 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>文章类别</title>
        <link href="resources/layui/css/layui.css" rel="stylesheet" type="text/css"/>
        <script src="resources/layui/layui.js" type="text/javascript"></script>
        <script src="resources/js/jquery.js" type="text/javascript"></script>
    </head>
    <body> 
        <form  method="post" action="searchAll.do">
            <table class="layui-hide" id="test"> </table>
            <input type="submit" />
        </form>    
        <script> 
            layui.use(['form', 'layer', 'table'], function () {
                var table = layui.table , form = layui.form, $ = layui.$;
                table.render({
                     elem: '#test'  //绑定table id
                    , url: 'searchAll.do'  //数据请求路径
                    , cellMinWidth: 80
                    ,cols:  [//cols的field字段对应后台po的属性
                            [{
                                    field: 'UName',
                                    width: '10%',
                                    title: '用户名'
                                    //,sort: true
                                }, {
                                    field: 'UPicture',
                                    width: '10%',
                                    title: '头像'
                                    //,sort: true
                                }, {
                                    field: 'UPhone',
                                    width: '13%',
                                    title: '电话'
                                }, {
                                    field: 'UEmail',
                                    width: '12%',
                                    title: '邮箱'
                                }, {
                                    field: 'UBirthday',
                                    width: '10%',
                                    title: '生日',
                                    minWidth: 100
                                }, {
                                    field: 'UGender',
                                    width: '13%',
                                    title: '性别' 
                                }, {
                                    field: 'UPassword',
                                    width: '13%',
                                    title: '密码' 
                                } 
                            ]
                        ]
                    , page: true   //开启分页
                    , limit: 10   //默认十条数据一页
                    //, limits: [10, 20, 30, 50]  //数据分页条
                    //, id: 'testReload'
                });
            });
        </script>
    </body>
</html>
