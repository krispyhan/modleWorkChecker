<!DOCTYPE html>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/jsp/common.jsp" %>
    <title>Model Work Checker</title>
    <link rel="stylesheet" href="css/rank.css" />
    <script type="text/javascript" src="js/loginAndRegister.js"></script>
</head>
<body>
<div class="toppest"> <a onclick="openRegisterWindow()"> 注册</a>  <a> |</a>  <a>登录</a>  <a style="float: right;">联系我们</a></div>


<div class="main">
    <ul>
        <li class="btns">用户</li>
        <li class="btns">定位</li>
        <li class="btns">订单</li>
        <li class="btns">菜单</li>
        <li class="btns">首页</li>
    </ul>

    <h1>MODELS WORK CHECKER</h1>


    <div class=ranker>
        <div class="rankhead">
            <div class="wrap">
                <h3>HOT MODELS</h3>
            </div>
        </div>
        <div class="rankcontent">
            <ul>
                <li class="rankcontent-li">
                    <button>工作预约</button>
                    <h3 style="color:#4169E1;">1</h3>
                    <h4>银耳</h4>
                    <img src="img/Krispy.jpg" alt="">
                </li>
                <li class="rankcontent-li">
                    <button>工作预约</button>
                    <h3 style="color:#6A5ACD;">2</h3>
                    <h4>纯子</h4>

                    <img src="img/Junko.JPG" alt="">
                </li>
                <li class="rankcontent-li">
                    <button>工作预约</button>
                    <h3 style="color:#4682B4;">3</h3>
                    <h4>七七蟹</h4>

                    <img src="img/Kim.jpg" alt="">
                </li>
                <li class="rankcontent-li">
                    <button>工作预约</button>
                    <h3 style="color:	#7B68EE;">4</h3>
                    <h4>霞影</h4>

                    <img src="img/Shia.jpg" alt="">
                </li>
                <li class="rankcontent-li">
                    <button>工作预约</button>
                    <h3 style="color:	#9370D8;">5</h3>
                    <h4>山丘上的石头</h4>

                    <img src="img/Lay.JPG" alt="">
                </li>

            </ul>
        </div>
    </div>
</div>

<div class="easyui-dialog" title="注册" id="register_dialog_id" style="width:350px;height:400px;padding:10px" data-options="closed:true, modal: true">
    <div data-options="region:'center'" style="padding:10px;">
        <form id="consume_register_form" method="post">
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="consume_username" name="consume_username" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'请输入昵称'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="consume_password1" name="consume_password1" data-options="type:'password',required:true,validType:'password',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-lock',prompt:'请输入密码'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="consume_password2" name="consume_password2" data-options="type:'password',required:true,validType:'password',validateOnCreate:false,validateOnBlur:true,iconCls:'icon-lock',prompt:'确认密码'" style="width:100%;height:30px;padding:12px"/>
            </div>
            <div style="padding: 10px;">
                男<input type="radio" name="sex" value="男" checked="checked"/>
                女<input type="radio" name="sex" value="女"/>
            </div>
            <div style="padding: 10px;">
                <input class="easyui-textbox" id="consume_phone" name="consume_phone" data-options="type:'text',required:true,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-phone',prompt:'请输入电话'" style="width:100%;height:30px;padding:12px"/>
            </div>
        </form>
    </div>
    <div data-options="region:'south',border:false" style="text-align:center;padding:5px 0 0;">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="insertUser()" style="width:80px">提交</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#register_dialog_id').dialog('close')" style="width:80px">取消</a>
    </div>
</div>
</body>
</html>
