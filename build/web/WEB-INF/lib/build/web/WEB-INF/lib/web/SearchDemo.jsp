<%@page import="java.util.List"%>
<%@page import="com.houserent.pojo.House"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Search</title>
        <meta charset="utf-8">
        <meta name="author" content="pixelhint.com">
        <meta name="description" content="La casa free real state fully responsive html5/css3 home page website template"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
        <link href="resources/css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/search.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>


    </head>

    <body>

        <%@include file="Header.jsp"%> 

        <div id="search_land">
            <div id="search">
                <!--<img src="images/search.png"></img>--> 
                <div id="search_button" onclick="search()">
                    搜索
                </div>
                <form id="search_form" action="searchAllHouse.do">
                    <input id="text" name="searchFor" type="text" size="18" style="color: gray"
                           value="请输入地段、小区或者房型"
                           onfocus="if (value == '请输入地段、小区或者房型') {
                                       value = ''
                                   }"
                           onblur="if (value == '') {
                                       value = '请输入地段、小区或者房型'
                                   }" /> s
                </form>
            </div>
        </div>
        <div id="search_condition">
            <div class="title">按条件找房</div>
            <div class="list">
                <div id="line">
                    <ul>
                        <li id="title"><a style="color: #999; text-decoration: none;">区域：</a></li>
                        <li><a href="#">天河</a></li>
                        <li><a href="#">越秀</a></li>
                        <li><a href="signin.html">荔湾</a></li>
                        <li><a href="emailSignup.html">黄埔</a></li>
                        <li><a href="#">番禺</a></li>
                        <li><a href="#">白云</a></li>
                        <li><a href="#">海珠</a></li>
                        <li><a href="#">花都</a></li>	
                        <li><a href="#">增城</a></li>	
                        <li><a href="#">从化</a></li>	
                        <li><a href="#">其他</a></li>	
                    </ul>
                </div>
                <div id="line">
                    <ul>
                        <li id="title"><a style="color: #999; text-decoration: none;">价格：</a></li>
                        <li><a href="#">500以下</a></li>
                        <li><a href="#">500-1000</a></li>
                        <li><a href="signin.html">1000-2000</a></li>
                        <li><a href="emailSignup.html">2000-3000</a></li>
                        <li><a href="#">3000-5000</a></li>
                        <li><a href="#">5000-8000</a></li>
                        <li><a href="#">8000-10000</a></li>
                        <li><a href="#">10000以上</a></li>	
                    </ul>
                </div>
                <div id="line">
                    <ul>
                        <li id="title"><a style="color: #999; text-decoration: none;">面积：</a></li>
                        <li><a href="#">50以下</a></li>
                        <li><a href="#">50-70</a></li>
                        <li><a href="signin.html">70-90</a></li>
                        <li><a href="emailSignup.html">90-110</a></li>
                        <li><a href="#">110-130</a></li>
                        <li><a href="#">130-150</a></li>
                        <li><a href="#">150-200</a></li>
                        <li><a href="#">200以上</a></li>	
                    </ul>
                </div>
                <div id="line">
                    <ul>
                        <li id="title"><a style="color: #999; text-decoration: none;">房型：</a></li>
                        <li><a href="#">一室</a></li>
                        <li><a href="#">一室</a></li>
                        <li><a href="signin.html">一室</a></li>
                        <li><a href="emailSignup.html">一室</a></li>
                        <li><a href="#">一室</a></li>
                        <li><a href="#">别墅</a></li>
                    </ul>
                </div>
            </div>
            <div class="selected">
                当前找房条件：
            </div>
        </div>



        <div id="search_result">
            <script language="JavaScript">
                var curObj = null;
                var preColor;
                onload = function () {
                    var a = document.getElementById("title").getElementsByTagName(
                            "span");
                    for (var i = 0; i < a.length; i++) {
                        a(i).onclick = (function (obj) {
                            return function () {
                                if (curObj != null)
                                    curObj.style.backgroundColor = preColor;
                                preColor = obj.style.backgroundColor;
                                obj.style.backgroundColor = "#CCC";
                                curObj = obj;
                            }
                        })(a(i));
                    }
                }
            </script>
            <div id="title">
                <span>全部房源
                </span><span>个人房源
                </span><span style="width:75.83%;border-right:none;">hehhehehe
                </span>
            </div>

            <%if (request.getSession().getAttribute("context") == null) { %>
            <div class="result">
                <img src="img/11.jpg"/>
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_1.jsp">BRT黄村天河东圃龙怡苑 单身公寓</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;一室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;30平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;20/21层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝西</a>
                    </p>
                    <p class="p3">
                        <a href="">天河租房</a><a>-</a>
                        <a href="">东圃</a><a>-</a>
                        <a href="">龙怡苑</a>
                        <span>2500<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距4号线黄村站约1312米，距黄村立交南公交站约883米</a></p>
                </div>
            </div>

            <div class="result">
                <img src="img/22.jpg"/>
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_2.jsp">育龙居新出全新装修新房,家私可带可不带!好房时间告…</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;三室二厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;87平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;7/9层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝东北</a>
                    </p>
                    <p class="p3">
                        <a href="">天河租房</a><a>-</a>
                        <a href="">龙洞</a><a>-</a>
                        <a href="">育龙居</a>
                        <span>3000<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距6号线长湴站约1638米，距世纪绿洲公交站约470米</a></p>
                </div>
            </div>

            <div class="result">
                <img src="img/33.jpg"/>
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_3.jsp">五山花园2室1厅南北精装便宜出租</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;二室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;69平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;7/9层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南北</a>
                    </p>
                    <p class="p3">
                        <a href="">天河租房</a><a>-</a>
                        <a href="">五山</a><a>-</a>
                        <a href="">五山花园同和街握山南一路41号</a>
                        <span>4600<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距3号线五山站约406米，距凤凰新村(宝业路口)公交站约373米</a></p>
                </div>
            </div>

            <div class="result">
                <img src="img/44.jpg"/>
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_4.jsp">新盘 华港花园2房靓装,楼距宽通风好,保养新净整租</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;二室二厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;89平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;6/9层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南</a>
                    </p>
                    <p class="p3">
                        <a href="">天河租房</a><a>-</a>
                        <a href="">天河公园</a><a>-</a>
                        <a href="">华港花园</a>
                        <span>3500<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距3号线华师站约1546米，距钟落潭文化广场总站公交站约974米</a></p>
                </div>
            </div>
















            <div class="result">
                <img src="img/1.jpg"/> 
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_1.jsp">白云同和同和街握山南一路41 86平米3室1厅1卫</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;三室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;86平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;5/7层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南北</a>
                    </p>
                    <p class="p3">
                        <a href="">白云</a><a>-</a>
                        <a href="">同和</a><a>-</a>
                        <a href="">同和街握山南一路41号</a>
                        <span>3000<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距碧桂园北门公交站约694米</a></p>
                </div>
            </div>
            <div class="result">
                <img src="img/2.jpg"/> 
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_2.jsp">白云同和同和街握山南一路41 86平米3室1厅1卫</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;三室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;86平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;5/7层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南北</a>
                    </p>
                    <p class="p3">
                        <a href="">白云</a><a>-</a>
                        <a href="">同和</a><a>-</a>
                        <a href="">同和街握山南一路41号</a>
                        <span>3000<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距碧桂园北门公交站约694米</a></p>
                </div>
            </div>
            <div class="result">
                <img src="img/3.jpg"/>
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_3.jsp">白云同和同和街握山南一路41 86平米3室1厅1卫</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;三室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;86平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;5/7层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南北</a>
                    </p>
                    <p class="p3">
                        <a href="">白云</a><a>-</a>
                        <a href="">同和</a><a>-</a>
                        <a href="">同和街握山南一路41号</a>
                        <span>3000<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距碧桂园北门公交站约694米</a></p>
                </div>
            </div>
            <div class="result">
                <img src="img/4.jpg"/> 
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_4.jsp">白云同和同和街握山南一路41 86平米3室1厅1卫</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;三室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;86平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;5/7层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南北</a>
                    </p>
                    <p class="p3">
                        <a href="">白云</a><a>-</a>
                        <a href="">同和</a><a>-</a>
                        <a href="">同和街握山南一路41号</a>
                        <span>3000<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距碧桂园北门公交站约694米</a></p>
                </div>
            </div>
            <div class="result">
                <img src="img/5.jpg"/>
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_1.jsp">白云同和同和街握山南一路41 86平米3室1厅1卫</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;三室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;86平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;5/7层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南北</a>
                    </p>
                    <p class="p3">
                        <a href="">白云</a><a>-</a>
                        <a href="">同和</a><a>-</a>
                        <a href="">同和街握山南一路41号</a>
                        <span>3000<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距碧桂园北门公交站约694米</a></p>
                </div>
            </div>

            <%} else {  List<House> houselist =(List<House>) request.getSession().getAttribute("context");
              for( House house:houselist){
                 
             %>

            <div class="result">
                <img src="<%=house.getHpicture()%>"/>
                <div id="detial">
                    <p class="p1"><a href="ShowHouse_1.jsp">白云同和同和街握山南一路41 86平米3室1厅1卫</a></p>
                    <p class="p2">
                        <a> 整租&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;三室一厅&nbsp;&nbsp;&nbsp;</a>|
                        <a>&nbsp;&nbsp;&nbsp;86平米&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;5/7层&nbsp;&nbsp;&nbsp;</a> |
                        <a>&nbsp;&nbsp;&nbsp;朝南北</a>
                    </p>
                    <p class="p3">
                        <a href="">白云</a><a>-</a>
                        <a href="">同和</a><a>-</a>
                        <a href="">同和街握山南一路41号</a>
                        <span>3000<a> 元/月</a></span>
                    </p>
                    <p class="p4"><a>距碧桂园北门公交站约694米</a></p>
                </div>
            </div> 
            <%}%> 
             <%}%> 
        </div>
        <%@include file="bottom.jsp"%>

        <script>

            function search() {
                var text = document.getElementById('text');
                var textContext = text.value;
                console.log(textContext);
                window.location.href = "searchHouses.do?text=" + textContext;
            }

        </script>  
    </body>
</html>
