<%-- 
    Document   : UserZone
    Created on : 2019-11-28, 14:36:12
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserZone</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <style type="text/css">
            .demo1-bg{
                background: url(resources/image/UZ5.jpg) no-repeat ;
                background-size: cover;
                width:cover;
                height: 300px;
                position: relative;
            }
            .demo1{
                position: absolute;
                left: 0;
                right: 0;
                top: 0;
                bottom: 0;
                width: cover;
                height: 450px;
                line-height: 50px;
                background:rgba(255,255,255,0.4);
            }
            .round_icon{
                width: 120px;
                height: 120px;
                display: flex;
                border-radius: 50%;
                align-items: center;
                justify-content: center;
                overflow: hidden;
            }

        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>

        <div class="demo1-bg">
            <div class="demo1">
                <div>
                    <div style="margin-top: 140px; margin-left: 100px; float: left">
                        <img src="resources/image/UZ1.jpg" class="round_icon"  alt="">
                    </div>
                    <div style="float: left;  margin-top: 180px; margin-left: 20px;">
                        <a style="font-size: 30px;font-weight: bolder; color: #2F4056">用户昵称</a>
                    </div>
                    <div style="clear: both"></div>
                </div>
            </div>
        </div>

        <div style="padding: 20px; background-color: #F2F2F2;">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">

                        <div>
                            <div style="float: left; margin-left: 50px; margin-top: 20px; margin-bottom: 20px;">
                                <img src="resources/image/UZ4.png" alt="" style="width: 50px;height: 50px;"/>
                            </div>
                            <div style="float: left;margin-top: 20px;">
                                <img src="resources/image/UZ3.png" alt="" style="width: 50px;height: 50px;"/>
                            </div>
                            <div style="float: left;margin-top: 20px;">
                                <img src="resources/image/UZ2.png" alt="" style="width: 50px;height: 50px;"/>
                            </div>
                            <div style="float: left;margin-top: 33px; margin-left: 10px;">
                                <a style="font-size: 20px;font-weight: bolder;">XXXX的房源收藏夹</a>
                            </div>
                            <div style="clear: both"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 

        <div style="padding: 20px;">
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
    </body>
</html>
