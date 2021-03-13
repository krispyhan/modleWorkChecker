<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/jsp/common.jsp" %>

    <title>About Me</title>

    <link rel="stylesheet" href="css/self.css" />
    <script type="text/javascript" src="js/loginAndRegister.js"></script>
    <script type="text/javascript" src="js/guide.js"></script>
</head>
<body>
            <div class="toppest"> <a onclick="openRegisterWindow()"> 注册</a>  <a> |</a>  <a onclick="openLoginWindow()">登录</a>  <a style="float: right;">联系我们</a></div>


            <div  class="main">
                <ul>
                    <a href="selfpage.jsp"><li class="btns">用户</li></a>
                    <a href="index.jsp">  <li class="btns">首页</li>  </a>
                    <li class="btns">记录</li>

                </ul>

                <h1>MODELS WORK CHECKER</h1>
                <h2>Belongs to me</h2>


                <div class="self">
                    <div class="selfhead">
                        <div class="wrap">
                            <h3>个人中心 Individual Center</h3>
                            <input class="easyui-switchbutton" checked>
                        </div>
                    </div>

                    <div class="selfcontent">
                       <form>

                         <ul>
                            <li class="selfcontent-li">
                                <h4 style="color:black;">我的封面</h4>
                                <input class="easyui-filebox" style="width:180px">

                                <img src="img/模板图片.jpg" alt="模板图片">
                            </li >

                            <li class="selfcontent-li">
                                <h4> 我的性别 </h4>
                                <select  name="mySex" style="width:170px;height:40px;">
                                <option value="male">男</option>
                                <option value="female">女</option>
                                </select>
                                <br/>
                                <h4> 我的生日 </h4>
                                <input name="myBirth" type="text" class="easyui-datebox"/>
                                <br/>
                                <h4 style="width:170px;height:40px;"> 我的联系方式 </h4>
                                <input  type="text" name="myPhone" />
                                <br/>
                                <h4 style="width:170px;height:40px;"> 我的地域 </h4>
                                <input  type="text" name="myLocation" />
                            </li>



                            <li class="selfcontent-li">
                                <h4> 我想让大家知道的 </h4>
                                  <textarea name="myInfo" rows="18" cols="20">
                                    请写下关于自己的信息，有助于快速找到合适的合作伙伴。
                                  </textarea>
                            </li>
                          </ul>
                      </form>
                    </div>


                </div>


            </div>




</body>
</html>
