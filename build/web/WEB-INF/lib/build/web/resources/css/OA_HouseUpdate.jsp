<%-- 
    Document   : OpenrsAdmin
    Created on : 2019-11-18, 19:03:44
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OA_HouseUpdate.jsp</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
    </head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
      <div class="layui-logo">买买买Admin</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="OpenrsAdmin.jsp">控制台</a></li>
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
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">用户信息</a>
          <dl class="layui-nav-child">
            <dd><a href="OA_UserList.jsp">用户列表</a></dd>
            <dd><a href="OA_UserSearch.jsp">查询信息</a></dd>
            <dd><a href="OA_UserUpdate.jsp">修改信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">中介信息</a>
          <dl class="layui-nav-child">
            <dd><a href="OA_MediationList.jsp">中介列表</a></dd>
            <dd><a href="OA_MediationSearch.jsp">查询信息</a></dd>
            <dd><a href="OA_MediationUpdate.jsp">修改信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">房源信息</a>
          <dl class="layui-nav-child">
            <dd><a href="OA_HouseList.jsp">房源列表</a></dd>
            <dd><a href="OA_HouseSearch.jsp">查询信息</a></dd>
            <dd><a href="OA_HouseUpdate.jsp">修改信息</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
                    <div style="padding: 15px;">
                    <div style="padding: 20px; background-color: #F2F2F2;">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md12">
                                <div class="layui-card">
                                    <div class="layui-card-header">修改房源信息</div>
                                    <div class="layui-card-body">
                                        <form class="layui-form" action="" >
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">房产号</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" lay-verify="required" autocomplete="off" placeholder="请输入房产号" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">所在城市</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入小区所在城市" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">小区</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入小区名" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">房屋面积</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入房屋实际面积" class="layui-input">
                                                </div>
                                            </div>

                                            <div class="layui-form-item">
                                                <div class="layui-inline">
                                                    <label class="layui-form-label">房屋地址</label>
                                                    <div class="layui-input-inline">
                                                        <input type="text" autocomplete="off" class="layui-input" placeholder="楼栋号 ">
                                                    </div>
                                                </div>
                                                <div class="layui-inline">
                                                    <div class="layui-input-inline">
                                                        <input type="text"  autocomplete="off" class="layui-input" placeholder="单元号">
                                                    </div>
                                                </div><div class="layui-inline">

                                                    <div class="layui-input-inline">
                                                        <input type="text"  autocomplete="off" class="layui-input" placeholder="门牌号">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <div class="layui-inline"><table style="border: 0">
                                                        <label class="layui-form-label">期望售价</label>
                                                        <div class="layui-input-inline">

                                                            <tr>
                                                                <td>
                                                                    <input type="text"  autocomplete="off" class="layui-input" placeholder="请输入您期望卖出的价格">
                                                                </td>

                                                                <td><b>&nbsp;万元&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                                                        </div>
                                                        </tr>
                                                    </table></div></div>

                                            <div class="layui-form-item">
                                                <label class="layui-form-label">称呼</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="我们应该如何称呼您" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">手机号码</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="您的联系方式，方便我们及时联系您" class="layui-input">
                                                </div>
                                            </div>

                                            <div class="layui-form-item layui-form-text">
                                                <label class="layui-form-label">房屋描述</label>
                                                <div class="layui-input-block">
                                                    <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                                <div class="layui-form-item">
                                                    <div class="layui-input-block">
                                                        <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1" >提交委托</button>
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
        
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
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
//  form.on('submit(formDemo)', function(data){
//    layer.msg(JSON.stringify(data.field));
//    return false;
//  });
});
        </script>
</body>
</html>
