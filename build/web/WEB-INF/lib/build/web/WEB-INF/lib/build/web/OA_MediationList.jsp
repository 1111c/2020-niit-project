<%-- 
    Document   : OA_MediationList
    Created on : 2019-11-19, 15:55:15
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OA_MediationList</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
    </head>
    <body>
        <div style="padding: 15px;">
        <table class="layui-hide" id="test"></table>
        </div>
        
        
        <script src="resources/layui/layui.js"></script>
        <script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'resources/users.json'
    ,page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
      layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
      //,curr: 5 //设定初始在第 5 页
      ,groups: 1 //只显示 1 个连续页码
      ,first: false //不显示首页
      ,last: false //不显示尾页
      
    }
    ,cols: [[
       {field: 'mname', width: 100, title: '中介昵称'}
                            , {field: 'msex', width: 80, title: '性别', sort: true}
                            , {field: 'mphone', width: 80, title: '电话'}
                            , {field: 'memail', title: '邮箱', minWidth: 150}
                            , {field: 'mdate', width: 120, title: '出生日期', sort: true}
                            , {field: 'mpassword', width: 135, title: '密码'}
    ]]
    
  });
});
</script>

</html>












      