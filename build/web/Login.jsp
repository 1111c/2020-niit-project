<%-- 
    Document   : Login
    Created on : 2019-11-14, 15:11:11
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <style type="text/css">
            img{
                width: auto;
                height: auto;
                max-height: 100%;
                max-width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="layui-container" style="padding-top: 100px;">
            <div class="layui-row">
                <div class="layui-row layui-col-space30">
                    <div class="layui-col-md7">
                        <div class="grid-demo grid-demo-bg1" style="width: 600px">
                            <div class="layui-carousel" id="test1" >
                                <div carousel-item> 
                                    <div style=" text-align: center;"><img src="resources/image/H1.jpg"></div>
                                    <div style=" text-align: center;"><img src="resources/image/H2.jpg"></div>
                                    <div style=" text-align: center;"><img src="resources/image/H3.jpg"></div>
                                    <div style=" text-align: center;"><img src="resources/image/H4.jpg"></div>
                                    <div style=" text-align: center;"><img src="resources/image/H5.jpg"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md5">
                        <div class="grid-demo">
                            <fieldset class="layui-elem-field layui-field-title">
                                <legend>登录</legend>
                            </fieldset>
                            <div class="layui-tab layui-tab-card">
                                <ul class="layui-tab-title">
                                    <li class="layui-this">普通登录</li>
                                    <li>管理员登录</li>
                                </ul>
                                <div class="layui-tab-content">
                                    <div class="layui-tab-item layui-show">
                                        <form class="layui-form"  method="post" action="login.do">
                                            
                                            <input type="hidden"   name ="status" value="普通用户"  />
                                            
                                            <div class="layui-form-item">
                                                    <input type="text" name="userName" required  lay-verify="required" placeholder="你的昵称/电话/邮箱" autocomplete="off" class="layui-input">
                                            </div>
                                            <div class="layui-form-item">
                                                    <input type="password" name="userPsw" required lay-verify="required" placeholder="密码" autocomplete="off" class="layui-input">
                                            </div>
                                            <div class="layui-form-item">
                                                <div class="layui-input-block">
                                                    <button class="layui-btn" lay-submit lay-filter="formDemo" style=" width: 120px; margin-left: -25px;">登录</button>
                                                    <button class="layui-btn" style=" width: 120px; margin-left: 25px;">注册</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                     
                                    <div class="layui-tab-item">
                                        <form class="layui-form" method="post" action="login.do">
                                            <input type="hidden"   name ="status" value="管理员"  />
                                            <div class="layui-form-item">
                                                    <input type="text" name="userName" required  lay-verify="required" placeholder="你的编号" autocomplete="off" class="layui-input">
                                            </div>
                                            <div class="layui-form-item">
                                                    <input type="password" name="userPsw" required lay-verify="required" placeholder="密码" autocomplete="off" class="layui-input">
                                            </div>
                                            <div class="layui-form-item" style=" text-align: center">
                                                    <button class="layui-btn" lay-submit lay-filter="formDemo" style=" width: 150px;">登录</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        <!--------------------------------------------------------script------------------------------------------------------------------------->
        <script src="resources/layui/layui.js"></script>
        <script><!--选项卡script-->
layui.use('element', function(){
  var element = layui.element;
});
        </script><!--选项卡script-->
        <script>
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#test1'
    ,width: '100%' //设置容器宽度
    ,arrow: 'always' //始终显示箭头
    //,anim: 'updown' //切换动画方式
  });
});
</script>
<!--<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>-->
    </body>
</html>
