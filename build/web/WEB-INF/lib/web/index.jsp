
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>项目主页</title>

        <link rel="stylesheet" href="resources/layui/css/layui.css"> 
        <script src="resources/js/jquery.js" type="text/javascript"></script>
        <style>

            div.background{
                width: 100%;
                height: 640px;
                background: url(resources/image/背景.jpg) no-repeat ;
                border: 0;
            }

            div.transbox
            {
                width: 900px;
                height: 110px;
                margin:30px;
                background-color: #ffffff;
                border: 1px solid black;
                /* for IE */
                filter:alpha(opacity=60);
                /* CSS3 standard */
                margin: auto;

            }



        </style>
    </head>
    <body>


        <ul class="layui-nav"  style=" opacity: 0.8;border:none">

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
            
            <!--            <li class="layui-nav-item" lay-unselect=""  style="float: right">
                            <a href="Login.do">登录</a>
            
                        </li> 
                       <li class="layui-nav-item" lay-unselect=""  style="float: right">
                        <a href="Register.do">注册</a>-->

        </li>
        <li class="layui-nav-item layui-this" style="float: right">
            <a href="javascript:;">工具</a> 
            <dl class="layui-nav-child">
                <dd><a href="houseprice.do">房价评估</a></dd>
                <dd><a href="House.do">发布房源</a></dd> 
            </dl>
        </li>
        <li class="layui-nav-item"style="float: right"><a href="">房价</a></li>
        <li class="layui-nav-item" style="float: right">
            <a href="javascript:;">指南</a>
            <dl class="layui-nav-child">
                <dd><a href="">问答</a></dd>
                <dd><a href="">百科</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item" style="float: right">
            <a href="">经纪人</a></li>
        <li class="layui-nav-item"style="float: right">
            <a href="">小区</a>
        </li>
        <li class="layui-nav-item" style="float: right">
            <a href="">商务办公</a></li>
        <li class="layui-nav-item"style="float: right">
            <a href="">海外</a>
        </li>
        <li class="layui-nav-item" style="float: right">
            <a href="">租房</a></li>
        <li class="layui-nav-item"style="float: right">
            <a href="">新房</a>
        </li>
        <li class="layui-nav-item"style="float: right">
            <a href="">二手房</a>
        </li>

    </ul>



    <div class="background">
        <br/> 

        <div class="text" >

            <p style=" color: #ffffff; text-align: center;font-size: 60px;margin-top: 170px">连接每个家的故事</p>
            <br/>
        </div>

        <div class="transbox" style=" margin-top: 40px">

            <div class="layui-tab" >
                <ul class="layui-tab-title">
                    <li class="layui-this">找二手房</li>
                    <li>找新房</li>
                    <li>找租房</li>
                    <li>找小区</li>
                    <li>搜问答</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <table border="0">
                            <tr>
                                <td><input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入区域、商圈或小区名开始找房" class="layui-input" style="width:700px"></td>
                                <td><button type="button" id="to" onclick="toSearch()" class="layui-btn">开始找房</button></td>
                            </tr>
                        </table>

                    </div>
                    <div class="layui-tab-item">
                        <table border="0">
                            <tr>
                                <td><input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入楼盘名称开始找房" class="layui-input" style="width:700px"></td>
                                <td><button type="button" id="to" onclick="toSearch()"  class="layui-btn"><a href="searchHouse">开始找房</a></button></td>
                            </tr>
                        </table>
                    </div>
                    <div class="layui-tab-item">
                        <table border="0">
                            <tr>
                                <td><input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入区域、商圈或小区名开始找房" class="layui-input" style="width:700px"></td>
                                <td><button type="button" id="to" onclick="toSearch()"   class="layui-btn">开始找房</button></td>
                            </tr>
                        </table>
                    </div>
                    <div class="layui-tab-item">
                        <table border="0">
                            <tr>
                                <td><input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入小区名开始查找小区" class="layui-input" style="width:700px"></td>
                                <td><button type="button" id="to" onclick="toSearch()" class="layui-btn">开始找房</button></td>
                            </tr>
                        </table>
                    </div>
                    <div class="layui-tab-item">
                        <table border="0">
                            <tr>
                                <td><input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="房产知识有疑问？来搜搜看吧~" class="layui-input" style="width:700px"></td>
                                <td><button type="button" id="to"  onclick="toSearch()"  class="layui-btn">开始找房</button></td>
                            </tr>
                        </table>
                    </div>
                </div>

            </div>

        </div>


    </div> 
    <div classs="image">

        <table class="layui-table" lay-even lay-skin="nob" lay-size="lg">
            <colgroup>
                <col width="300">
                <col width="300">
                <col width="300">
            </colgroup>
            <thead>
                <tr>
                    <th><a href=""> <img src="resources/image/找二手房.png" style="margin-left: 150px"></a></th>
                    <th><a href=""> <img src="resources/image/房屋估价.png" style="margin-left: 150px"></a></th>
                    <th><a href=""> <img src="resources/image/地图找房.png" style="margin-left: 150px"></a></th>
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <td><b style="margin-left: 170px">找二手房</b></td>
                    <td><b style="margin-left: 170px">房屋估价</b></td>
                    <td><b style="margin-left: 170px">地图找房</b></td>

                </tr>
                <tr>
                    <td><p style="margin-left: 80px">真实二手房源，承诺真实在售  所见即真</p></td>
                    <td><p style="margin-left: 80px">基于海量成交数据，帮您合理定价预估市值</p></td>
                    <td><p style="margin-left: 80px">为您精准定位，位置周边配置一览无余</p></td>
                </tr>

            </tbody>
        </table> 

    </div> 

    <div class="house1" style=" margin-top: 40px">
        <fieldset class="layui-elem-field layui-field-title">
            <legend style="font-size: 40px"><b>二手好房</b>&nbsp;&nbsp;&nbsp;为你而选</legend>
            <legend  style="font-size: 15px">好房源那么多，我们为你精选，我们会越来越懂你
                <p style="float: right">
                    <a href="#">更多</a>
                </p>
            </legend>
        </fieldset>
        <div class="Himg">

            <table border="0" style="margin: 0px auto">
                <tr>
                    <td>
                        <a href="ShowHouse_1.jsp" > 
                            <img src="resources/image/I1.png" style="width:317px;height: 346px;margin-left: 70x;">
                        </a>
                    </td>
                    <td>
                        <a href="ShowHouse_2.jsp" > 
                            <img src="resources/image/I2.png" style="width:317px;height: 346px;margin-left: 70px">
                        </a>
                    </td>
                    <td>
                        <a href="ShowHouse_3.jsp" > 
                            <img src="resources/image/I3.png" style="width:317px;height: 346px;margin-left: 70px">
                        </a>
                    </td>
                    <td>
                        <a href="ShowHouse_4.jsp" > 
                            <img src="resources/image/I4.png" style="width:317px;height: 346px;margin-left: 70px">
                        </a>
                    </td>
                </tr>
            </table> 
        </div>

        <div class="house2" style=" margin-top: 40px">
            <fieldset class="layui-elem-field layui-field-title">
                <legend style="font-size: 40px"><b>小区</b>&nbsp;&nbsp;&nbsp;为您推荐</legend>
                <legend  style="font-size: 15px">纵览小区，恋上这座城
                    <p style="float: right"><a href="#">更多</a></p>
                </legend>
            </fieldset>
            <div class="Himg2">

                <table border="0" style="margin: 0px auto">
                    <tr>
                        <td><img src="resources/image/community1.png" style="width:420px;height: 312px;margin-left: 150x;background-size: cover"></td>
                        <td><img src="resources/image/community2.png" style="width:420px;height: 312px;margin-left: 150px;background-size: cover"></td>
                        <td><img src="resources/image/community3.png" style="width:420px;height: 312px;margin-left: 150px;background-size: cover"></td>

                    </tr>
                </table>
            </div>

        </div>

    </div>
    <br/>
    <br/>
    <br/>

    <div class="layui-main layui-carousel" id="test10">
        <div carousel-item="">
            <div><img src="resources/image/bottom1.png" ></div>
            <div><img src="resources/image/bottom2.png" ></div>
            <div><img src="resources/image/bottom3.png" ></div>
            <div><img src="resources/image/bottom4.png" ></div>
            <div><img src="resources/image/bottom5.png" ></div>

        </div>
    </div>



    <div class="footer" style="margin-bottom: 200px;margin-top: 100px;text-align: center">  
        <b>版权所有</b>
    </div>


    <script src="resources/layui/layui.js"></script>
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

    
    <script>
             
            function toSearch() { 
                 window.location.href = "SearchDemo.do";
            }   
           
   </script>       


    
    
</body>
</html> 