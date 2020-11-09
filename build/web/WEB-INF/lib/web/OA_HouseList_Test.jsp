<%-- 
    Document   : UserList
    Created on : 2019-11-19, 10:42:27
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserList</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css"  media="all">
        <script src="resources/js/jquery.js" type="text/javascript"></script>
        <script src="resources/layui/layui.js" type="text/javascript"></script>
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>


    </head>
    <body>
        <!--        <div style="padding: 15px;">
                <table class="layui-hide" id="test"></table>
                </div>
        -->

        <div class="layui-row" id="EditUser" style="display:none;">
            <div class="layui-col-md10">
                <form accept-charset="UTF-8"   class="layui-form layui-from-pane"   id="updateUser"   style="margin-top:20px" >

                    <div class="layui-form-item">
                        <label class="layui-form-label">房屋Id</label>
                        <div class="layui-input-block">
                            <input type="text" name="Hnumber" readonly="true" id="Hnumber"  required  lay-verify="required" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item" id="showImg">
                        <label class="layui-form-label">头像</label>
                        <div class="layui-input-block">
                            <img class="layui-upload-img" name="Hpicture" id="Hpicture" src="" style="width:100px;height:100px;" />
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <label class="layui-form-label">所在城市</label>
                        <div class="layui-input-block">
                            <input type="text" name="Hcity" id="Hcity" required  lay-verify="required" autocomplete="off" placeholder="请输入年龄" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">小区名</label>
                        <div class="layui-input-block">
                            <input type="text" name="Hcname" id="Hcname" required  lay-verify="required" autocomplete="off" placeholder="请输入邮箱" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">房屋面积</label>
                        <div class="layui-input-block">
                            <input type="text" name="Harea" id="Harea" required  lay-verify="required" autocomplete="off" placeholder="请输入出生日期" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">楼号</label>
                        <div class="layui-input-block">
                            <input type="text" name="Lno" id="Lno" required  lay-verify="required" autocomplete="off" placeholder="请输入出生日期" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">单元号</label>
                        <div class="layui-input-block">
                            <input type="text" name="Uno" id="Uno" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                        </div>
                    </div> 
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">门牌号</label>
                        <div class="layui-input-block">
                            <input type="text" name="Gno" id="Gno" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                        </div>
                    </div> 
                    
                     <div class="layui-form-item">
                        <label class="layui-form-label">出租价格</label>
                        <div class="layui-input-block">
                            <input type="text" name="Hrentprice" id="Hrentprice" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                        </div>
                    </div> 
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">房屋主人</label>
                        <div class="layui-input-block">
                            <input type="text" name="Howner" id="Howner" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                        </div>
                    </div> 
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号</label>
                        <div class="layui-input-block">
                            <input type="text" name="Hphone" id="Hphone" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                        </div>
                    </div> 
                    
                    
                    <input type="hidden"   name="Houseimg" value="111"/>
                    <input type="hidden"   name="Hcreatetime" value="2019/11/15"/>
                    <input type="hidden"   name="Hisrenting" value="否"/>

                    <input type="hidden" name="Hpicture" class="image">
                    <div class="layui-form-item" id="updateImage11">
                        <label class="layui-form-label ">照片:</label>
                        <div class="layui-upload">
                            <div class="layui-upload-list">
                                <img class="layui-upload-img" width="100px" height="100px" id="demo1upload">
                                <p id="demoTextupload"></p>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <button type="button" class="layui-btn" id="test1upload">修改图片</button>

                        </div>
                    </div>

                    <div class="layui-form-item" style="margin-top:40px" id="check">
                        <div class="layui-input-block">
                            <button class="layui-btn  layui-btn-submit " lay-submit="" lay-filter="formDemo"  style=" margin-left: -45px;">确认修改</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <table class="layui-hide" id="Users" lay-filter="test"></table>



        <script type="text/html" id="toolbarDemo">
            <div class="layui-btn-container">
                <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
                <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
                <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
            </div>
        </script>

        <script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-danger  layui-btn-xs" lay-event="del">删除</a>
        </script>

        <style type="text/css">
            td div.layui-table-cell{height:60px;
                                    line-height: 60px;
                                    position: relative;
                                    text-overflow: ellipsis;
                                    white-space: nowrap;
                                    box-sizing: border-box;
                                    padding: 0px 15px;
                                    overflow: hidden;
            }
        </style>

        <script>
            layui.use(['table', 'form', 'layer', 'upload'], function () {
                var table = layui.table,
                        layer = layui.layer, upload = layui.upload, $ = layui.jquery
                form = layui.form;
                table.render({
                    elem: '#Users'
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
                            , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 200}
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


        <!--          
        <script src="resources/layui/layui.js" charset="utf-8"></script> 
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
              {field: 'uname', width: 100, title: '用户昵称'}
                                    , {field: 'usex', width: 80, title: '性别', sort: true}
                                    , {field: 'uphone', width: 80, title: '电话'}
                                    , {field: 'uemail', title: '邮箱', minWidth: 150}
                                    , {field: 'udate', width: 120, title: '出生日期', sort: true}
                                    , {field: 'upassword', width: 135, title: '密码'}
            ]]
            
          });
        });
        </script>-->
    </body>
</html>
