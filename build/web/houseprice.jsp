
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>房屋估价</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <script src="resources/js/jquery.js" type="text/javascript"></script> 
        <script src="resources/layui/layui.js"></script> 
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>
    </head>
    <body>
        <!--<embed type="text/html" src="Header.jsp"  style="width: 100%;height: 100px"/>-->
       <%@include file="Header.jsp"%>
        <div style="text-align: center;margin-top: 30px"> <b style="font-size: 32px;">
                房屋估价
            </b></div>  
        <form class="layui-form"  method="post" style="margin-left: 200px;margin-right: 200px;margin-top: 50px">

            <div class="layui-form-item">
                <label class="layui-form-label">所在城市</label>
                <div class="layui-input-block">
                    <input type="text" name="Hcity" lay-verify="title" autocomplete="off" placeholder="请输入小区所在城市" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">小区</label>
                <div class="layui-input-block">
                    <input type="text" name="Hcname" lay-verify="" autocomplete="off" placeholder="请输入小区名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">房屋面积</label>
                <div class="layui-input-block">
                    <tr>
                        <td>
                            <input type="text" name="Harea" lay-verify="title" autocomplete="off" placeholder="请输入房屋实际面积" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">房屋地址</label>
                    <div class="layui-input-inline">
                        <input type="text" name="Lno" autocomplete="off" class="layui-input" placeholder="楼栋号 ">
                    </div>
                </div>
                <div class="layui-inline"> 
                    <div class="layui-input-inline">
                        <input type="text" name="Uno" autocomplete="off" class="layui-input" placeholder="单元号">
                    </div>
                </div><div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text"  name="Gno" autocomplete="off" class="layui-input" placeholder="门牌号">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline"><table style="border: 0">
                        <label class="layui-form-label">期望售价</label>
                        <div class="layui-input-inline">

                            <tr>
                                <td>
                                    <input type="text"  id="Hrentprice" name="Hrentprice" autocomplete="off" class="layui-input" placeholder="请输入您期望卖出的价格">
                                </td>

                                <td><b>&nbsp;万元&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                        </div>
                        </tr>
                    </table></div></div>
            <button type="submit" class="layui-btn" lay-submit lay-filter="demo1" style="margin-left: 50px">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>

        </form>


        <script> 
            $(function () {
                layui.use('form', function () {
                    var form = layui.form; 
                    form.on('submit(demo1)', function (data) {
                        var p = $("#Hrentprice").val();
                        console.log(p); 
                        var ans = parseInt( p * Math.random(10,200)  );
                        ////加载层-默认风格
                        layer.load();
                        //此处演示关闭
                        setTimeout(function () {
                            layer.closeAll('loading');
                        }, 2000);
                    
                        layer.alert('你的房子预估价：'+ ans + '万元' , {icon: 6});
                        return false;
                    });
                });
            });

        </script>


    </body>
</html>
