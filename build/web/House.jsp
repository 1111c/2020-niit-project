<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>发布房源</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <script src="resources/js/jquery.js" type="text/javascript"></script>
    </head>

    <body>

        <ul class="layui-nav layui-bg-cyan" >


            <li class="layui-nav-item" lay-unselect=""  style="float: right">
                <a href="javascript:;">登录</a>

            </li>
        </li>
        <li class="layui-nav-item" lay-unselect=""  style="float: right">
            <a href="javascript:;">注册</a>

        </li>
        <li class="layui-nav-item">
            <a href="index.jsp">首页</a>
        </li>

        <li class="layui-nav-item">
            <a href="">二手房</a>
        </li>
        <li class="layui-nav-item">
            <a href="">新房</a>
        </li>
        <li class="layui-nav-item" >
            <a href="">租房</a></li>
        <li class="layui-nav-item">
            <a href="">海外</a>
        </li>
        <li class="layui-nav-item" >
            <a href="">商务办公</a>
        </li>
        <li class="layui-nav-item">
            <a href="">小区</a>
        </li>
        <li class="layui-nav-item" >
            <a href="">经纪人</a></li>
        <li class="layui-nav-item" >
            <a href="javascript:;">指南</a>
            <dl class="layui-nav-child">
                <dd><a href="">问答</a></dd>
                <dd><a href="">百科</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="">房价</a></li>
        <li class="layui-nav-item layui-this" >
            <a href="">工具</a>
        </li>
    </ul>





    <div style="text-align: center;margin-top: 30px"> <b style="font-size: 32px;">
            发布房源信息
        </b></div>       
    <table><tr><td>
                <form class="layui-form"    method="post" action="addHouse.do" style="margin-top: 40px; width: 800px;height: 600px;">
                    <input type="hidden" name="Hpicture" class="image">
                    <div class="layui-form-item">
                        <label class="layui-form-label">照片</label>
                        <div class="layui-upload">
                            <div class="layui-upload-list">
                                <img class="layui-upload-img" width="100px" height="100px" id="demo1upload">
                                <p id="demoTextupload"></p>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <button type="button" class="layui-btn" id="test1upload">上传图片</button>

                        </div>
                    </div>

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
                                            <input type="text"  name="Hrentprice" autocomplete="off" class="layui-input" placeholder="请输入您期望卖出的价格">
                                        </td>

                                        <td><b>&nbsp;万元&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                                </div>
                                </tr>
                            </table></div></div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">称呼</label>
                        <div class="layui-input-block">
                            <input type="text" name="Howner" lay-verify="title" autocomplete="off" placeholder="我们应该如何称呼您" class="layui-input">
                        </div>
                    </div>

                    <input type="hidden"   name="Houseimg" value="111"/>
                    <input type="hidden"   name="Hcreatetime" value="2019/11/15"/>
                    <input type="hidden"   name="Hisrenting" value="否"/>

                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号码</label>
                        <div class="layui-input-block">
                            <input type="text"  name="Hphone" lay-verify="title" autocomplete="off" placeholder="您的联系方式，方便我们及时联系您" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">房屋描述</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="Hdescription" class="layui-textarea"></textarea>
                        </div>
                    </div>
                    <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1" style="margin-left: 500px;">提交委托</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>

                </form>

            </td>
            <td>     
                <div class="layui-main layui-carousel" id="test10" style="margin-bottom: 70px;margin-left: 20px">
                    <div carousel-item="">
                        <div><img src="resources/image/"></div>
                        <div><img src="resources/image/"></div>
                        <div><img src="resources/image/"></div>
                        <div><img src="resources/image/"></div>
                        <div><img src="resources/image/"></div>

                    </div>
                </div>
            </td>
        </tr>
    </table>

    <br/><br/><br/><br/><br/><br/><br/><hr class="layui-bg-green">
    <div class="A1" style="margin-bottom: 200px;">


        <br/><table style="margin-left: 25%">
            <tr>
                <td>
                    <i class="layui-icon layui-icon-next" style="font-size: 30px; color: #1E9FFF;"></i>  
                </td>
                <td><b style="font-size: 18px">发布房源</b><br/><p>在线上免费发布房源</p></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><i class="layui-icon layui-icon-next" style="font-size: 30px; color: #1E9FFF;"></i>  </td>
                <td><b style="font-size: 18px">核对房源</b><br/><p>30分钟内客服联系</p></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
                <td><i class="layui-icon layui-icon-next" style="font-size: 30px; color: #1E9FFF;"></i>  </td>
                <td><b style="font-size: 18px">在线销售</b><br/><p>在APP移动管理销售</p></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
                <td><i class="layui-icon layui-icon-next" style="font-size: 30px; color: #1E9FFF;"></i>  </td>
                <td><b style="font-size: 18px">签约出售
                    </b><br/><p>签约过户全程服务</p></td>
        </table> 
    </div>
















</div>
</div>





<script src="resources/layui/layui.js"></script>



<script type="text/javascript">
    layui.use(['carousel', 'form'], function () {
        var carousel = layui.carousel
                , form = layui.form;

        //常规轮播
        carousel.render({
            elem: '#test1'
            , arrow: 'always'
        });

        //改变下时间间隔、动画类型、高度
        carousel.render({
            elem: '#test2'
            , interval: 1800
            , anim: 'fade'
            , height: '120px'
        });

        //设定各种参数
        var ins3 = carousel.render({
            elem: '#test3'
        });
        //图片轮播
        carousel.render({
            elem: '#test10'
            , width: '300px'
            , height: '500px'
            , interval: 5000
        });

        //事件
        carousel.on('change(test4)', function (res) {
            console.log(res)
        });

        var $ = layui.$, active = {
            set: function (othis) {
                var THIS = 'layui-bg-normal'
                        , key = othis.data('key')
                        , options = {};

                othis.css('background-color', '#5FB878').siblings().removeAttr('style');
                options[key] = othis.data('value');
                ins3.reload(options);
            }
        };

        //监听开关
        form.on('switch(autoplay)', function () {
            ins3.reload({
                autoplay: this.checked
            });
        });

        $('.demoSet').on('keyup', function () {
            var value = this.value
                    , options = {};
            if (!/^\d+$/.test(value))
                return;

            options[this.name] = value;
            ins3.reload(options);
        });

        //其它示例
        $('.demoTest .layui-btn').on('click', function () {
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });
    });
    layui.use(['element'], function () {


    })
</script>


<script>
    layui.use('upload', function () {
        var $ = layui.jquery, upload = layui.upload;

        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1upload'
            , url: 'uploadHouse.do'
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
</script>


</body>
</html>
