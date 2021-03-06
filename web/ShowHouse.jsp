<%-- 
    Document   : ShowHouse
    Created on : 2019-11-26, 10:42:52
    Author     : xiaowen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShowHouse</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
                <style type="text/css">
.container {
				width: 485px;
				height: 50px;
				float: right;
                                margin-top: 10px;
			}
			
			.parent {
				width: 100%;
				height: 42px;
				top: 4px;
				position: relative;
			}
			
			.parent>input:first-of-type {
				/*输入框高度设置为40px, border占据2px，总高度为42px*/
				width: 380px;
				height: 40px; 
				border: 1px solid #eeeeee;
				font-size: 16px;      
				outline: none;
			}
			
			.parent>input:first-of-type:focus {
				border: 1px solid #eeeeee;
				padding-left: 10px;
			}
			
			.parent>input:last-of-type {
				/*button按钮border并不占据外围大小，设置高度42px*/
				width: 100px;
				height: 42px; 
				position: absolute;
				background: #eeeeee;
				border: 1px solid #eeeeee;
				color: #2F4056;
				font-size: 16px;
				outline: none;
			}

        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <div style="padding: 30px; background-color: #F2F2F2;">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md6">
      <div class="layui-card">
          <div class="layui-card-body">
              <div style="float: left;"><img src="resources/image/SH1.png" style="width: 80px; height: 80px;" alt=""/></div>
              <div style="float: left; margin-top: 40px; margin-left: 20px;"><a style="font-size: 30px;font-weight: 1;color: #2F4056">连接每个家的故事</a></div>
              <div style="clear: both"></div>
          </div>
        <div class="layui-card-body">
            <h2 style="color:#2F4056"><b>房屋简单描述</b></h2>
            <a>简单描述2</a>
        </div>
      </div>
    </div>
    <div class="layui-col-md6">
      <div class="layui-card">
          <div class="layui-card-body">
              <div class="container">
                  <form action="" class="parent">
                      <input type="text" placeholder="请输入搜索的关键字">
                      <input type="button" value="查找">
                  </form>
              </div>
              <div style="clear: both"></div>

          </div>
          <div class="layui-card-body" >
              <br/>
              <div style="float: right">
                  <a href="" class="layui-btn layui-btn-primary layui-btn-lg"  >收藏房源</a>
              </div>
              <div style="clear:both"></div>
          </div>
      </div>
    </div>
  </div>
        </div>
        
      
        <div class="layui-container" style="margin-top: 50px; ">
              <div class="layui-row layui-col-space30">
                  <div class="layui-col-md7">
                      <div class="grid-demo grid-demo-bg1">
                          <div class="layui-row">
                              <div class="layui-carousel" id="test1">
                                  <div carousel-item>
                                      <div style=" text-align: center;">条目1</div>
                                      <div style=" text-align: center;">条目2</div>
                                      <div style=" text-align: center;">条目3</div>
                                      <div style=" text-align: center;">条目4</div>
                                      <div style=" text-align: center;">条目5</div>
                                  </div>
                              </div>  
                          </div>
                      </div>
                  </div>
                  <div class="layui-col-md5">
                      <div class="grid-demo">
                          <a style="font-size: 35px; font-weight: 2px; color: #FF5722">价格</a>
                          <a style="font-size: 15px;color: #FF5722">万</a>
                          <hr style="margin-top: 25px;">
                          <div style="margin-top: 25px;">
                              <div style="float: left">
                                  <a style="font-size: 25px;font-weight: 3px;">几室几厅</a>
                              </div>
                              <div style="float:left">
                                  <a style="font-size: 25px;font-weight: 3px; margin-left: 80px; ">朝向</a>
                              </div>
                              <div style="float: left">
                                  <a style="font-size: 25px;font-weight: 3px;margin-left: 80px;">面积</a>
                              </div>
                              <div style="clear: both"></div>
                          </div>
                          <hr style="margin-top: 25px;">
                          <table class="layui-table" lay-even="" lay-skin="nob">
                              <colgroup>
                                  <col width="30">
                                  <col width="150">
                              </colgroup>
                              <tbody>
                                  <tr>
                                      <td>小区名称</td>
                                      <td>汉族</td>
                                  </tr>
                                  <tr>
                                      <td>所在区城</td>
                                      <td>拉丁美裔</td>
                                  </tr>
                                  <tr>
                                      <td>看房时间</td>
                                      <td>汉族</td>
                                  </tr>
                                  <tr>
                                      <td>房产号</td>
                                      <td>华夏族（汉族）</td>
                                  </tr>
                              </tbody>
                          </table> 
                      </div>
                  </div>
              </div>
            <hr class="layui-bg-cyan" style="margin-top: 35px;">
            <div class="layui-row layui-col-space30">
                <div class="layui-col-md8">
                    <div class="grid-demo grid-demo-bg1">
                        <div style="margin-top: 100px;">
                            <a style=" font-size: 25px;font-weight: bolder;">基本信息</a>
                        </div>
                        <hr style="margin-top: 20px;">
                        <table class="layui-table" lay-skin="nob" style="margin-top: 20px;">
                            <colgroup>
                                <col width="120">
                                <col width="90">
                                <col>
                                <col width="90">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td>基本属性</td>
                                    <td>房屋户型</td>
                                    <td style="color:black">几室几厅</td>
                                    <td>所在楼层</td>
                                    <td style="color:black">楼层</td>
                                </tr> 
                                <tr>
                                    <td></td>
                                    <td>建筑面积</td>
                                    <td style="color:black">1989-10-14</td>
                                    <td>户型结构</td>
                                    <td style="color:black">人生似修行</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>房屋朝向</td>
                                    <td style="color:black">朝向</td>
                                    <td>梯户比列</td>
                                    <td style="color:black">一楼几户</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>装修情况</td>
                                    <td style="color:black">是否装修</td>
                                    <td>配备电梯</td>
                                    <td style="color:black">是/否</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>供暖方式</td>
                                    <td style="color:black">是/否</td>
                                    <td>产权年限</td>
                                    <td style="color:black">_年</td>
                                </tr>
                               
                            </tbody>
                        </table> 
                        
                        <div style="margin-top: 100px;">
                            <a style=" font-size: 25px;font-weight: bolder;">房源特色</a>
                        </div>
                        <hr style="margin-top: 20px;">
                        <table class="layui-table" lay-skin="nob" style="margin-top: 20px;">
                            <colgroup>
                                <col width="120">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td>周边配套</td>
                                    <td style="color:black">啥都行写啥都行写啥都行</td>
                                </tr> 
                            </tbody>
                        </table> 
                        <hr style="margin-top: 20px;">
                        <table class="layui-table" lay-skin="nob" style="margin-top: 20px;">
                            <colgroup>
                                <col width="120">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td>交通出行</td>
                                    <td style="color:black">写啥都行</td>
                                </tr> 
                            </tbody>
                        </table> 
                        <hr style="margin-top: 20px;">
                        <table class="layui-table" lay-skin="nob" style="margin-top: 20px;">
                            <colgroup>
                                <col width="120">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td>户型介绍</td>
                                    <td style="color:black">写啥都行</td>
                                </tr> 
                            </tbody>
                        </table> 
                        <hr style="margin-top: 20px;">
                        <table class="layui-table" lay-skin="nob" style="margin-top: 20px;">
                            <colgroup>
                                <col width="120">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td>核心卖点</td>
                                    <td style="color:black">写啥都行</td>
                                </tr> 
                            </tbody>
                        </table> 
                    </div>
                </div>
                <div class="layui-col-md4">
                    <div class="grid-demo" style="margin-top: 100px;margin-left: 20px;">
                        <div>
                            <a style=" font-size: 25px;font-weight: bolder;">推房中介</a>
                        </div>
                        <hr style="margin-top: 20px;">
                        <div style="float: left;">
                            <img src="resources/image/M1.jpg" style="width: 200px; height: 250px;" alt=""/>
                        </div>
                        <div style="float: left; margin-left: 20px;">
                            <a style=" font-size:25px;">名字</a>
                            <br/><br/><br/>
                            <a style="font-size: 20px;">电话号码</a>
                        </div>    
                        <div style="clear: both"></div>
                    </div>
                </div>
            </div>
            <div style="margin-top: 100px;">
                <a style=" font-size: 25px;font-weight: bolder;">为您推荐优质房源</a>
            </div>
            <hr style="margin-top: 20px;">
            
            <div style="margin-top: 20px;">

                <table style="margin: 0px auto">
                    <tr>
                        <td>
                            <img src="resources/image/" style="width:250px;height: 180px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;">所在市与区</a>
                            <br/>
                            <a>面积</a>/<a>价钱</a>
                        </td>
                        <td>
                            <img src="resources/image/" style="width:250px;height: 180px;margin-left: 150px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">所在市与区</a>
                            <br/>
                            <a style="margin-left: 150px;">面积</a>/<a>价钱</a>
                        </td>
                        <td>
                            <img src="resources/image/" style="width:250px;height: 180px;margin-left: 150px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">所在市与区</a>
                            <br/>
                            <a style="margin-left: 150px;">面积</a>/<a>价钱</a>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <img src="resources/image/" style="width:250px;height: 180px;margin-top: 20px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;">所在市与区</a>
                            <br/>
                            <a>面积</a>/<a>价钱</a>
                        </td>
                        <td>
                            <img src="resources/image/" style="width:250px;height: 180px;margin-left: 150px;margin-top: 20px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">所在市与区</a>
                            <br/>
                            <a style="margin-left: 150px;">面积</a>/<a>价钱</a>
                        </td>
                        <td>
                            <img src="resources/image/" style="width:250px;height: 180px;margin-left: 150px;margin-top: 20px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">所在市与区</a>
                            <br/>
                            <a style="margin-left: 150px;">面积</a>/<a>价钱</a>
                        </td>

                    </tr>
                </table>
            </div>
            
           
</div> 

      <script src="resources/layui/layui.js"></script>
      <!---------------------轮播的 script ------------------------------------------>
      <script>
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#test1'
    ,width: '600px' //设置容器宽度
    ,height: '330px'
    ,arrow: 'always' //始终显示箭头
    //,anim: 'updown' //切换动画方式
  });
});
</script>
    </body>
</html>
