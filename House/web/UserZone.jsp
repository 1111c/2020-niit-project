
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserZone</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>
        <style type="text/css">
            .demo1-bg{
                background: url(resources/image/UZ1.jpg) no-repeat ;
                background-size: cover;
                width:cover;
                height: 1000px;
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
                        <img src="${user.UPicture}" class="round_icon"  alt="">
                    </div>
                    <div style="float: left;  margin-top: 180px; margin-left: 20px;">
                        <a style="font-size: 30px;font-weight: bolder; color: #2F4056">${user.UName}</a>
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
                                <a style="font-size: 20px;font-weight: bolder;">${user.UName}的房源收藏夹(开发中......)</a>
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
        <!--        <script>
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
                            , cols: [[
                                    {field: 'hnumber', width: 100, title: '房产号', sort: true}
                                    , {field: 'harea', width: 100, title: '房产面积'}
                                    , {field: 'hrentprice', width: 120, title: '出租价格', sort: true}
                                    , {field: 'hdescription', width: 100, title: '房产描述'}
                                    , {field: 'hposition', title: '房产地址', minWidth: 150}
                                    , {field: 'hcreatetime', width: 150, title: '房产录入时间', sort: true}
                                    , {field: 'hisrenting', width: 150, title: '房产是否租赁'}
                                ]]
        
                        });
                    });
                </script>-->


        <script>
            layui.use(['table', 'form', 'layer', 'upload'], function () {
                var table = layui.table,
                        layer = layui.layer, upload = layui.upload, $ = layui.jquery
                form = layui.form;
                table.render({
                    elem: '#test'
                    , url: 'searchAllHouse.do'
                    , type: 'get'
                    , toolbar: '#toolbarDemo'
                    , title: '用户数据表'
                    , totalRow: true
                    , limit: 6
                    , cols: [//cols的field字段对应后台po的属性
                        [{type: 'checkbox', fixed: 'left'}
                            , {field: 'hnumber', width: '10%', title: '房产号'}
                            , {field: 'hpicture', title: '图片', width: '10%', sort: true, templet: '<div><img width="120" height="50" src="{{d.hpicture}}"></div>'}
                            , {field: 'hcity', width: '13%', title: '城市'}
                            , {field: 'hcname', width: '12%', title: '小区名'}
                            , {field: 'harea', width: '10%', title: '房屋面积', minWidth: 100}
                            , {field: 'lno', width: '13%', title: '楼号'}
                            , {field: 'uno', width: '13%', title: '单元号'}
                            , {field: 'gno', width: '13%', title: '门牌号'}
                            , {field: 'hrentprice', width: '13%', title: '出租价格'}
                            , {field: 'howner', width: '13%', title: '房屋主人'}
                            , {field: 'hphone', width: '13%', title: '手机号'}
                            , {field: 'houseimg', width: '13%', title: '图片'}
                            , {field: 'hcreatetime', width: '13%', title: '录入时间'}
                            , {field: 'hisrenting', width: '13%', title: '是否租赁'}
                            , {field: 'hdescription', width: '13%', title: '房产描述'}
                           // , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 200}
                        ]]
                    , page: true

                });


                // 修改头像
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
                            console.log('就是我');
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



                //根据phone关键字查询
                $('#queryRole').on('click', function () {
                    var find = document.getElementById("find").value;
                    table.reload('Users', {
                        page: {curr: 1},
                        url: 'searchUserByName.do',
                        where: {'userName': find}
                    })
                });


                form.on('submit(formDemo)', function (data) {
                    console.log(data);
                    $.ajax({
                        url: 'updateHouse.do',
                        type: 'post',
                        contentType: 'application/json',
                        data: JSON.stringify(data.field),
                        success: function (msg) {
                            if (msg != null) {
                                layer.closeAll('loading');
                                layer.load(2);
                                layer.msg("修改成功", {icon: 6});
                                setTimeout(function () {
                                    layer.closeAll();//关闭所有的弹出层
                                    table.reload("Users");
                                }, 1000);
                                //加载层 - 风格
                            } else {
                                layer.msg("修改失败", {icon: 5});
                            }
                        }
                    })
                    return false;
                })



                //工具栏事件
                table.on('toolbar(test)', function (obj) {
                    var checkStatus = table.checkStatus(obj.config.id);
                    switch (obj.event) {
                        case 'getCheckData':
                            var data = checkStatus.data;
                            layer.alert(JSON.stringify(data));
                            break;
                        case 'getCheckLength':
                            var data = checkStatus.data;
                            layer.msg('选中了：' + data.length + ' 个');
                            break;
                        case 'isAll':
                            layer.msg(checkStatus.isAll ? '全选' : '未全选')
                            break;
                    }
                    ;
                });


                //监听工具条
                table.on('tool(test)', function (obj) {
                    var data = obj.data;
                    //查看
                    if (obj.event === 'detail') {

                        console.log(data);
                        $("#check").hide();
                        $("#showImg").show();
                        $("#updateImg").hide();
                        $("#updateImage11").hide();
                        $("#Hnumber").val(data.hnumber);
                        $('#Hpicture').attr('src', data.hpicture);
                        $("#Hcity").val(data.hcity);
                        $("#Hcname").val(data.hcname);
                        $("#Harea").val(data.harea);
                        $("#Lno").val(data.lno);
                        $("#Uno").val(data.uno);
                        $("#Gno").val(data.gno);
                        $("#Hrentprice").val(data.hrentprice);
                        $("#Howner").val(data.howner);
                        $("#Hphone").val(data.hphone);
                        $("#Houseimg").val(data.houseimg);
                        $("#Hcreatetime").val(data.hcreatetime);
                        $("#Hisrenting").val(data.hisrenting);
                        $("#Hdescription").val(data.hdescription);

                        layer.open({
                            type: 1,
                            title: "查看个人信息",
                            area: ['520px', '540px'],
                            content: $("#EditUser")
                        });
                        // layer.msg('ID：'+ data.id + ' 的查看操作');
                    } else if (obj.event === 'del') {
                        console.log(data);
                        console.log(data.UName);
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: 'deleteHouse.do',
                                type: 'POST',
                                data: {Hnumber: data.hnumber},
                                success: function (msg) {
                                    if (msg != null) {
                                        layer.msg("删除成功", {icon: 6});
                                        setTimeout(function () {
                                            layer.closeAll();//关闭所有的弹出层
                                        }, 1000);
                                        //   加载层 - 风格
                                    } else {
                                        layer.msg("删除失败", {icon: 5});
                                    }
                                }
                            })
                            obj.del();
                            layer.close(index);
                        });
                    } else if (obj.event === 'edit') {
                        $("#check").show();
                        $("#showImg").show();
                        $("#updateImg11").show();

       //                        $("#check").hide(); 
       //                        $("#showImg").show();
       //                        $("#updateImg").hide();
       //                        $("#updateImage11").hide(); 
                        $("#Hnumber").val(data.hnumber);
                        $('#Hpicture').attr('src', data.hpicture);
                        $("#Hcity").val(data.hcity);
                        $("#Hcname").val(data.hcname);
                        $("#Harea").val(data.harea);
                        $("#Lno").val(data.lno);
                        $("#Uno").val(data.uno);
                        $("#Gno").val(data.gno);
                        $("#Hrentprice").val(data.hrentprice);
                        $("#Howner").val(data.howner);
                        $("#Hphone").val(data.hphone);
                        $("#Houseimg").val(data.houseimg);
                        $("#Hcreatetime").val(data.hcreatetime);
                        $("#Hisrenting").val(data.hisrenting);
                        $("#Hdescription").val(data.hdescription);
                        layer.open({
                            type: 1,
                            title: "修改个人信息",
                            area: ['520px', '590px'],
                            content: $("#EditUser")
                        });
                    }
                });

            });

        </script>


    </body>
</html>
