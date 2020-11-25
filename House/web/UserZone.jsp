
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserZone</title>
        <link rel="stylesheet" href="resources/layui/css/layui.css">
        <script src="resources/layui/layui.all.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="css/personal-infor.css">
        <!-- boorstrap必需CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootsnav.css">
        <link type="text/css" href="css/pe-icon-7-stroke.css" rel="stylesheet">
        <!-- js -->
        <script src="https://static.pengyaou.com/js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript"  src="js/tab-left.js"></script>
    </head>


    <body>
        <%@include file="Header.jsp"%>

<!--        <div class="demo1-bg">
            <div class="demo1">
                <div>
                    <div style="margin-top: 140px; margin-left: 100px; float: left">
                        <img src="${user.UPicture}" class="round_icon"  alt="">
                    </div>
                    <div style="float: left;  margin-top: 180px; margin-left: 20px;">
                        <a style="font-size: 30px;font-weight: bolder; color: #2F4056">${user.UName}</a>
                    </div>
                    <div style="clear: both"></div>
                </div>
            </div>
        </div>-->

  <div class="all-bgc">
            <div class="top">  <!-- 图标  字体  小控件 -->
                <!-- <div class="top_icon"></div> -->
                <div class="top_left">
                    <a href="index.html">
                        <img alt="" src="pic/logo.png">
                    </a>
                </div>

                <div class="qa-search-wrap-left">
                    <!-- 顶部搜索框 -->
                    <form  class="comp-Searcher" id="qaNavSearcherForm" type="post" action="#">
                        <div class="ipt-wrap">
                            <input class="ipt" id="qaNavSearcherIpt" type="text" placeholder="在这儿输入您的问题">
                        </div>
                        <button class="right-icon" type="submit">
                            <i class="iconfont">搜&nbsp;&nbsp;索</i>
                        </button>
                    </form>
                </div>

                <div class="top_right">
                    <!-- 登录注册按钮 -->
                    <ul class="ul_son">
                        <li><a href="index.html">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                        <li class="exit" onclick="reLogin()"><a id="exit" href="#">退&nbsp;&nbsp;&nbsp;&nbsp;出</a></li>
                    </ul>
                </div>
                <hr />	<!-- 分割线 -->
            </div>

            <div class="headerSub-mod">
                <!-- 分隔框banner -->
                <div class="headerSub clearfix">
                    <img id="img" src="${user.UPicture}" class="user-photo img" alt="用户头像">
                    <div class="user-info">
                        <div class="info-sup clearfix">
                             
                        </div>
                        <div class="info-sub clearfix">
                            <ul>
                                <li class="user-account">
                                    账户名：<span class="nickname">${user.UName}</span>
                                </li>
                                <i class="split-icon"></i>
                                <li class="user-type">
                                    <span>租客用户</span>
                                    <!-- <span>房东用户</span> -->
                                    <!-- <span>管理员用户</span> -->
                                </li>
                                <i  class="split-icon"></i>
                                
                            </ul>
                        </div>
                    </div>
                    <a class="info-modify" href="#"><button>修改资料&gt;</button></a>
                </div>
            </div>

            <div class="tab-bgc">
                <!-- 侧选项卡 -->
                <div id="TabMain">
                    <div class="tabItemContainer">
                        <li> <a class="tabItemCurrent">个人资料</a></li>
                       
                    </div>
                    <div class="tabBodyContainer">
                        <div class="tabBodyItem tabBodyCurrent ">
                            <!-- tab-1 -->
                            <div class="right-cont">
                                <ul class="tab-list clearfix"> <!-- 个人资料标题 -->
                                    <li><a href="#" class="cur">个人资料</a></li>
                                </ul>
                                <!-- 个人资料信息 -->
                                <div class="profile"> 
                                    <div class="profile-title">
                                        <span>基本账号资料</span>
                                    </div>
                                    <ul class="profile-list">
                                        <li class="photo">
                                            <span class="key">头像</span>
                                            <img class="img" src="${user.UPicture}" alt="你的头像">
                                        </li>
                                        <!-- <li class="account">
                                                <span class="key">帐号</span>
                                                <span class="value">tK1BAwp</span>
                                        </li> -->
                                        <li class="name">
                                             <span class="key">用户名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                             <span class="key">${user.UName}</span> 
                                        </li>
                                        <li class="email">
                                            <span class="key">邮箱</span>
                                            <span class="value emailV">${user.UEmail}</span>
                                            <a class="operate-btn" href="#">绑定</a>
                                        </li>
                                        <li class="phone">
                                            <span class="key">手机</span>
                                            <span class="value phoneV">${user.UPhone}</span>
                                        </li>
                                        <li class="password">
                                            <span class="key">密码</span>
                                            <span class="value passwordV">暂无提供</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    


                    </div>
                </div>
            </div>

        </div>

        










        <script src="resources/layui/layui.js"></script>
    


    </body>
</html>
