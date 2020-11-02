<%-- 
    Document   : Demo
    Created on : 2019-11-27, 21:38:13
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
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>
    </head>
    <body>
        <!--社区用户数据分页显示-->
         
        
        <div  style="width: 95%;margin: 0 auto;">
            <table   id="user_info_manager" lay-filter="test"></table>
        </div> 

        <script>
                /*社区用户数据分页显示*/
                layui.use('table', function () {
                    var table = layui.table;

                    table.render({
                        elem: '#user_info_manager', //表单名称
                        height: 'full-50',
                        url: 'searchAll.do', //请求地址
                        page: true,
                        loading: true,
                        text: {
                            none: '暂无相关数据'
                        },
                        cellMinWidth: 80,
                        cols: [//cols的field字段对应后台po的属性
                            [{
                                    field: 'UName',
                                    width: '10%',
                                    title: '用户名' 
                                    //sort: true
                                }, {
                                    field: 'UPicture',
                                    width: '10%',
                                    title: '头像' 
                                    //sort: true
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
                                    title: '性别',
                                    templet: '#createTime'
                                }, {
                                    field: 'UPassword',
                                    width: '13%',
                                    title: '密码',
                                    templet: '#updateTime'
                                } 
                            ]
                        ],
                        request: {
                            pageName: 'page',
                            limitName: 'size'
                        },
                        limit: 10,
                        limits: [10, 20, 30, 40, 50]
                    });


                });
 


        </script> 


    </body>
</html>
