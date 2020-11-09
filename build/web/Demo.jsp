 
<%@page import="com.houserent.pojo.Reply"%>
<%@page import="com.houserent.pojo.Reply"%>
<%@page import="java.util.List"%>
<%@page import="com.houserent.pojo.Comment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/IJstyle.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>

    </head>
    <body  >


       <div style=" margin-left: 100px;" >    

                            <div  id="comment"  style=" border: 1px solid; position: absolute; 
                                  background: #fff;
                                  width:  550px;
                                  height: 400px;
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
                                        <input type="hidden" name="UName"  value="1"/>
                                        <input type="hidden" name="Hnumber"   value="1"/>
                                        <input type="hidden" name="UImage"    value="4044a638-78dc-42ce-aa08-61cbb6fdaa49.jpg"/>

                                        <textarea   name="content" style=" font: 18px Arial, Helvetica, sans-serif; color: #072; display:  inline-block; border:rgba(100,100,100,0.15) 3px solid;  margin-left: 18px;  margin-top: 10px; margin-bottom: 10px;width: 450px; height: 100px;  resize: none; ">
                                        </textarea>
                                        </br> 
                                        <input type="submit"  style=" width:60px; height: 40px; background: #fff; float: right;font: 18px Arial, Helvetica, sans-serif; color: #072;  display:  inline-block; margin-right: 60px; margin-top: 10px; " value="提交"  /> 
                                    </form> 
                                </div>
                            </div>


                            <div  id="reply"  style=" border: 1px solid; position: absolute; 
                                  background: #fff;
                                  width:  550px;
                                  height: 400px;
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
                                        <a href="javascript:;" onclick="close_dialog2()" style=" color: rgba(200,100,100,1);  text-decoration: none;">&nbsp;&nbsp;&nbsp;x</a>
                                    </span>
                                    <h2 style=" float:  left;  font: 18px Arial, Helvetica, sans-serif; color: #072;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回复:</h2>
                                </div>

                                <div class="wfdiv3" style="margin-top: 30px; margin-left: 30px;">
                                    <form  method="post" action="addReply.do" >
                                        <h2 style=" float:  left;  font: 24px Arial, Helvetica, sans-serif; color: #072;">&nbsp;&nbsp; 简短回复:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;23个回复</h2>
                                        <input type="hidden"  name="UName"   value="石崇重"/>
                                        <input type="hidden"  name="Cid"    value="1"/>
                                        <input type="hidden"  name="UImage"   value="4044a638-78dc-42ce-aa08-61cbb6fdaa49.jpg"/>

                                        <textarea  name="content" style=" font: 18px Arial, Helvetica, sans-serif; color: #072; display:  inline-block; border:rgba(100,100,100,0.15) 3px solid;  margin-left: 18px;  margin-top: 10px; margin-bottom: 10px;width: 450px; height: 100px;  resize: none; ">
                                        </textarea>
                                        </br> 
                                        <input type="submit"  style=" width:60px; height: 40px; background: #fff; float: right;font: 18px Arial, Helvetica, sans-serif; color: #072;  display:  inline-block; margin-right: 60px; margin-top: 10px; " value="提交"  /> 
                                    </form> 
                                </div>
                            </div>  
                            <div  style="padding-left: 100px;padding-top: 30px;padding-right: 100px" >
                                <p  style=" font-size: 2em;   ">  房屋短评......</p>
                                <a style="font-size: 20px; text-decoration:none; color:#072; float:right; margin-top:-65px; " href="javascript:;" 
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

                            <div style=" margin-left: 100px;">
                                <div  id="" value="" style="   border-top:  1px solid #ccc;">
                                    <div style=" margin-top: 20px; height: 10px;" > </div>  
                                    <img src="uploadImage/<%=comment.getUImage()%>"  width="60px"  height="40px"  />
                                    <div style=" position: absolute; margin-left: 80px; margin-top: -20px; "> 
                                        <span style=" position:  relative;   display:  inline-block;     margin-bottom: 20px; margin-right: 10px; align-content: center;font-size: 15px; color:#072;"><%=comment.getUName()%>:</span>
                                        <div  style=" margin-top: -40px; margin-bottom: 20px;  text-align: center;font-size: 15px; color:#072;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=comment.getContent()%>
                                        </div> 

                                        <!--                        <span style=" position: relative;  display:  inline-block;  margin-left: 10px; margin-right: 10px;  "> 
                                                                    <img src="uploadImage/star14.png" alt=""  width="15px" height="15px;"/> 
                                                                    <img src="uploadImage/star14.png" alt=""  width="15px" height="15px;"/> 
                                                                    <img src="uploadImage/star14.png" alt=""  width="15px" height="15px;"/>
                                                                    <img src="uploadImage/star14.png" alt=""  width="15px" height="15px;"/>
                                                                    <img src="uploadImage/star14.png" alt=""  width="15px" height="15px;"/>
                                                                </span>-->
                                    </div> 
                                </div>   

                                <span style="float:  right;">
                                    <a style=" color: #3ff; text-decoration:none;font-size: 15px; color:#072; margin-right:100px; " href="javascript:;"   onclick="showReply()" >回复</a> 
                                </span> 
                                <span style=" float:  right;     display:  inline-block;     margin-left: 10px; margin-right: 10px;   "> 
                                    <%=request.getSession().getAttribute("datetime")%>
                                </span>        
                                </br> 
                                <%
                                    List<Reply> lr = (List<Reply>) request.getSession().getAttribute("lr");
                                    if (lr != null)
                                        for (Reply reply : lr) {
                                %>

                                <div style=" margin-left: 100px;">
                                    <div  id="" value="" style="   border-top:  1px solid #ccc;">
                                        <div style=" margin-top: 20px; height: 10px;" > </div>  
                                        <img src="uploadImage/<%=reply.getUImage()%>"  width="60px"  height="40px"  />
                                        <div style=" position: absolute; margin-left: 80px; margin-top: -20px; "> 
                                            <span style=" position:  relative;   display:  inline-block;     margin-bottom: 20px; margin-right: 10px; align-content: center;font-size: 15px; color:#072;"><%=reply.getUName()%>:</span>
                                            <div  style=" margin-top: -40px; margin-bottom: 20px;  text-align: center;font-size: 15px; color:#072;">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=reply.getContent()%>
                                            </div> 

                                        </div> 
                                    </div>   

                                    <span style="float:  right;">
                                        <a style=" color: #3ff; text-decoration:none;font-size: 15px; color:#072; margin-right:100px; " href="javascript:;"   onclick="showReply()" >回复</a> 
                                    </span> 
                                    <span style=" float:  right;     display:  inline-block;     margin-left: 10px; margin-right: 10px;   "> 
                                        <%=request.getSession().getAttribute("datetime")%>
                                    </span>        
                                    </br> 
                                    <% }%>   


                                </div> 

                                <% }%>

                            </div> 


                            <script>
                                function showComment() {

                                    var target = document.getElementById('comment');
                                    if (target.style.display == "block") {
                                        target.style.display = "none";
                                    } else {
                                        target.style.display = "block";
                                    }
                                    //
                                    //                    var uid = <%=request.getSession().getAttribute("userid")%>
                                    //                    if (uid == null) {
                                    //                        window.location.href = "login.jsp?bak=1&ul=showmovie.jsp?mid=<%=request.getParameter("mid")%>";
                                    //                    } else {
                                    //                        var target = document.getElementById('comment');
                                    //                        if (target.style.display == "block") {
                                    //                            target.style.display = "none";
                                    //                        } else {
                                    //                            target.style.display = "block";
                                    //                        }
                                    //
                                    //                    } 

                                }
                                function showReply() {

                                    var target = document.getElementById('reply');
                                    if (target.style.display == "block") {
                                        target.style.display = "none";
                                    } else {
                                        target.style.display = "block";
                                    }

                                    //                    var uid = <%=request.getSession().getAttribute("userid")%>
                                    //                    if (uid == null) {
                                    //                        window.location.href = "login.jsp?bak=1&ul=showmovie.jsp?mid=<%=request.getParameter("mid")%>";
                                    //                    } else {
                                    //                        var target = document.getElementById('reply');
                                    //                        if (target.style.display == "block") {
                                    //                            target.style.display = "none";
                                    //                        } else {
                                    //                            target.style.display = "block";
                                    //                        }
                                    //
                                    //                    }
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
