
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <script src="resources/layui/layui.js" type="text/javascript"></script>
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>
    </head>
    <body>
        <ul class="layui-nav layui-bg-cyan" >

            <% if (request.getSession().getAttribute("user") != null) {
            %> 
            <li class="layui-nav-item" lay-unselect=""  style="float: right">
                <a href="signout.do">注销</a> 
            </li> 
            <li class="layui-nav-item" lay-unselect=""  style="float: right">
                <a href="<%=request.getSession().getAttribute("to")%>">欢迎<%=request.getSession().getAttribute("UName")%></a> 
            </li> 
            <%}%>



            <% if (request.getSession().getAttribute("user") == null) {
            %>
            <li class="layui-nav-item" lay-unselect=""  style="float: right">
                <a href="Login.jsp">登录</a> 
            </li>  



            <li class="layui-nav-item" lay-unselect=""  style="float: right">
                <a href="Register.jsp">注册</a> 
            </li>
            <%}%>

            <li class="layui-nav-item">
                <a href="index.do">首页</a>
            </li>


            <li class="layui-nav-item">
                <a href="searchHouse.do">卖房</a>
            </li>
            <li class="layui-nav-item" >
                <a href="searchHouse.do">租房</a>
            </li>
          
            <li class="layui-nav-item" >
                <a href="javascript:;">指南</a>
                <dl class="layui-nav-child">
                    <dd><a href="time.do">时间线</a></dd>
                    <dd><a href="">百科</a></dd>

                </dl>
            </li>
            <li class="layui-nav-item"><a href="">房价</a>
            </li>

            <li class="layui-nav-item layui-this"  >
                <a href="javascript:;">工具</a> 
                <dl class="layui-nav-child">
                    <dd><a href="houseprice.do">房价评估</a></dd>
                    <dd><a href="ShowHouse.do">发布房源</a></dd> 
                    <dd><a href="time.do">layui</a></dd> 
                    
                </dl>
            </li>
        </ul>

            
            
             <script>
        layui.use(['carousel', 'form'], function () {
            var carousel = layui.carousel
                    , form = layui.form;

            //常规轮播
            carousel.render({
                elem: '#test1'
                , arrow: 'always'
            });

            //改变下时间间隔、动画类型、高度
            carousel.render({
                elem: '#test2'
                , interval: 1800
                , anim: 'fade'
                , height: '120px'
            });

            //设定各种参数
            var ins3 = carousel.render({
                elem: '#test3'
            });
            //图片轮播
            carousel.render({
                elem: '#test10'
                , width: '1300px'
                , height: '200px'
                , interval: 5000
            });

            //事件
            carousel.on('change(test4)', function (res) {
                console.log(res)
            });

            var $ = layui.$, active = {
                set: function (othis) {
                    var THIS = 'layui-bg-normal'
                            , key = othis.data('key')
                            , options = {};

                    othis.css('background-color', '#5FB878').siblings().removeAttr('style');
                    options[key] = othis.data('value');
                    ins3.reload(options);
                }
            };

            //监听开关
            form.on('switch(autoplay)', function () {
                ins3.reload({
                    autoplay: this.checked
                });
            });

            $('.demoSet').on('keyup', function () {
                var value = this.value
                        , options = {};
                if (!/^\d+$/.test(value))
                    return;

                options[this.name] = value;
                ins3.reload(options);
            });

            //其它示例
            $('.demoTest .layui-btn').on('click', function () {
                var othis = $(this), type = othis.data('type');
                active[type] ? active[type].call(this, othis) : '';
            });
        });
    </script>
            
        <script type="text/javascript">
            layui.use(['element'], function () {


            })
        </script>

    </body>
</html>
