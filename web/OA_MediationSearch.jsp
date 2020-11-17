 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OA_MediationSearch</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <link rel="stylesheet" href="resources/css/reset.css">
        <link rel="stylesheet" href="resources/css/style.css">
    </head>
     
    <body> 
        <div class="searchbox">
            <div class="mod_select">
                <div class="select_box">
                    <span class="select_txt">中介昵称</span>
                    <span class="select-icon"></span>
                    <ul class="option">
                        <li>中介昵称</li>
                        <li>中介电话</li>
                        <li>中介邮箱</li>
                    </ul>
                </div>
            </div>
            <form action="" >
                <input type="hidden" name="" value="中介昵称" id="select_value">
                <input type="text" name="" id="searchPlaceholder" class="import" placeholder="请输入中介昵称">
                <input type="submit" value="搜   索" class="btn-search">
            </form>
        </div>
        <div style="margin: -25px 20px;">
            <table class="layui-hide" id="test"></table>
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <!-----------------------------------搜索框-------------------------------------------->
  <script src="resources/js/jquery.min.js"></script>
  <script>
    $(function(){
        $(".select_box").click(function(event){   
            event.stopPropagation();
            $(this).find(".option").toggle();
            $(this).parent().siblings().find(".option").hide();
        });
        $(document).click(function(event){
            var eo=$(event.target);
            if($(".select_box").is(":visible") && eo.attr("class")!="option" && !eo.parent(".option").length)
            $('.option').hide();                                    
        });
        $(".option li").click(function(){
            var check_value=$(this).text();
            var zlValue = $('.option li:eq(1)').html();
            var bqValue = $('.option li:eq(2)').html();
            $(this).parent().siblings(".select_txt").text(check_value);
            $("#select_value").val(check_value);
            if(check_value == zlValue) {
                $('#searchPlaceholder').prop('placeholder','请输入中介电话');
            }else if(check_value == bqValue) {
                $('#searchPlaceholder').prop('placeholder','请输入中介邮箱');
            }else {
                $('#searchPlaceholder').prop('placeholder','请输入中介昵称');
            }
        });
    })
  </script>
  <!----------------------数据表格----------------------------------------------------------------->
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
       {field: 'mname', width: 100, title: '中介昵称'}
                            , {field: 'msex', width: 80, title: '性别', sort: true}
                            , {field: 'mphone', width: 80, title: '电话'}
                            , {field: 'memail', title: '邮箱', minWidth: 150}
                            , {field: 'mdate', width: 120, title: '出生日期', sort: true}
                            , {field: 'mpassword', width: 135, title: '密码'}
    ]]
    
  });
});
</script>

    </body>

</html>





