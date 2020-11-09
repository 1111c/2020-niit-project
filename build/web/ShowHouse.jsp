<%@page import="com.houserent.pojo.Reply"%>
<%@page import="com.houserent.pojo.Comment"%>
<%@page import="com.houserent.pojo.Comment"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShowHouse</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <script src="resources/js/jquery.js" type="text/javascript"></script>
        <link href="resources/layui/css/layui.css" rel="stylesheet" type="text/css"/>
        <script src="resources/layui/layui.js" type="text/javascript"></script>
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
                            <a>${house.hdescription}</a>
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
                        <img  width="400px" height="400px" src="${house.hpicture}"/>  

                    </div>
                </div>





                <div class="layui-col-md5">
                    <div class="grid-demo">
                        <a style="font-size: 35px; font-weight: 2px; color: #FF5722">价格</a>
                        <a style="font-size: 15px;color: #FF5722">${house.hrentprice}万</a>
                        <hr style="margin-top: 25px;">
                        <div style="margin-top: 25px;">
                            <div style="float: left">
                                <a style="font-size: 25px;font-weight: 3px;">几室几厅</a>
                            </div>
                            <div style="float:left">
                                <a style="font-size: 25px;font-weight: 3px; margin-left: 80px; ">朝向</a>
                            </div>
                            <div style="float: left">
                                <a style="font-size: 25px;font-weight: 3px;margin-left: 80px;">面积${house.harea}</a>
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
                                    <td>${house.hcname}</td>
                                </tr>
                                <tr>
                                    <td>所在区城</td>
                                    <td>${house.hcity}</td>
                                </tr>
                                <tr>
                                    <td>看房时间</td>
                                    <td>${house.hcreatetime}</td>
                                </tr>
                                <tr>
                                    <td>房产号</td>
                                    <td>${house.hnumber}</td>
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
                                    <td style="color:black">${house.lno}</td>
                                </tr> 
                                <tr>
                                    <td></td>
                                    <td>建筑面积</td>
                                    <td style="color:black">${house.harea}</td>
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
                                    <td style="color:black">是</td>
                                    <td>配备电梯</td>
                                    <td style="color:black">是</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>供暖方式</td>
                                    <td style="color:black">是</td>
                                    <td>产权年限</td>
                                    <td style="color:black">无</td>
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
                                    <td>小区介绍</td>
                                    <td style="color:black">本小区是2006年封闭小区，有3栋11层小高层，有18栋多层</td>
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
                                    <td>装修描述</td>
                                    <td style="color:black"> 房子是全屋地暖，客厅是瓷砖，卧室是地板，简约风格装修，很适合年轻人住</td>
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
                                    <td style="color:black">房子是南北卧室南客厅，采光很好，主卧带阳台，阳台已经改好上水可放洗衣机，带独立餐厅。</td>
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
                                    <td style="color:black">房子20万装修未住，南北通透，可带家具家电，中间楼层，采光好。</td>
                                </tr> 
                            </tbody>
                        </table> 
                    </div>
                </div>
                <!--                    <div class="layui-col-md4">
                                        <div class="grid-demo" style="margin-top: 100px;margin-left: 20px;">
                                            <div>
                                                <a style=" font-size: 25px;font-weight: bolder;">推房中介</a>
                                            </div>
                                            <hr style="margin-top: 20px;">
                                            <div style="float: left;">
                                                <img src="resources/image/M1.jpg" style="width: 200px; height: 250px;" alt=""/>
                                            </div>
                                            <div style="float: left; margin-left: 20px;">
                                                <a style=" font-size:25px;">${house.howner}</a>
                                                <br/><br/><br/>
                                                <a style="font-size: 20px;">${house.hphone}</a>
                                            </div>    
                                            <div style="clear: both"></div>
                                        </div>
                                    </div>-->
            </div>
            <div style="margin-top: 100px;">
                <a style=" font-size: 25px;font-weight: bolder;">为您推荐优质房源</a>
            </div>
            <hr style="margin-top: 20px;">

            <div style="margin-top: 20px;">

                <table style="margin: 0px auto">
                    <tr>
                        <td>
                            <img src="resources/image/SH/1.jpg" style="width:250px;height: 180px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;">青岛 崂山</a>
                            <br/>
                            <a>110平米</a>/<a>546万</a>
                        </td>
                        <td>
                            <img src="resources/image/SH/2.jpg" style="width:250px;height: 180px;margin-left: 150px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">青岛 市北</a>
                            <br/>
                            <a style="margin-left: 150px;">123平米</a>/<a>392万</a>
                        </td>
                        <td>
                            <img src="resources/image/SH/3.jpg" style="width:250px;height: 180px;margin-left: 150px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">青岛 李沧</a>
                            <br/>
                            <a style="margin-left: 150px;">72平米</a>/<a>130万</a>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <img src="resources/image/SH/4.jpg" style="width:250px;height: 180px;margin-top: 20px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;">青岛 市南</a>
                            <br/>
                            <a>69平米</a>/<a>186万</a>
                        </td>
                        <td>
                            <img src="resources/image/SH/5.jpg" style="width:250px;height: 180px;margin-left: 150px;margin-top: 20px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">青岛 李沧</a>
                            <br/>
                            <a style="margin-left: 150px;">95平米</a>/<a>198万</a>
                        </td>
                        <td>
                            <img src="resources/image/SH/6.jpg" style="width:250px;height: 180px;margin-left: 150px;margin-top: 20px;background-size: cover">
                            <br/>
                            <a style="font-size: 20px;margin-left: 150px;">青岛 崂山</a>
                            <br/>
                            <a style="margin-left: 150px;">73平米</a>/<a>367万</a>
                        </td>

                    </tr>
                </table>
            </div>


        </div> 




        <!--position: absolute; margin-top: -1450px; margin-bottom: 200px;-->
        <div style=" margin-left: 100px; margin-top: 50px; " >    

            <div  id="comment"  style=" border: 1px solid; position: absolute; 
                  background: #fff;
                  width:  550px;
                  height: 300px;
                  position: fixed;
                  left: 50%;
                  top: 50%;
                  z-index: 11;
                  margin: -200px 0 0 -350px;
                  display: none;
                  border-top:8px solid  rgba(100,100,100,0.15); 
                  border-right:8px solid  rgba(100,100,100,0.15);  
                  border-bottom: 8px solid  rgba(100,100,100,0.15);  
                  border-left:8px solid  rgba(100,100,100,0.15);
                  border-radius: 10px;
                  padding:  solid 3px ;
                  ">


                <div  style=" background: #ebf5ea; width: 550px; height: 50px;    align-content: center; ">

                    <span  style=" float:  right;  display:  inline-block;  margin-top: 13px;  margin-right: 30px;">
                        <a href="javascript:;" onclick="close_dialog()" style=" color: rgba(200,100,100,1);  text-decoration: none;">&nbsp;&nbsp;&nbsp;x</a>
                    </span>
                    <h2 style=" float:  left;  font: 18px Arial, Helvetica, sans-serif; color: #072;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;写短评:</h2>
                </div>

                <div class="wfdiv3" style="margin-top: 30px; margin-left: 30px;">

                    <form  method="post" action="addComment.do" >
                        <h2 style=" float:  left;  font: 24px Arial, Helvetica, sans-serif; color: #072;">&nbsp;&nbsp; 简短评论:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;23个评价</h2>
                        <input type="hidden" name="UName"  value="<%=request.getSession().getAttribute("UName")%>"/>
                        <input type="hidden" name="Hnumber"   value="<%=request.getSession().getAttribute("Hnumber")%>"/>
                        <input type="hidden" name="UImage"    value="<%=request.getSession().getAttribute("UImage")%>"/>

                        <textarea   name="content" style=" font: 18px Arial, Helvetica, sans-serif; color: #072; display:  inline-block; border:rgba(100,100,100,0.15) 3px solid;  margin-left: 18px;  margin-top: 10px; margin-bottom: 10px;width: 450px; height: 100px;  resize: none; ">
                                        
                           
                        </textarea>
                        </br> 
                        <input type="submit"  style=" width:60px; height: 40px; background: #fff; float: right;font: 18px Arial, Helvetica, sans-serif; color: #072;  display:  inline-block; margin-right: 60px; margin-top: 10px; " value="提交"  /> 
                    </form> 
                </div>
            </div>


            <div  style="padding-left: 100px; margin-left: -200px; padding-top: 30px;padding-right: 100px;  " >
                <p  style=" font-size: 2em;   "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  房屋短评......</p>
                <br/><br/><br/>
                <a style="font-size: 20px; text-decoration:none; color:#072; float:right;  margin-right: 150px;  margin-top:-80px; " href="javascript:;" 
                   onclick="showComment()"  
                   onmouseover="this.style.color = 'blue';"
                   onmouseout="this.style.color = '#072';"
                   >评论</a> 
            </div>  

            <%
                request.setCharacterEncoding("UTF-8");
                response.setContentType("text/html; charset=UTF-8");

                List<Comment> lc = (List<Comment>) request.getSession().getAttribute("lc");
                if (lc != null)
                    for (Comment comment : lc) {

            %>

            <div style=" margin-left: 100px; ">
                <div  id="" value="" style="   border-top:  1px solid #ccc;">
                    <div style=" margin-top: 20px; height: 10px;" > </div>  
                    <img src="<%=comment.getUImage()%>"  width="60px"  height="40px"  />
                    <div style=" position: absolute; margin-left: 80px; margin-top: -20px; "> 
                        <span style=" position:  relative;   display:  inline-block;     margin-bottom: 20px; margin-right: 10px; align-content: center;font-size: 15px; color:#072;">&nbsp;&nbsp;&nbsp;<%=comment.getUName()%>:&nbsp;&nbsp;&nbsp;</span>
                        <br/>
                        <div  style=" margin-top: -40px; margin-bottom: 20px;  text-align: center;font-size: 15px; color:#072;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%=comment.getContent()%>
                        </div> 
                        <span style=" float:  left;  display: inline-block;       margin-top: -50px;  margin-left: 13px;  "> 
                            <font  style=" font-size: 12px; "> <%=request.getSession().getAttribute("datetime")%> </font>
                        </span> 
                    </div> 
                </div>   


                </br>  
            </div> 

            <% }%>

        </div> 


        <script>
            function showComment() {


                var uid = "<%=request.getSession().getAttribute("UName")%>";
                console.log(uid);
                if (uid === null) {
                    window.location.href = "Login.do";
                } else {
                    var target = document.getElementById('comment');
                    if (target.style.display == "block") {
                        target.style.display = "none";
                    } else {
                        target.style.display = "block";
                    }

                }

            }
            function showReply() {

                var uid = "<%=request.getSession().getAttribute("UName")%>"
                console.log(uid);
                if (uid === null) {
                    window.location.href = "Login.do";
                } else {
                    var target = document.getElementById('reply');
                    if (target.style.display == "block") {
                        target.style.display = "none";
                    } else {
                        target.style.display = "block";
                    }

                }
            }

            function close_dialog() {
                var target = document.getElementById('comment');
                if (target.style.display == "block") {
                    target.style.display = "none";
                } else {
                    target.style.display = "block";
                }
            }

            function close_dialog2() {
                var target = document.getElementById('reply');
                if (target.style.display == "block") {
                    target.style.display = "none";
                } else {
                    target.style.display = "block";
                }
            }

        </script>       





    </body>
</html>
