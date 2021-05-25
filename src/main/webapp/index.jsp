<!DOCTYPE html>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/jsp/common.jsp" %>
    <title>Model Work Checker</title>
    <link rel="stylesheet" href="css/rank.css" />
    <script type="text/javascript" src="js/loginAndRegister.js"></script>
    <script type="text/javascript" src="js/reserve.js"></script>
    <script type="text/javascript" src="js/guide.js"></script>
</head>
<body>
<div class="toppest"> <a onclick="openRegisterWindow()" id="register_button_id"> 注册</a>  <a id="index_nickname_id"> |</a>  <a onclick="openLoginWindow()" id="login_button_id">登录</a>  <a onclick="openContactWindow()" style="float: right;">联系我们</a></div>

<div class="main">
    <ul>
        <a href="centre.jsp"><li class="btns">个人中心</li></a>
        <a href="index.jsp">  <li class="btns">首页</li>  </a>
<%--        <li class="btns">搜索<input id="ss" class="easyui-searchbox" style="width:200px"
                                  data-options="searcher:qq,prompt:'搜索内容···',menu:'#mm'"></input>
            <div id="mm" style="width:120px">
                <div data-options="name:'all',iconCls:'icon-ok'">全部</div>
                <div data-options="name:'models'">模特</div>
                <div data-options="name:'consignors'">委托人</div>
            </div></li>--%>

    </ul>

    <h1>模特工作预约小站 MODELS WORK CHECKER</h1>


    <div class=ranker>
        <div class="rankhead">
            <div class="wrap">
                <h3>热门模特 Hot Models</h3>
            </div>
        </div>
        <div class="rankcontent">
            <ul>
                <li class="rankcontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "银耳">收 藏</button><button style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "银耳" >工作预约</button>
                    <h3 style="color:#4169E1;">1</h3>
                    <h4>银耳</h4>
                    <img src="img/Krispy.jpg" alt="银耳" onclick="openInformationWindow(this)" data-value = "银耳" />
                </li>
                <li class="rankcontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "纯子">收 藏</button><button style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this) " data-value = "纯子">工作预约</button>
                    <h3 style="color:#6A5ACD;">2</h3>
                    <h4>纯子</h4>

                    <img src="img/Junko.JPG" onclick="openInformationWindow(this)" data-value = "纯子"  alt="纯子">
                </li>
                <li class="rankcontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "七七蟹">收 藏</button><button style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this) " data-value = "七七蟹">工作预约</button>
                    <h3 style="color:#4682B4;">3</h3>
                    <h4>七七蟹</h4>

                    <img src="img/Kim.jpg" onclick="openInformationWindow(this)" data-value = "七七蟹" alt="七七蟹">
                </li>
                <li class="rankcontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "霞影">收 藏</button><button style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "霞影">工作预约</button>
                    <h3 style="color:	#7B68EE;">4</h3>
                    <h4>霞影</h4>

                    <img src="img/Shia.jpg" onclick="openInformationWindow(this)" data-value = "霞影" alt="霞影">
                </li>
                <li class="rankcontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Lay">收 藏</button><button style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Lay">工作预约</button>
                    <h3 style="color:	#9370D8;">5</h3>
                    <h4>Lay</h4>

                    <img src="img/Lay.JPG" onclick="openInformationWindow(this)" data-value = "Lay" alt="Lay">
                </li>

            </ul>
        </div>
    </div>



    <div class="consigner">
        <div class="consignhead">
            <div class="wrap">
                <h3>金牌委托方 Perfect Consignors</h3>
            </div>
        </div>
        <div class="consigncontent">
            <ul>
                <li class="consigncontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "银世摄影HR">收 藏</button>
                    <h3 style="color:#4169E1;">1</h3>
                    <h4>银世摄影</h4>
                    <img src="img/银世摄影.jpg" onclick="openInformationWindow(this)" data-value = "银世摄影HR" alt="银世摄影">
                </li>
                <li class="consigncontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "春之拍HR">收 藏</button>
                    <h3 style="color:#6A5ACD;">2</h3>
                    <h4>春之拍</h4>

                    <img src="img/春之拍.jpg" onclick="openInformationWindow(this)" data-value = "春之拍HR" alt="春之拍">
                </li>
                <li class="consigncontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "彩谐文化HR">收 藏</button>
                    <h3 style="color:#4682B4;">3</h3>
                    <h4>彩谐文化</h4>

                    <img src="img/彩谐文化.jpg" onclick="openInformationWindow(this)" data-value = "彩谐文化HR" alt="彩谐文化">
                </li>
                <li class="consigncontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "希芽布艺HR">收 藏</button>
                    <h3 style="color:	#7B68EE;">4</h3>
                    <h4>希芽布艺</h4>

                    <img src="img/希芽布艺.jpg" onclick="openInformationWindow(this)" data-value = "希芽布艺HR" alt="希芽布艺">
                </li>
                <li class="consigncontent-li">
                    <button name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "月累设计HR">收 藏</button>
                    <h3 style="color:	#9370D8;">5</h3>
                    <h4>月累设计</h4>

                    <img src="img/月累设计.jpg" onclick="openInformationWindow(this)" data-value = "月累设计HR" alt="月累设计">
                </li>

            </ul>
        </div>
    </div>




    <div class="displayer">
        <div class="displayhead">
            <div class="wrap">
                <h3>更多模特 Other Models</h3>
            </div>
        </div>

        <div class="displaycontent">
            <ul>

                <li class="displaycontent-li">
                    <h4>Ash</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Ash">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Ash">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Ash.jpeg" onclick="openInformationWindow(this)" data-value = "Ash" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Belle</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Belle">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Belle">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Belle.jpg" onclick="openInformationWindow(this)" data-value = "Belle" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Charm</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Charm">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Charm">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Charm.jpg" onclick="openInformationWindow(this)" data-value = "Charm" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Cloe</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Cloe">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Cloe">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Cloe.jpeg" onclick="openInformationWindow(this)" data-value = "Cloe" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Mike</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Mike">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Mike">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Mike.jpeg" onclick="openInformationWindow(this)" data-value = "Mike" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Molly</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Molly">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Molly">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Molly.jpg" onclick="openInformationWindow(this)" data-value = "Molly" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Nancy</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Nancy">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Nancy">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Nancy.jpeg" onclick="openInformationWindow(this)" data-value = "Nancy" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Tizzy</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Tizzy">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Tizzy">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Tizzy.jpg" onclick="openInformationWindow(this)" data-value = "Tizzy" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>Zack</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "Zack">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "Zack">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Zack.jpg" onclick="openInformationWindow(this)" data-value = "Zack" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>中条彩未</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "中条彩未">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "中条彩未">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/中条彩未.jpeg" onclick="openInformationWindow(this)" data-value = "中条彩未" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>任烨</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "任烨">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "任烨">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/任烨.jpg" onclick="openInformationWindow(this)" data-value = "任烨" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>到现</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "到现">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "到现">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/到现.jpg" onclick="openInformationWindow(this)" data-value = "到现" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>坂口</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "坂口">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "坂口">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/坂口.jpg" onclick="openInformationWindow(this)" data-value = "坂口" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>均相</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "均相">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "均相">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/均相.jpg" onclick="openInformationWindow(this)" data-value = "均相" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>奥守</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "奥守">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "奥守">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/奥守.jpeg" onclick="openInformationWindow(this)" data-value = "奥守" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>宋江</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "宋江">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "宋江">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/宋江.jpg"  onclick="openInformationWindow(this)" data-value = "宋江" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>山崎</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "山崎">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "山崎">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/山崎.jpg"  onclick="openInformationWindow(this)" data-value = "山崎"  alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>恩佑</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "恩佑">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "恩佑">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/恩佑.jpg"  onclick="openInformationWindow(this)" data-value = "恩佑" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>智源</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "智源">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "智源">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/智源.jpg"  onclick="openInformationWindow(this)" data-value = "智源"  alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>濑户花</h4>
                    <br/>
                    <div class="a-wrap"  name="index_favorButton_name" style="background-color: #cc4125;visibility:hidden;" onclick="addFavorite(this)" data-value = "濑户花">
                        <a style="color: #FFFFFF;" >收藏</a>
                    </div>
                    <div class="a-wrap"  style="visibility:hidden" name="index_reserveButton_name" onclick="openReserveWindow(this)" data-value = "濑户花">
                        <a style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/濑户花.jpeg"  onclick="openInformationWindow(this)" data-value = "濑户花" alt="">
                </li>

            </ul>
        </div>
    </div>







    <br/>
</div>





<%--弹窗--%>
<%--register--%>
<div class="easyui-dialog" title="注册" id="register_dialog_id" style="width:350px;height:400px;padding:10px" data-options="closed:true, modal: true">
    <div data-options="region:'center'" style="padding:10px;">
        <form id="register_form" method="post">
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="basal_register_username" name="register_username" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'请输入昵称'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                模特<input type="radio" name="userType" value=0 checked="checked"/>
                委托人<input type="radio" name="userType" value=1 />
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="register_password1" name="register_password1" data-options="type:'password',required:true,validType:'password',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-lock',prompt:'请输入密码'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="register_password2" name="register_password2" data-options="type:'password',required:true,validType:'password',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-lock',prompt:'确认密码'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="register_phone" name="register_phone" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-phone',prompt:'请输入电话'" style="width:100%;height:30px;padding:12px"/>
            </div>
        </form>
    </div>
    <div data-options="region:'south',border:false" style="text-align:center;padding:5px 0 0;">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="insertUser()" style="width:80px">提交</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#register_dialog_id').dialog('close')" style="width:80px">取消</a>
    </div>
</div>

<%--contact us--%>
<div class="easyui-dialog" title="联系我们" id="contact_us_dialog_id" style="width:350px;height:100px;padding:10px" data-options="closed:true, modal: true">
    <div data-options="region:'center'" style="padding:10px;">
        客服电话：15208331018
    </div>

</div>



<%--login--%>
<div class="easyui-dialog" title="登录" id="login_dialog_id" style="width:350px;height:300px;padding:10px" data-options="closed:true, modal: true">
    <div data-options="region:'center'" style="padding:10px;">
        <form id="login_form" method="post">
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="loginphone" name="loginphone" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-phone',prompt:'请输入账号（注册填写的电话号码）'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                模特<input type="radio" name="usertype" value=0 checked="checked"/>
                委托人<input type="radio" name="usertype" value=1 />
                管理员<input type="radio" name="usertype" value=2 />
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="loginpassword" name="loginpassword" data-options="type:'password',required:true,validType:'password',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-lock',prompt:'请输入密码'" style="width:100%;height:30px;padding:12px"/>
            </div>


        </form>
    </div>
    <div data-options="region:'south',border:false" style="text-align:center;padding:5px 0 0;">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="attemptLogin()" style="width:80px">登录</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#login_dialog_id').dialog('close')" style="width:80px">取消</a>
    </div>
</div>


<%--reserve--%>
<div class="easyui-dialog" title="工作预约" id="reserve_dialog_id" style="width:350px;height:400px;padding:10px" data-options="closed:true, modal: true">
    <div data-options="region:'center'" style="padding:10px;">
        <form id="reserve_form" method="post">


            <div style="padding: 10px;">
                <input class="easyui-textbox" id="work_theme" name="work_theme" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-tip',prompt:'请输入工作主题'" style="width:100%;height:30px;padding:12px"/>
            </div>

            <div style="padding: 10px;">
                <input class="easyui-textbox" id="reserve_phone" name="reserve_phone" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-phone',prompt:'请输入您的联系方式'" style="width:100%;height:30px;padding:12px"/>
            </div>

<%--            <div style="padding: 10px;">
                <input class="easyui-textbox" id="initiative_nickname" name="initiative_nickname" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'请输入您的昵称'" style="width:100%;height:30px;padding:12px"/>
            </div>--%>

            <div style="padding: 10px;" hidden>
                <input class="easyui-textbox" id="passive_nickname" name="passive_nickname" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'请输入您选择的合作方的昵称'" style="width:100%;height:30px;padding:12px"/>
            </div>

            <div style="padding: 10px;">
                <div>
                  预约时间<input class="easyui-datetimebox"  id="reserve_time" name="reserve_time"
                       data-options="required:true,showSeconds:false" style="width:150px">
                </div>
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="work_content" name="work_content" data-options="type:'text',required:true,multiline:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-pencil',prompt:'请输入工作详情'" style="width:100%;height:80px;padding:10px"/>
            </div>

        </form>
    </div>
    <div data-options="region:'south',border:false" style="text-align:center;padding:5px 0 0;">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="insertReservation()" style="width:80px">发送</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#reserve_dialog_id').dialog('close')" style="width:80px">取消</a>
    </div>
</div>

<%--favorite--%>
<div class="easyui-dialog" title="收藏" id="favorite_dialog_id" style="width:350px;height:300px;padding:10px" data-options="closed:true, modal: true">
    <div data-options="region:'center'" style="padding:10px;">
        <form id="favorite_form" method="post">
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="favorite_passive_id" name="favorite_passive_id" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'请输入想收藏的用户昵称'" style="width:100%;height:30px;padding:12px"/>
            </div>
        </form>
    </div>
    <div data-options="region:'south',border:false" style="text-align:center;padding:5px 0 0;">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="addFavorite()" style="width:80px">收藏</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#favorite_dialog_id').dialog('close')" style="width:80px">取消</a>
    </div>
</div>

<%--user information--%>
<div class="easyui-window" title="个人资料" id="information_window_id"  style="width:600px;height:400px" data-options="iconCls:'icon-save',closed:true,modal:true">

    <form id="information_form" method="post">
    <div style="padding: 10px;">
        <input class="easyui-textbox" id="information_username_id" name="information_username" data-options="type:'text',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man'" style="width:100%;height:30px;padding:12px"/>
    </div>
    <div style="padding: 10px;">
            <input class="easyui-textbox" id="information_certificate_id" name="information_certificate" data-options="type:'text',alidateOnCreate:false,validateOnBlur:true,iconCls:'icon-sum'" style="width:100%;height:30px;padding:12px"/>
     </div>
    <div style="padding: 10px;">
        <input class="easyui-textbox" id="information_phone_id" name="information_phone" data-options="type:'text',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-phone'" style="width:100%;height:30px;padding:12px"/>
    </div>
    <div style="padding: 10px;">
        <input class="easyui-textbox" id="information_birthday_id" name="information_birthday" data-options="type:'text',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-tip'" style="width:100%;height:30px;padding:12px"/>
    </div>
    <div style="padding: 10px;">
        <input class="easyui-textbox" id="information_location_id" name="information_location" data-options="type:'text',alidateOnCreate:false,validateOnBlur:true,iconCls:'icon-room'" style="width:100%;height:30px;padding:12px"/>
    </div>
    <div style="padding: 10px;">
        <input class="easyui-textbox" id="information_intro_id" name="information_intro" data-options="type:'text',validateOnCreate:false,multiline:true,validateOnBlur:true,iconCls:'icon-more'" style="width:100%;height:90px;padding:12px"/>
    </div>
    </form>
</div>


</body>
</html>
