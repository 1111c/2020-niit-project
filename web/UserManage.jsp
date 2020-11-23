 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OA_UserSearch</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <link rel="stylesheet" href="resources/css/reset.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <script src="resources/js/jquery.js" type="text/javascript"></script>
        <script src="resources/layui/layui.js" type="text/javascript"></script>
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>


    </head>
    <body>
<!--        <div class="searchbox">
            <div class="mod_select">
                <div class="select_box">
                    <span class="select_txt">用户昵称</span>
                    <span class="select-icon"></span>
                    <ul class="option">
                        <li>用户昵称</li>
                        <li>用户电话</li>
                        <li>用户邮箱</li>
                    </ul>
                </div>
            </div>
            <form  >
                <input type="hidden" name="UNameLabel" value="用户昵称" id="select_value">
                <input type="text" name="UName"  id="find" class="import" placeholder="请输入用户昵称">
                <input type="submit" value="搜   索" class="btn-search"   id="queryRole">
                <div  class="layui-btn btn-search"  data-type="reload"  id="queryRole"  >搜   索</div> 
            </form>
        </div>

               
                 <div style="margin: -25px 20px;">
                            <table class="layui-hide" id="test"></table>
                 </div>
        -->



        <div class="layui-row" id="EditUser" style="display:none;">
            <div class="layui-col-md10">
                <form class="layui-form layui-from-pane"   id="updateUser"   style="margin-top:20px" >

                    <div class="layui-form-item">
                        <label class="layui-form-label">用户名</label>
                        <div class="layui-input-block">
                            <input type="text" name="UName" readonly="true" id="UName"  required  lay-verify="required" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item" id="showImg">
                        <label class="layui-form-label">头像</label>
                        <div class="layui-input-block">
                            <img class="layui-upload-img" name="UPicture1" id="UPicture1" src="" style="width:100px;height:100px;" >
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号</label>
                        <div class="layui-input-block">
                            <input type="text" name="UPhone" id="UPhone" required  lay-verify="required" autocomplete="off" placeholder="请输入年龄" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-block">
                            <input type="text" name="UEmail" id="UEmail" required  lay-verify="required" autocomplete="off" placeholder="请输入邮箱" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">性别</label>
                        <div class="layui-input-block">
                            <input type="text" name="UGender" id="UGender" required  lay-verify="required" autocomplete="off" placeholder="请输入出生日期" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">出生日期</label>
                        <div class="layui-input-block">
                            <input type="text" name="UBirthday" id="UBirthday" required  lay-verify="required" autocomplete="off" placeholder="请输入出生日期" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-block">
                            <input type="text" name="UPassword" id="UPassword" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                        </div>
                    </div> 

                    <input type="hidden" name="UPicture" class="image">
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




        <br/><br/><br/>

        <table class="layui-hide"   id="Users" lay-filter="test"></table>



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
                var table = layui.table,layer = layui.layer, upload = layui.upload, $ = layui.jquery
                form = layui.form;
                console.log('成功查询所有！！！');
                table.render({
                    elem: '#Users'
                    , url: 'searchAll.do'
                    , type: 'post'
                    , id: 'ReloadTable'
                    , toolbar: '#toolbarDemo'
                    , title: '用户数据表'
                    , totalRow: true
                    , limit: 6
                    , cols: [//cols的field字段对应后台po的属性
                        [{type: 'checkbox', fixed: 'left'}
                            , {field: 'UName', width: '10%', title: '用户名'}
                            , {field: 'UPicture', title: '头像', width: '10%', sort: true, templet: '<div><img width="120" height="50" src="{{d.UPicture}}"></div>'}
                            , {field: 'UPhone', width: '13%', title: '电话'}
                            , {field: 'UEmail', width: '12%', title: '邮箱'}
                            , {field: 'UBirthday', width: '10%', title: '生日', minWidth: 100}
                            , {field: 'UGender', width: '13%', title: '性别'}
                            , {field: 'UPassword', width: '13%', title: '密码'}
                            , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 200}
                        ]]
                    , page: true
                });


                // 修改头像
                layui.use('upload', function () {
                    var $ = layui.jquery,upload = layui.upload;
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
                    var selection = document.getElementById("select_value").value; 
                     console.log(find);
                     console.log('我是find');
                     console.log('selection' +  selection );
                    table.reload('ReloadTable', {
                        page: {curr: 1},
                        type: 'POST',
                        url: 'searchUserByName.do', 
                        where: {
                                UName:find,
                                selection:selection
                        }
                    });
                    console.log('成功查询一个');
                }); 




                form.on('submit(formDemo)', function (data) {
                    console.log(data);
                    $.ajax({
                        url: 'updateUser.do',
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
                        $("#check").hide();
                        $("#showImg").show();
                        $("#updateImg").hide();
                        $("#updateImage11").hide();
                        $("#isadmin").val(data.isadmin);
                        $("#id").val(data.id);
                        $("#isforbid").val(data.isforbid);
                        $("#isable").val(data.isable);
                        $("#rtime").val(data.rtime);



                        $("#UName").val(data.UName);
                        $("#UPicture1").val(data.UPicture);
                        $("#UPhone").val(data.UPhone);
                        $("#UEmail").val(data.UEmail);
                        $("#UBirthday").val(data.UBirthday);
                        $("#UGender").val(data.UGender);
                        $("#UPassword").val(data.UPassword);
                        $('#UPicture1').attr('src', data.UPicture);

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
                                url: 'deleteUser.do',
                                type: 'POST',
                                data: {UName: data.UName},
                                success: function (msg) {
                                    if (msg != null) {
                                        layer.msg("删除成功", {icon: 6});
                                        setTimeout(function () {
                                            layer.closeAll();//关闭所有的弹出层
                                        }, 1000);
                                        //加载层 - 风格
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
//                        $("#id").val(data.id);
//                        $("#fname").val(data.fname);
//                        $("#phone").val(data.phone);
//                        $("#email").val(data.email);
//                        $("#password").val(data.password);
//                        $("#name").val(data.name);
//                        $("#idcard").val(data.idcard);
//                        $('#imgshow').attr('src', "/file/" + data.headimg);
//                        $('#demo1').attr('src', "/file/" + data.headimg);
//                        $("#introduce").val(data.introduce);
                        $("#UName").val(data.UName);
                        $("#UPicture").val(data.UPicture);
                        $("#UPhone").val(data.UPhone);
                        $("#UEmail").val(data.UEmail);
                        $("#UBirthday").val(data.UBirthday);
                        $("#UGender").val(data.UGender);
                        $("#UPassword").val(data.UPassword);
                        $('#demo1upload').attr('src', data.UPicture);


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








        <!--------------------------------------------搜索框----------------------------------------------->
        <script src="resources/js/jquery.min.js"></script>
        <script>
            $(function () {
                $(".select_box").click(function (event) {
                    event.stopPropagation();
                    $(this).find(".option").toggle();
                    $(this).parent().siblings().find(".option").hide();
                });
                $(document).click(function (event) {
                    var eo = $(event.target);
                    if ($(".select_box").is(":visible") && eo.attr("class") != "option" && !eo.parent(".option").length)
                        $('.option').hide();
                });
                $(".option li").click(function () {
                    var check_value = $(this).text();
                    var zlValue = $('.option li:eq(1)').html();
                    var bqValue = $('.option li:eq(2)').html();
                    $(this).parent().siblings(".select_txt").text(check_value);
                    $("#select_value").val(check_value);
                    if (check_value == zlValue) {
                        $('#searchPlaceholder').prop('placeholder', '请输入用户电话');
                    } else if (check_value == bqValue) {
                        $('#searchPlaceholder').prop('placeholder', '请输入用户邮箱');
                    } else {
                        $('#searchPlaceholder').prop('placeholder', '请输入用户昵称');
                    }
                });
            })
        </script>

        <!--        ---------------------------------------数据表格-------------------------------------------------
        <script src="resources/layui/layui.js" charset="utf-8"></script> 
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
                    , cols: [[
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


        <!--        <script>
                       form.on('submit(formDemoSearch)', function (data) {
                            console.log(data);
                            $.ajax({
                                url: 'searchUserByName.do',
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
        
                    
                </script>
        -->

    </body>

</html>





