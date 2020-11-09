
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <script src="resources/js/jquery.js" type="text/javascript"></script>
   
    </head>


    <body>
        <div class="layui-container" style="padding-top: 20px;">
            <div class="layui-row">
                <div class="layui-tab layui-tab-card">
                    <ul class="layui-tab-title">
                        <li class="layui-this">用户注册</li>
                        <li>中介注册</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show" style="">
                            <form class="layui-form" action="register.do">

                                <input type="hidden" name="Ustatus" value="用户" /> 
                                <div class="layui-form-item">
                                    <label class="layui-form-label">用户昵称</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="UName" required  lay-verify="required" placeholder="请输入用户昵称" autocomplete="off" class="layui-input"/>
                                    </div>
                                </div>
 

                                <input type="hidden" name="UPicture" class="image">
                                <div class="layui-form-item">
                                    <label class="layui-form-label ">照片:</label>
                                    <div class="layui-upload">
                                       <div class="layui-upload-list">
                                            <img class="layui-upload-img" width="100px" height="100px" id="demo1upload">
                                            <p id="demoTextupload"></p>
                                        </div>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <button type="button" class="layui-btn" id="test1upload">上传图片</button>
                                        
                                    </div>
                                </div>

                                <div class="layui-form-item">
                                    <label class="layui-form-label">电话号码</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="UPhone" required  lay-verify="required" placeholder="请输入电话号码" autocomplete="off" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">电子邮件</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="UEmail" required  lay-verify="required" placeholder="请输入电子邮件" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-inline">
                                        <label class="layui-form-label">出生日期</label>
                                        <div class="layui-input-inline">
                                            <input type="text"  name="UBirthday"  class="layui-input" id="test1" placeholder="yyyy-MM-dd">
                                        </div>
                                    </div> 
                                </div>


                                <div class="layui-form-item">
                                    <label class="layui-form-label">性别</label>
                                    <div class="layui-input-block">
                                        <input type="radio" name="UGender" value="男" title="男">
                                        <input type="radio" name="UGender" value="女" title="女" checked>
                                    </div>
                                </div>
                                
                                
                                <div class="layui-form-item">
                                    <label class="layui-form-label">密码</label>
                                    <div class="layui-input-inline">
                                        <input type="password" name="UPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                    </div>
                                </div>

                                <div class="layui-form-item">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-submit lay-filter="formDemo">用户提交</button>
                                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="layui-tab-item"> 
                            <form class="layui-form" action="register.do">
                                 <input type="hidden" name="Ustatus" value="中介" /> 
                                <div class="layui-form-item">
                                    <label class="layui-form-label">中介昵称</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="UName" required  lay-verify="required" placeholder="请输入中介昵称" autocomplete="off" class="layui-input">
                                    </div>
                                </div>

                                <input type="hidden" name="UPicture" class="image">
                                <div class="layui-form-item">
                                    <label class="layui-form-label ">照片:</label>
                                    <div class="layui-upload">
                                       <div class="layui-upload-list">
                                            <img class="layui-upload-img" width="100px" height="100px" id="demoupload2">
                                            <p id="demoTextupload2"></p>
                                       </div>
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                       <button type="button" class="layui-btn" id="test2upload">上传图片</button>
                                        
                                    </div>
                                </div>


                                <div class="layui-form-item">
                                    <label class="layui-form-label">电话号码</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="UPhone" required  lay-verify="required" placeholder="请输入电话号码" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">电子邮件</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="UEmail" required  lay-verify="required" placeholder="请输入电子邮件" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-inline">
                                        <label class="layui-form-label">出生日期</label>
                                        <div class="layui-input-inline">
                                            <input type="text"  name="UBirthday" class="layui-input" id="test2" placeholder="yyyy-MM-dd">
                                        </div>
                                    </div> 
                                </div>


                                <div class="layui-form-item">
                                    <label class="layui-form-label">性别</label>
                                    <div class="layui-input-block">
                                        <input type="radio" name="UGender" value="男" title="男">
                                        <input type="radio" name="UGender" value="女" title="女" checked>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">密码</label>
                                    <div class="layui-input-inline">
                                        <input type="password" name="UPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                    </div>
                                </div>

                                <div class="layui-form-item">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-submit lay-filter="formDemo">中介提交</button>
                                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <script src="resources/layui/layui.js"></script> 
        <script>
            layui.use('element', function ( ) {
                var element = layui.element;
            });
        </script> 


        <script>
            layui.use('laydate', function () {
                var laydate = layui.laydate;

                //常规用法
                laydate.render({
                    elem: '#test1'
                });
            });
        </script>
        <script>
            layui.use('laydate', function () {
                var laydate = layui.laydate;

                //常规用法
                laydate.render({
                    elem: '#test2'
                });
            });
        </script> 

        <script>
            //Demo
            layui.use('form', function () {
                var form = layui.form;
                form.on('submit(formDemo)', function (data) {
                    layer.msg(JSON.stringify(data.field));
                });
            });
        </script>

        <script>
            layui.use('upload', function () {
                var $ = layui.jquery, upload = layui.upload;

                //普通图片上传
                var uploadInst = upload.render({
                    elem: '#test1upload'
                    , url: 'upload.do'
                    , accept: 'images'
                    , size: 50000
                    , before: function (obj) {

                        obj.preview(function (index, file, result) {

                            $('#demo1upload').attr('src', result);
                        });
                    }
                    , done: function (res) {
                        //如果上传失败
                        if (res.code > 0) {
                            return layer.msg('上传失败');
                        }
                        //上传成功
                        var demoText = $('#demoTextupload');
                        demoText.html('<span style="color: #4cae4c;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;上传成功</span>');

                        var fileupload = $(".image");
                        fileupload.attr("value", res.data.src);
                        console.log(fileupload.attr("value"));
                    }
                    , error: function () {
                        //演示失败状态，并实现重传
                        var demoText = $('#demoTextupload');
                        demoText.html('<span style="color: #FF5722;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                        demoText.find('.demo-reload').on('click', function () {
                            uploadInst.upload();
                        });
                    }
                });


            });
        </script>

        
         <script>
            layui.use('upload', function () {
                var $ = layui.jquery, upload = layui.upload;

                //普通图片上传
                var uploadInst = upload.render({
                    elem: '#test2upload'
                    , url: 'upload.do'
                    , accept: 'images'
                    , size: 50000
                    , before: function (obj) {
                          obj.preview(function (index, file, result) {
                          $('#demoupload2').attr('src', result);
                      });
                    }
                    , done: function (res) {
                        //如果上传失败
                        if (res.code > 0) {
                            return layer.msg('上传失败');
                        }
                        //上传成功
                        var demoText = $('#demoTextupload2');
                        demoText.html('<span style="color: #4cae4c;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;上传成功</span>');

                        var fileupload = $(".image");
                        fileupload.attr("value", res.data.src);
                        console.log(fileupload.attr("value"));
                    }
                    , error: function () {
                        //演示失败状态，并实现重传
                        var demoText = $('#demoTextupload2');
                        demoText.html('<span style="color: #FF5722;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                        demoText.find('.demo-reload').on('click', function () {
                            uploadInst.upload();
                        });
                    }
                });  
            });
        </script>

    </body>
</html>
