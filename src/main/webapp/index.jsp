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
 <%--       <a href="error.jsp"><li class="btns">error</li></a>--%>
        <a href="centre.jsp"><li class="btns">个人中心</li></a>
<%--        <a href="selfpage.jsp"><li class="btns">用户</li></a>--%>
        <a href="index.jsp">  <li class="btns">首页</li>  </a>
        <a onclick="openRecordWindow()"><li class="btns">记录</li></a>
        <li class="btns">搜索<input id="ss" class="easyui-searchbox" style="width:200px"
                                  data-options="searcher:qq,prompt:'搜索内容···',menu:'#mm'"></input>
            <div id="mm" style="width:120px">
                <div data-options="name:'all',iconCls:'icon-ok'">全部</div>
                <div data-options="name:'models'">模特</div>
                <div data-options="name:'consignors'">委托人</div>
            </div></li>

    </ul>

    <h1>MODELS WORK CHECKER</h1>


    <div class=ranker>
        <div class="rankhead">
            <div class="wrap">
                <h3>热门模特 Hot Models</h3>
            </div>
        </div>
        <div class="rankcontent">
            <ul>
                <li class="rankcontent-li">
                    <button onclick="openReserveWindow()">工作预约</button>
                    <h3 style="color:#4169E1;">1</h3>
                    <h4>银耳</h4>
                    <img src="img/Krispy.jpg" alt="银耳">
                </li>
                <li class="rankcontent-li">
                    <button onclick="openReserveWindow()">工作预约</button>
                    <h3 style="color:#6A5ACD;">2</h3>
                    <h4>纯子</h4>

                    <img src="img/Junko.JPG" alt="纯子">
                </li>
                <li class="rankcontent-li">
                    <button onclick="openReserveWindow()">工作预约</button>
                    <h3 style="color:#4682B4;">3</h3>
                    <h4>七七蟹</h4>

                    <img src="img/Kim.jpg" alt="七七蟹">
                </li>
                <li class="rankcontent-li">
                    <button onclick="openReserveWindow()">工作预约</button>
                    <h3 style="color:	#7B68EE;">4</h3>
                    <h4>霞影</h4>

                    <img src="img/Shia.jpg" alt="霞影">
                </li>
                <li class="rankcontent-li">
                    <button onclick="openReserveWindow()">工作预约</button>
                    <h3 style="color:	#9370D8;">5</h3>
                    <h4>山丘上的石头</h4>

                    <img src="img/Lay.JPG" alt="山丘上的石头">
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
                    <button>查询委托</button>
                    <h3 style="color:#4169E1;">1</h3>
                    <h4>银世摄影</h4>
                    <img src="img/银世摄影.jpg" alt="银世摄影">
                </li>
                <li class="consigncontent-li">
                    <button>查询委托</button>
                    <h3 style="color:#6A5ACD;">2</h3>
                    <h4>春之拍</h4>

                    <img src="img/春之拍.jpg" alt="春之拍">
                </li>
                <li class="consigncontent-li">
                    <button>查询委托</button>
                    <h3 style="color:#4682B4;">3</h3>
                    <h4>彩谐文化</h4>

                    <img src="img/彩谐文化.jpg" alt="彩谐文化">
                </li>
                <li class="consigncontent-li">
                    <button>查询委托</button>
                    <h3 style="color:	#7B68EE;">4</h3>
                    <h4>希芽布艺</h4>

                    <img src="img/希芽布艺.jpg" alt="希芽布艺">
                </li>
                <li class="consigncontent-li">
                    <button>查询委托</button>
                    <h3 style="color:	#9370D8;">5</h3>
                    <h4>月累设计</h4>

                    <img src="img/月累设计.jpg" alt="月累设计">
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
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
                </li>

                <li class="displaycontent-li">
                    <h4>韩世莹</h4>
                    <br/>
                    <div class="a-wrap">
                        <a onclick="openReserveWindow()" style="color: #FFFFFF;" >工作预约</a>
                    </div>
                    <img src="img/Krispy.jpg" alt="">
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
                男<input type="radio" name="sex" value="男" checked="checked"/>
                女<input type="radio" name="sex" value="女"/>
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
<div class="easyui-dialog" title="登录" id="login_dialog_id" style="width:350px;height:400px;padding:10px" data-options="closed:true, modal: true">
    <div data-options="region:'center'" style="padding:10px;">
        <form id="login_form" method="post">
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="loginphone" name="loginphone" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-phone',prompt:'请输入账号（注册时使用的电话号码）'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                模特<input type="radio" name="usertype" value=0 checked="checked"/>
                委托人<input type="radio" name="usertype" value=1 />
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

            <div style="padding: 10px;">
                <input class="easyui-textbox" id="initiative_nickname" name="initiative_nickname" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'请输入您的昵称'" style="width:100%;height:30px;padding:12px"/>
            </div>

            <div style="padding: 10px;">
                <input class="easyui-textbox" id="passive_nickname" name="passive_nickname" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'请输入您选择的合作方的昵称'" style="width:100%;height:30px;padding:12px"/>
            </div>

            <div style="padding: 10px;">
                <div>
                  预约时间<input class="easyui-datetimebox"  id="reserve_time" name="reserve_time"
                       data-options="required:true,showSeconds:false" style="width:150px">
                </div>
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="work_content" name="work_content" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-pencil',prompt:'请输入工作详情'" style="width:100%;height:80px;padding:10px"/>
            </div>

        </form>
    </div>
    <div data-options="region:'south',border:false" style="text-align:center;padding:5px 0 0;">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="insertReservation()" style="width:80px">发送</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#reserve_dialog_id').dialog('close')" style="width:80px">取消</a>
    </div>
</div>
</body>
</html>
