<%-- 
    Document   : OA_UserUpdate
    Created on : 2019-11-20, 14:11:10
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OA_MediationUpdate</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="resources/layui/css/layui.css">
    </head>
    <body>
        <div style="padding: 15px;">
                    <div style="padding: 20px; background-color: #F2F2F2;">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md12">
                                <div class="layui-card">
                                    <div class="layui-card-header">修改中介信息</div>
                                    <div class="layui-card-body">
                                        <form class="layui-form" action="">
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">中介昵称</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" required  lay-verify="required" placeholder="请输入用户昵称" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <div class="layui-upload">
                                                    <label class="layui-form-label">上传头像</label>
                                                    <div class="layui-input-block">
                                                        <div class="layui-upload-list">
                                                            <img class="layui-upload-img" width="100px" height="100px" id="demo1">
                                                            <p id="demoText1"></p>
                                                        </div>
                                                        <button type="button" class="layui-btn" id="test3">选择</button>
                                                    </div>
                                                </div> 
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">电话号码</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" required  lay-verify="required" placeholder="请输入电话号码" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">电子邮件</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" required  lay-verify="required" placeholder="请输入电子邮件" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <div class="layui-inline">
                                                    <label class="layui-form-label">出生日期</label>
                                                    <div class="layui-input-inline">
                                                        <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
                                                    </div>
                                                </div> 
                                            </div>


                                            <div class="layui-form-item">
                                                <label class="layui-form-label">性别</label>
                                                <div class="layui-input-block">
                                                    <input type="radio" name="sex" value="男" title="男">
                                                    <input type="radio" name="sex" value="女" title="女" checked>
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">密码</label>
                                                <div class="layui-input-inline">
                                                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>

                                            <div class="layui-form-item">
                                                <div class="layui-input-block">
                                                    <button class="layui-btn" lay-submit lay-filter="formDemo">修改信息</button>
                                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
        
        
        <script src="resources/layui/layui.js"></script>
        <script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
        <script><!--form表单--->
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
        </script>
        <script><!--日期选择器----->
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //常规用法
  laydate.render({
    elem: '#test1'
  });
  });
  </script>
  <script><!--图片上传----->
layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
  
  //普通图片上传
  var uploadInst = upload.render({
    elem: '#test3'
    ,url: '/upload/'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo1').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });
  });
  </script>
    </body>
</html>






        