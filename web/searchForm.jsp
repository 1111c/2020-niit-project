
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="resources/layui/css/layui.css" rel="stylesheet" type="text/css"/>
        <script src="resources/layui/layui.js" type="text/javascript"></script>

        <title>Layui查询功能实现</title>
    </head> 

    <body> 


        <div class="layui-row" id="EditUser" style="display:none;">
            <div class="layui-col-md10">
                <form class="layui-form layui-from-pane" id="updateUser"   style="margin-top:20px" >

                    <input type="hidden" name="isadmin" id="isadmin">
                    <input type="hidden" name="id" id="id">
                    <input type="hidden" name="isforbid" id="isforbid">
                    <input type="hidden" name="isable" id="isable">
                    <input type="hidden" name="rtime" id="rtime">
                    <div class="layui-form-item">
                        <label class="layui-form-label">用户名</label>
                        <div class="layui-input-block">
                            <input type="text" name="fname" id="fname"  required  lay-verify="required" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号</label>
                        <div class="layui-input-block">
                            <input type="text" name="phone" id="phone" required  lay-verify="required" autocomplete="off" placeholder="请输入年龄" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-block">
                            <input type="text" name="email" id="email" required  lay-verify="required" autocomplete="off" placeholder="请输入邮箱" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-block">
                            <input type="text" name="password" id="password" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">真实姓名</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" id="name" required  lay-verify="required" autocomplete="off" placeholder="请输入真实姓名" class="layui-input">
                        </div>
                    </div>


                    <div class="layui-form-item" id="showImg">
                        <label class="layui-form-label">头像</label>
                        <div class="layui-input-block">
                            <img class="layui-upload-img"  id="imgshow" src="" style="width:100px;height:100px;" >
                        </div>
                    </div>


                    <div  class="layui-upload"  id="updateImg">
                        <button type="button"  class="layui-btn layui-btn-primary" id="img" style="margin-top: 30px;margin-left: 10px">修改头像</button>
                        <div class="layui-upload-list" style="margin-left: 120px;margin-top: -50px"  >
                            <img class="layui-upload-img" id="demo1" src="" style="width:100px;height:100px;" >
                            <p id="demoText"></p>
                        </div>
                    </div>

                    <input type="hidden" name="headimg" id="headimg" value="" >


                    <div class="layui-form-item">
                        <label class="layui-form-label">自我介绍</label>
                        <div class="layui-input-block">
                            <input type="text" name="introduce" id="introduce" required  lay-verify="required" autocomplete="off" placeholder="请输入自我介绍" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item" style="margin-top:40px" id="check">
                        <div class="layui-input-block">
                            <button class="layui-btn  layui-btn-submit " lay-submit="" lay-filter="formDemo" >确认修改</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div> 
        <div class="demoTable" style="padding: 15px">
            搜索手机号：
            <div class="layui-inline">
                <input class="layui-input" id="find" autocomplete="off">
            </div>
            <button class="layui-btn" data-type="reload" id="queryRole" >搜索</button>
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
                        layer = layui.layer,
                        upload = layui.upload,
                        $ = layui.jquery
                form = layui.form;
                table.render({
                    elem: '#Users'
                    , url: 'searchAll.do'
                    , type: 'post'
                    , toolbar: '#toolbarDemo'
                    , title: '用户数据表'
                    , totalRow: true
                    , limit: 6
                    , cols: [//cols的field字段对应后台po的属性
                        [
                            {type: 'checkbox', fixed: 'left'}
                            , {field: 'UName', width: '10%', title: '用户名', sort: true}
                            , {field: 'UPicture', title: '头像', width: '10%', sort: true, templet: '<div><img width="120" height="50" src="{{d.UPicture}}"></div>'}
                            , {field: 'UPhone', width: '13%', title: '电话'}
                            , {field: 'UEmail', width: '12%', title: '邮箱'}
                            , {field: 'UBirthday', width: '10%', title: '生日', minWidth: 100}
                            , {field: 'UGender', width: '13%', title: '性别'}
                            , {field: 'UPassword', width: '13%', title: '密码'}
                            , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 200}

                        ]
                    ]
                    , page: true

                });

                //根据phone关键字查询
                $('#queryRole').on('click', function () {
                    var find = document.getElementById("find").value;
                    console.log(find);
                    table.reload('Users', {
                        page: {curr: 1},
                        url: 'searchUserByName.do',
                        where: {'userName': find}
                    })
                });


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
                        $("#check").hide();
                        $("#showImg").show();
                        $("#updateImg").hide();
                        $("#isadmin").val(data.isadmin);
                        $("#id").val(data.id);
                        $("#isforbid").val(data.isforbid);
                        $("#isable").val(data.isable);
                        $("#rtime").val(data.rtime);
                        $("#fname").val(data.fname);
                        $("#phone").val(data.phone);
                        $("#email").val(data.email);
                        $("#password").val(data.password);
                        $("#name").val(data.name);
                        $("#idcard").val(data.idcard);
                        $('#imgshow').attr('src', "/file/" + data.headimg);
                        $('#demo1').attr('src', "/file/" + data.headimg);
                        $("#introduce").val(data.introduce);
                        layer.open({
                            type: 1,
                            title: "查看个人信息",
                            area: ['520px', '540px'],
                            content: $("#EditUser")
                        });
                        // layer.msg('ID：'+ data.id + ' 的查看操作');
                    } else if (obj.event === 'del') {
                        layer.confirm('真的删除行么', function (index) {
                            $.ajax({
                                url: '${pageContext.request.contextPath}/deleteUser.action',
                                type: 'GET',
                                data: {
                                    id: data.id
                                },
                                success: function (msg) {
                                    if (msg == "1") {
                                        layer.msg("删除成功", {icon: 6});
                                        setTimeout(function () {
                                            layer.closeAll();//关闭所有的弹出层
                                        }, 1000);
                                        加载层 - 风格
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
                        $("#showImg").hide();
                        $("#updateImg").show();
                        // layer.alert('编辑行：<br>'+ JSON.stringify(obj.data.address))
                        // alert(data.fname);
                        $("#id").val(data.id);
                        $("#fname").val(data.fname);
                        $("#phone").val(data.phone);
                        $("#email").val(data.email);
                        $("#password").val(data.password);
                        $("#name").val(data.name);
                        $("#idcard").val(data.idcard);
                        $('#imgshow').attr('src', "/file/" + data.headimg);
                        $('#demo1').attr('src', "/file/" + data.headimg);
                        $("#introduce").val(data.introduce);
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
