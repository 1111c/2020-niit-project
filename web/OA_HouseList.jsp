<%-- 
    Document   : OA_HouseList
    Created on : 2019-11-19, 19:51:44
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OA_Houselist</title>
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
      {field:'hnumber', width:100, title: '房产号', sort: true}
      ,{field:'harea', width:100, title: '房产面积'}
      ,{field:'hrentprice', width:120, title: '出租价格', sort: true}
      ,{field:'hdescription', width:100, title: '房产描述'}
      ,{field:'hposition', title: '房产地址', minWidth: 150}
      ,{field:'hcreatetime', width:150, title: '房产录入时间', sort: true}
      ,{field:'hisrenting', width:150, title: '房产是否租赁'}
    ]]
    
  });
});
</script>
<!--<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'/demo/table/user/'
    ,page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
      layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
      //,curr: 5 //设定初始在第 5 页
      ,groups: 1 //只显示 1 个连续页码
      ,first: false //不显示首页
      ,last: false //不显示尾页
      
    }
    ,cols: [[
      {field:'hnumber', width:100, title: '房产号', sort: true}
      ,{field:'harea', width:100, title: '房产面积'}
      ,{field:'hrentprice', width:120, title: '出租价格', sort: true}
      ,{field:'hdescription', width:100, title: '房产描述'}
      ,{field:'hposition', title: '房产地址', minWidth: 150}
      ,{field:'hcreatetime', width:150, title: '房产录入时间', sort: true}
      ,{field:'hisrenting', width:150, title: '房产是否租赁'}
    ]]
    
  });
});
</script>-->

</body>
</html>
