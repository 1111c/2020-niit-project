

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
            layui.use('table', function () {
                var table = layui.table;

                table.render({
                    elem: '#test'
                    , url: 'resources/users.json'
                    , page: {//支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                        layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
                                //,curr: 5 //设定初始在第 5 页
                        , groups: 1 //只显示 1 个连续页码
                        , first: false //不显示首页
                        , last: false //不显示尾页

                    }
                    /*
                     * 
                     * [{type: 'checkbox', fixed: 'left'}
                            , {field: 'UName', width: '10%', title: '用户名'}
                            , {field: 'UPicture', title: '头像', width: '10%', sort: true, templet: '<div><img width="120" height="50" src="{{d.UPicture}}"></div>'}
                            , {field: 'UPhone', width: '13%', title: '电话'}
                            , {field: 'UEmail', width: '12%', title: '邮箱'}
                            , {field: 'UBirthday', width: '10%', title: '生日', minWidth: 100}
                            , {field: 'UGender', width: '13%', title: '性别'}
                            , {field: 'UPassword', width: '13%', title: '密码'}
                            , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 200}
                        ]]
                     * 
                     */ 
                    , cols: [[
                            {field: 'Hnumber', width: 100, title: '房产号', sort: true}
                            , {field: 'Hpicture', width: 100, title: '房产面积'}
                            , {field: 'Hcity', width: 120, title: '出租价格', sort: true}
                            , {field: 'Hcname', width: 100, title: '房产描述'}
                            , {field: 'Harea', title: '房产地址', minWidth: 150}
                            , {field: 'Lno', width: 150, title: '房产录入时间', sort: true}
                            , {field: 'Uno', width: 150, title: '房产是否租赁'}
                            , {field: 'Gno', width: 150, title: '房产是否租赁'}
                            , {field: 'Hrentprice', width: 150, title: '房产是否租赁'}
                            , {field: 'Howner', width: 150, title: '房产是否租赁'}
                            , {field: 'Hphone', width: 150, title: '房产是否租赁'}
                            //, {field: 'Houseimg', width: 150, title: '房产是否租赁'}
                            , {field: 'Hcreatetime', width: 150, title: '房产是否租赁'}
                            , {field: 'Hisrenting', width: 150, title: '房产是否租赁'}
                            , {field: 'Hdescription', width: 150, title: '房产是否租赁'}
                            
                        ]]

                            /*
                     
                             create table House( 
                             Hnumber		    int  primary key  identity(1,1) ,  --房产号
                             Hpicture        nvarchar(200),  --图片 
                             Hcity           nvarchar(200),  --城市
                             Hcname           nvarchar(200), --小区名
                             Harea		    nvarchar(200),  --房屋实际面积面积
                             Lno             nvarchar(200),  --楼号 
                             Uno             nvarchar(200),  --单元号
                             Gno             nvarchar(200),  --门牌号
                             --房产地址
                             Hrentprice		float   ,       --出租价格
                             Howner          nvarchar(200),  --房屋主人
                             Hphone          nvarchar(200),  --手机号
                             Houseimg		nvarchar(200) , --房产图片 
                             Hcreatetime		nvarchar(200)  ,    --房产录入时间
                             Hisrenting		nvarchar(200)  ,    --房产是否租赁 
                             Hdescription	nvarchar(200)  --房产描述
                             )
                     
                             */

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
