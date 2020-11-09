
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
        <div class="searchbox">
            <div class="mod_select">
                <div class="select_box">
                    <span class="select_txt">房屋Id</span>
                    <span class="select-icon"></span>
                    <ul class="option">
                        <li>房屋Id</li>
                        <li>所在城市</li> 
                    </ul>
                </div>
            </div>
            <form  >
                <input type="hidden" name="UNameLabel" value="房屋Id" id="select_value">
                <input type="text" name="UName"  id="find" class="import" >
                <!--<input type="submit" value="搜   索" class="btn-search"   id="queryRole">-->
                <div  class="layui-btn btn-search"  data-type="reload"  id="queryRole"  >搜   索</div> 
            </form>
        </div>


        <div class="layui-form-item" pane="">
            <label class="layui-form-label">售价</label>
            <div class="layui-input-block">
                <input type="checkbox" name="like[shoujia1]" title="80万以下" lay-skin="primary">
                <input type="checkbox" name="like[shoujia2]" title="80-100万" lay-skin="primary">
                <input type="checkbox" name="like[shoujia3]" title="100-150万" lay-skin="primary">
                <input type="checkbox" name="like[shoujia4]" title="150-200万" lay-skin="primary">
                <input type="checkbox" name="like[shoujia5]" title="200-300万" lay-skin="primary">
                <input type="checkbox" name="like[shoujia5]" title="300-500万" lay-skin="primary">
            </div>
        </div>

        <div class="layui-form-item" pane="">
            <label class="layui-form-label">房型</label>
            <div class="layui-input-block">
                <input type="checkbox" name="like1[fangxing1]" title="一室" lay-skin="primary">
                <input type="checkbox" name="like1[fangxing2]" title="两室" lay-skin="primary">
                <input type="checkbox" name="like1[fangxing3]" title="三室" lay-skin="primary">
                <input type="checkbox" name="like1[fangxing4]" title="四室" lay-skin="primary">
                <input type="checkbox" name="like1[fangxing5]" title="四室以上" lay-skin="primary">
            </div>
        </div>
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">面积</label>
            <div class="layui-input-block">
                <input type="checkbox" name="like1[1mianji1]" title="50㎡以下" lay-skin="primary">
                <input type="checkbox" name="like1[mianji2]" title="50-70㎡" lay-skin="primary">
                <input type="checkbox" name="like1[mianji3]" title="70-90㎡" lay-skin="primary">
                <input type="checkbox" name="like1[mianji4]" title="90-110㎡" lay-skin="primary">
                <input type="checkbox" name="like1[mianji5]" title="110-130㎡" lay-skin="primary">
                <input type="checkbox" name="like1[mianji6]" title="130-150㎡" lay-skin="primary">

            </div>
        </div>
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">标签</label>
            <div class="layui-input-block">
                <input type="checkbox" name="like1[biaoqian1]" title="必看好房" lay-skin="primary">
                <input type="checkbox" name="like1[biaoqian2]" title="满五年" lay-skin="primary">
                <input type="checkbox" name="like1[biaoqian3]" title="满两年" lay-skin="primary">
                <input type="checkbox" name="like1[biaoqian4]" title="7日新上" lay-skin="primary">
                <input type="checkbox" name="like1[biaoqian5]" title="随时看房" lay-skin="primary">


            </div>
        </div>      
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">朝向</label>
            <div class="layui-input-block">
                <input type="checkbox" name="like1[chaoxiang1]" title="南北" lay-skin="primary">
                <input type="checkbox" name="like1[chaoxiang2]" title="朝南" lay-skin="primary">
                <input type="checkbox" name="like1[chaoxiang3]" title="朝北" lay-skin="primary">
                <input type="checkbox" name="like1[chaoxiang4]" title="朝西" lay-skin="primary">
                <input type="checkbox" name="like1[chaoxiang5]" title="朝东" lay-skin="primary">

            </div>
        </div>

        <div class="layui-form-item" pane="">
            <label class="layui-form-label">楼层</label>
            <div class="layui-input-block">
                <input type="checkbox" name="like1[louceng1]" title="低楼层" lay-skin="primary">
                <input type="checkbox" name="like1[louceng2]" title="中楼层" lay-skin="primary">
                <input type="checkbox" name="like1[louceng3]" title="高楼层" lay-skin="primary">


            </div>
        </div>
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">楼龄</label>
            <div class="layui-input-block">
                <input type="checkbox" name="like1[louling1]" title="5年以下" lay-skin="primary">
                <input type="checkbox" name="like1[louling2]" title="10年以下" lay-skin="primary">
                <input type="checkbox" name="like1[louling3]" title="15年以下" lay-skin="primary">
                <input type="checkbox" name="like1[louling4]" title="20年以下" lay-skin="primary">
                <input type="checkbox" name="like1[louling5]" title="20年以上" lay-skin="primary">


            </div>
        </div>

        <!--       
                 <div style="margin: -25px 20px;">
                            <table class="layui-hide" id="test"></table>
                 </div>
        -->

        <div class="layui-row" id="EditUser" style="display:none;">
            <div class="layui-col-md10">
                <form accept-charset="UTF-8"   class="layui-form layui-from-pane"   id="updateUser"   >

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


        <br/><br/>
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
                    , id: 'ReloadTable'
                    , toolbar: '#toolbarDemo'
                    , title: '用户数据表'
                    , totalRow: true
                    , limit: 6
                    , page: {//支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                        layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
                                //,curr: 5 //设定初始在第 5 页
                        , groups: 1 //只显示 1 个连续页码
                        , first: false //不显示首页
                        , last: false //不显示尾页
                    }
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
                            // , {field: 'houseimg', width: '13%', title: '图片'}
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
                    var selection = document.getElementById("select_value").value;
                    console.log(find);
                    console.log('我是find');
                    console.log('selection' + selection);
                    table.reload('ReloadTable', {
                        page: {curr: 1},
                        type: 'POST',
                        url: 'searchHouseByCity.do',
                        where: {
                            UName: find,
                            selection: selection
                        }
                    });
                    console.log('成功查询一个');
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





