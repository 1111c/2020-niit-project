<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查找房源</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <link rel="stylesheet" href="resources/css/reset.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <script src="resources/js/jquery.js" type="text/javascript"></script>
        <script src="resources/layui/layui.js" type="text/javascript"></script>
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>
    </head>

    <body>
        <%@ include file="Header.jsp"%>
        <form class="layui-form" action="">
            <div style="padding: 20px; background-color: #F2F2F2;">
                <div class="layui-row layui-col-space15">

                    <div class="layui-col-md12">
                        <div class="layui-card">

                            <div class="layui-card-body">
                                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                    <legend>在售房屋</legend>
                                </fieldset>   
                                <div class="searchbox">
                                    <div class="mod_select">
                                        <div class="select_box">
                                            <span class="select_txt">房产号</span>
                                            <span class="select-icon"></span>
                                            <ul class="option">
                                                <li>房产号</li>
                                                <li>位置</li>
                                                <li>面积</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <form action="" >
                                        <input type="hidden" name="" value="房产号" id="select_value">
                                        <input type="text" name="" id="searchPlaceholder" class="import" placeholder="请输入房产号">
                                        <input type="submit" value="搜   索" class="btn-search">
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


                                </table>

                            </div>

                            <div style="width: 1100px"> <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                    <legend>所有房源</legend>
                                </fieldset>  
                                <b style="font-size: 30px;margin-left: 20px;margin-top: 30px">共找到<span style="color:#00ae66">1</span>套房源</b>
                                <hr class="layui-bg-gray">

                            </div>
                            <div style="margin-bottom: 30px;margin-top: 30px">
                                <table class="layui-hide" id="test"></table>


                                <%@ include file="bottom.jsp"%>

                            </div>
                        </div>
                    </div>
                </div> 


        </form>  



        <!--搜索框的script------------------------------------------------------------------------------------->      
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
            $('#searchPlaceholder').prop('placeholder', '请输入位置');
            } else {
            $('#searchPlaceholder').prop('placeholder', '请输入房产号');
            }
            });
            })
        </script>


       




        <script type="text/javascript">
                    layui.use(['element', 'layer'], function () {
                    var element = layui.element;
                    var layer = layui.layer;
                    //监听折叠
                    element.on('collapse(test)', function (data) {
                    layer.msg('展开状态：' + data.show);
                    });
                    });
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

 




    </body>
</html>
