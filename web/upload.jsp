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

        <form class="layui-form" action="upload.do" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名:</label>
                <div class="layui-input-block">
                    <input type="text" name="username" lay-verify="username"   placeholder="填写用户名" autocomplete="off" class="layui-input username">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">密码:</label>
                <div class="layui-input-block">
                    <input type="text" name="password" lay-verify="password"  placeholder="请填写6到12位密码" autocomplete="off" class="layui-input password">

                </div>

            </div>
            <div class="layui-form-item">
                <label class="layui-form-label ">性别:</label>
                <div class="layui-input-block">
                    <input type="radio" name="gender" value="man" title="男" checked="">
                    <input type="radio" name="gender" value="woman" title="女">

                </div>
            </div>
            <!--************这里是上传图片的代码***************-->
            <!--************这里添加的隐藏的输入框，用来传递images的参数***************-->
            <input type="hidden" name="images" class="image">
            <div class="layui-form-item">
                <label class="layui-form-label ">照片:</label>
                <div class="layui-upload">
                    <button type="button" class="layui-btn" id="test1">上传图片</button>
                    <div class="layui-upload-list">
                        <img class="layui-upload-img" id="demo1">
                        <p id="demoText"></p>
                    </div>
                </div>
            </div>
            <!--************上面里是上传图片的代码***************-->

            <br>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-radius layui-btn-normal" lay-submit="" lay-filter="demo1">修改</button>
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    <button type="reset" class="layui-btn layui-btn-radius  layui-btn-danger">重置</button>
                </div>
            </div>
            <br>
        </form>


        <script>
            layui.use('upload', function () {
                var $ = layui.jquery , upload = layui.upload;

                //普通图片上传
                var uploadInst = upload.render({
                    elem: '#test1'
                    , url: 'upload.do'
                    , accept: 'images'
                    , size: 50000
                    , before: function (obj) {

                        obj.preview(function (index, file, result) {

                            $('#demo1').attr('src', result);
                        });
                    }
                    , done: function (res) {
                        //如果上传失败
                        if (res.code > 0) {
                            return layer.msg('上传失败');
                        }
                        //上传成功
                        var demoText = $('#demoText');
                        demoText.html('<span style="color: #4cae4c;">上传成功</span>');

                        var fileupload = $(".image");
                        fileupload.attr("value", res.data.src);
                        console.log(fileupload.attr("value"));
                    }
                    , error: function () {
                        //演示失败状态，并实现重传
                        var demoText = $('#demoText');
                        demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                        demoText.find('.demo-reload').on('click', function () {
                            uploadInst.upload();
                        });
                    }
                });


            });
        </script>


    </body>



</html>
