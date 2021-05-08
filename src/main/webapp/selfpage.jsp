<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/jsp/common.jsp" %>
    <title>详情</title>
    <link rel="stylesheet" href="css/self.css" />
    <link rel="stylesheet" type="text/css" href="css/centre.css" />
    <script type="text/javascript" src="js/loginAndRegister.js"></script>
    <script type="text/javascript" src="js/guide.js"></script>
    <script type="text/javascript" src="js/self.js"></script>

</head>
<body  class="pg_index">

<div class="toppest"> <a > Hi!</a>  <a id="online_nickname_id"> |</a>  <a style="float: right;">联系我们</a><a style="float: right;" href="index.jsp" >返回首页</a> </div>


<div class="qing_bbs_topw cl">

</div>
<div id="wp" class="wp">


    <div class="wp cl">
        <div class="mn">
            <div class="fl bm">

                <div class="bm bmw cl">
                    <div class="bm_h cl">
                        <a><h2 id="self_name_id" style="font-family: 黑体;font-size: xx-large"></h2></a>
                    </div>
                    <div>

                        <table cellspacing="0" cellpadding="0" class="fl_tb">
                            <tbody>
                            <tr class="fl_row">
                                <td class="fl_icn"> <img id="self_user_cover" src="img/模板图片.jpg" align="left" style=" width: 240px;height: 320px;" /></td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">用户类型</span><p id="self_user_type" style="font-size: large;width:120px;"></p> <br/> <span style="font-size: large;color: #3d3d3d;">用户生日</span><p id="self_user_birthday" style="font-size: large;width:120px;"></p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">联系方式</span><p id="self_user_contact" style="font-size: large"></p> <br/> <span style="font-size: large;color: #3d3d3d;">用户性别</span><p id="self_user_sex" style="font-size: large"></p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">地域信息</span><p id="self_user_location" style="font-size: large;width:120px;"></p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">简单介绍</span><p id="self_user_intro" style="width: 410px;"></p> </td>
                                <td class="fl_by">
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>



            </div>
        </div>
    </div>
</div>



<%@ include file="/WEB-INF/jsp/foot.jsp"%>
</body>
</html>