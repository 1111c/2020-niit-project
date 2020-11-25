
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
                    </ul>
                    <div class="layui-tab-content">

                        <div class="layui-tab-item layui-show"> 
                            <form class="layui-form" action="register.do">
                                <input type="hidden" name="Ustatus" value="中介" /> 
                                <div class="layui-form-item">
                                    <label class="layui-form-label">用户昵称</label>
                                    <div class="layui-input-block">
                                        <input id="txtNickName2" type="text" name="UName" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                                    </div>
                                    <span id="NickNameMsg2" class="layui-input-block">

                                    </span>
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
                                        <button type="button" class="layui-btn layui-btn-normal" id="test2upload">上传图片</button>

                                    </div>
                                </div>


                                <div class="layui-form-item">
                                    <label class="layui-form-label">电话号码</label>
                                    <div class="layui-input-block">
                                        <input id="txtPhone2" type="text" name="UPhone" required  lay-verify="required" placeholder="请输入电话号码" autocomplete="off" class="layui-input">
                                    </div>
                                    <span id="PhoneMsg2" class="layui-input-block">

                                    </span>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">电子邮件</label>
                                    <div class="layui-input-block">
                                        <input id="txtEmail2" type="text" name="UEmail" required  lay-verify="required" placeholder="请输入电子邮件" autocomplete="off" class="layui-input">
                                    </div>
                                    <span id="EmailMsg2" class="layui-input-block">

                                    </span>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-inline">
                                        <label class="layui-form-label">出生日期</label>
                                        <div class="layui-input-inline">
                                            <input type="text"  name="UBirthday" class="layui-input" id="test2" placeholder="yyyy-MM-dd">
                                        </div>
                                        <span id="PasswordMsg" class="layui-input-block">

                                        </span>
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
                                        <input id="txtPassword2" type="password" name="UPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                    </div>
                                    </br>
                                    <span id="PasswordMsg2" class="layui-input-block">

                                    </span>
                                </div>

                                <div class="layui-form-item">
                                    <div class="layui-input-block">
                                        <button class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">提交</button>
                                        <button type="reset" class=" layui-btn layui-btn-normal">重置</button>
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


        <script>
            var ok1, ok2, ok3, ok4;
            $(function () {
                //邮箱验证
                $("#txtEmail2").blur(function () {
                    console.log("1111");
                    var Email = $(this).val();
                    if (Email == "") {
                        $("#EmailMsg2").html("<b><font color='red'>邮箱不能为空~~!</font><b/>");
                        ok1 = false;
                    } else {
                        var regEmail = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;

                        if (regEmail.test(Email)) {
                            $("#EmailMsg2").html("<b><font color='green'>邮箱验证通过~~!</font><b/>");
                            ok1 = true;
                        } else {
                            $("#EmailMsg2").html("<b><font color='red'>邮箱格式不正确~~!</font><b/>");
                            ok1 = false;
                        }
                    }
                });

                //昵称验证
                $("#txtNickName2").blur(function () {
                    var NickName = $(this).val();

                    if (NickName == "") {
                        $("#NickNameMsg2").html("<b><font color='red'>昵称不能为空~~!</font><b/>");
                        ok2 = false;
                    } else {
                        if (NickName.length < 3 || NickName.length > 20) {
                            $("#NickNameMsg2").html("<b><font color='red'>昵称格式不正确~~!</font><b/>");
                            ok2 = false;
                        } else {
                            $("#NickNameMsg2").html("<b><font color='green'>昵称验证通过~~!</font><b/>");
                            ok2 = true;
                        }
                    }
                });

                //判断是否为手机号的正则表达式
                $("#txtPhone2").blur(function () {
                    //$("#name").val().length
                    //debugger;
                    console.log("1111");
                    var Email = $(this).val();
                    if (Email == "") {
                        $("#PhoneMsg2").html("<b><font color='red'>手机号不能为空~~!</font><b/>");
                        ok3 = false;
                    } else {
                        var regEmail = /^[1][3,4,5,7,8,9][0-9]{9}$/;
                        if (regEmail.test(Email)) {
                            $("#PhoneMsg2").html("<b><font color='green'>手机号验证通过~~!</font><b/>");
                            ok3 = true;
                        } else {
                            $("#PhoneMsg2").html("<b><font color='red'>手机号格式不正确~~!</font><b/>");
                            ok3 = false;
                        }
                    }
                });





                //密码验证
                $("#txtPassword2").blur(function () {
                    var Password = $(this).val();
                    if (Password == "") {
                        $("#PasswordMsg2").html("<b><font color='red'>密码不能为空~~!</font><b/>");
                        ok4 = false;
                    } else {
                        if (Password.length < 6 || Password.length > 20) {
                            $("#PasswordMsg2").html("<b><font color='red'>密码格式不正确~~!</font><b/>");
                            ok4 = false;
                        } else {
                            $("#PasswordMsg2").html("<b><font color='green'>密码验证通过~~!</font><b/>");
                            ok4 = true;
                        }
                    }
                });


                //表单提交验证
                layui.use('form', function () {
                    var form = layui.form;
                    form.on('submit(formDemo)', function (data) {
                        $("input").trigger("blur");
                        //提交按钮,所有验证通过方可提交
                        if (ok1 && ok2 && ok3 && ok4) {

                        } else {

                            if (!ok2) {
                                layer.alert('用户名不正确', {icon: 6});
                            } else if (!ok1) {
                                layer.alert('邮箱格式不正确', {icon: 6});
                            } else if (!ok3) {
                                layer.alert('手机号格式不正确', {icon: 6});
                            } else if (!ok4) {
                                layer.alert('密码格式不正确', {icon: 6});
                            }

                            return false;
                        }
                    });
                });

            });

        </script>




        <script>
            var ok1, ok2, ok3, ok4;
            $(function () {
                //邮箱验证
                $("#txtEmail").blur(function () {
                    //$("#name").val().length
                    //debugger;
                    console.log("1111");
                    var Email = $(this).val();
                    if (Email == "") {
                        $("#EmailMsg").html("<b><font color='red'>邮箱不能为空~~!</font><b/>");
                        ok1 = false;
                    } else {
                        var regEmail = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;

                        if (regEmail.test(Email)) {
                            $("#EmailMsg").html("<b><font color='green'>邮箱验证通过~~!</font><b/>");
                            ok1 = true;
                        } else {
                            $("#EmailMsg").html("<b><font color='red'>邮箱格式不正确~~!</font><b/>");
                            ok1 = false;
                        }
                    }
                });

                //昵称验证
                $("#txtNickName").blur(function () {
                    var NickName = $(this).val();

                    if (NickName == "") {
                        $("#NickNameMsg").html("<b><font color='red'>昵称不能为空~~!</font><b/>");
                        ok2 = false;
                    } else {
                        if (NickName.length < 3 || NickName.length > 20) {
                            $("#NickNameMsg").html("<b><font color='red'>昵称格式不正确~~!</font><b/>");
                            ok2 = false;
                        } else {
                            $("#NickNameMsg").html("<b><font color='green'>昵称验证通过~~!</font><b/>");
                            ok2 = true;
                        }
                    }
                });

                //判断是否为手机号的正则表达式
                $("#txtPhone").blur(function () {
                    //$("#name").val().length
                    //debugger;
                    console.log("1111");
                    var Email = $(this).val();
                    if (Email == "") {
                        $("#PhoneMsg").html("<b><font color='red'>手机号不能为空~~!</font><b/>");
                        ok3 = false;
                    } else {
                        var regEmail = /^[1][3,4,5,7,8,9][0-9]{9}$/;
                        if (regEmail.test(Email)) {
                            $("#PhoneMsg").html("<b><font color='green'>手机号验证通过~~!</font><b/>");
                            ok3 = true;
                        } else {
                            $("#PhoneMsg").html("<b><font color='red'>手机号格式不正确~~!</font><b/>");
                            ok3 = false;
                        }
                    }
                });





                //密码验证
                $("#txtPassword").blur(function () {
                    var Password = $(this).val();
                    if (Password == "") {
                        $("#PasswordMsg").html("<b><font color='red'>密码不能为空~~!</font><b/>");
                        ok4 = false;
                    } else {
                        if (Password.length < 6 || Password.length > 20) {
                            $("#PasswordMsg").html("<b><font color='red'>密码格式不正确~~!</font><b/>");
                            ok4 = false;
                        } else {
                            $("#PasswordMsg").html("<b><font color='green'>密码验证通过~~!</font><b/>");
                            ok4 = true;
                        }
                    }
                });


                //表单提交验证
                layui.use('form', function () {
                    var form = layui.form;
                    form.on('submit(formDemo)', function (data) {
                        $("input").trigger("blur");
                        //提交按钮,所有验证通过方可提交
                        if (ok1 && ok2 && ok3 && ok4) {

                        } else {

                            if (!ok2) {
                                layer.alert('用户名不正确', {icon: 6});
                            } else if (!ok1) {
                                layer.alert('邮箱格式不正确', {icon: 6});
                            } else if (!ok3) {
                                layer.alert('手机号格式不正确', {icon: 6});
                            } else if (!ok4) {
                                layer.alert('密码格式不正确', {icon: 6});
                            }
                            return false;
                        }
                    });
                });

            });

        </script>


    </body>
</html>
