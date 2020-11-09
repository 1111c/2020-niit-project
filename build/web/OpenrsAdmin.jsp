 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OpenrsAdmin</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
    </head>





    <body class="layui-layout-body">
        <div class="layui-layout layui-layout-admin">
            <div class="layui-header">
                <div class="layui-logo">管理员${user.UName}</div>
                <!-- 头部区域（可配合layui已有的水平导航） -->
                <ul class="layui-nav layui-layout-left">
                    <li class="layui-nav-item">
                        <a href="javascript:;">控制台</a>
                        <dl class="layui-nav-child">
                            <dd><a href="index.do">首页</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">其它系统</a>
                        <dl class="layui-nav-child">
                            <dd><a href="">邮件管理</a></dd>
                            <dd><a href="">消息管理</a></dd>
                            <dd><a href="">授权管理</a></dd>
                        </dl>
                    </li>
                </ul>
                <ul class="layui-nav layui-layout-right">
                    <li class="layui-nav-item">
                        <a href="javascript:;"> 
                            <img src="${user.UPicture}" class="layui-nav-img">
                            ${user.UName} 
                        </a> 
                        <dl class="layui-nav-child">
                            <dd><a href="">基本资料</a></dd>
                            <dd><a href="">安全设置</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item"><a href="Login.do">退了</a></li>
                </ul>
            </div>

            <div class="layui-side layui-bg-black">
                <div class="layui-side-scroll">
                    <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                    <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                        <li class="layui-nav-item layui-nav-itemed">
                            <a class="" href="javascript:;">用户信息</a>
                            <dl class="layui-nav-child">
                                <dd ><a href="OA_UserList.jsp" target="iframe">用户列表</a></dd>
                                <dd ><a href="OA_UserSearch.jsp" target="iframe">用户管理</a></dd>
                                <!--<dd><a href="OA_UserUpdate.jsp" target="iframe">修改信息</a></dd>-->
                            </dl>
                        </li>
                        <!--                        <li class="layui-nav-item layui-nav-itemed">
                                                    <a href="javascript:;">中介信息</a>
                                                    <dl class="layui-nav-child">
                                                        <dd><a href="OA_MediationList.jsp" target="iframe">中介列表</a></dd>
                                                        <dd><a href="OA_MediationSearch.jsp" target="iframe">查询信息</a></dd>
                                                        <dd><a href="OA_MediationUpdate.jsp" target="iframe">修改信息</a></dd>
                                                    </dl>
                                                </li>-->
                        <li class="layui-nav-item layui-nav-itemed">
                            <a href="javascript:;">房源信息</a>
                            <dl class="layui-nav-child">

                                <dd><a href="OA_HouseList_Test.jsp" target="iframe">房源列表</a></dd>
                                <!--<dd><a href="OA_HouseList.jsp" target="iframe">房源列表</a></dd>-->
                                <!--<dd><a href="OA_HouseSearch.jsp" target="iframe">查询信息</a></dd>-->
                                <dd><a href="OA_HouseSearch_1.jsp" target="iframe">房源管理</a></dd>
                                <!--<dd><a href="OA_HouseUpdate.jsp" target="iframe">修改信息</a></dd>-->

                            </dl>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="layui-body">
                <!-- 内容主体区域 -->
                <iframe style="width: 100%;height: 100%; border: none;" name="iframe">

                </iframe>
            </div>

            <div class="layui-footer">
                <!-- 底部固定区域 -->
                © layui.com - 底部固定区域
            </div>
        </div>




        <script src="resources/layui/layui.js"></script>
        <script>
            //JavaScript代码区域
            layui.use('element', function () {
                var element = layui.element;

            });
        </script>
    </body>
</html>
