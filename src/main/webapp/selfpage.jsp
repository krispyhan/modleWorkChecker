<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/jsp/common.jsp" %>
    <title>管理工作台</title>
    <link rel="stylesheet" href="css/self.css" />
    <link rel="stylesheet" type="text/css" href="css/centre.css" />
    <script type="text/javascript" src="js/loginAndRegister.js"></script>
    <script type="text/javascript" src="js/guide.js"></script>
    <script type="text/javascript" src="js/self.js"></script>

</head>
<body  class="pg_index">

<div class="toppest"> <a > Hi!</a>  <a id="online_nickname_id"> |</a><a>|</a> <a id="centre_logout_id" onclick="logout()"> 注销</a>  <a style="float: right;">联系我们</a><a style="float: right;" href="index.jsp" >返回首页</a> </div>


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
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">用户类型</span><p id="self_user_type" style="font-size: large;width:120px;"></p> <br/> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">用户数量</span><p id="user_count" style="font-size: large"></p> <br/> <span style="font-size: large;color: #3d3d3d;">模特类型用户数量</span><p id="model_count" style="font-size: large"></p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
                                <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">委托人类型用户数量</span><p id="consignor_count" style="font-size: large"></p> <br/> <span style="font-size: large;color: #3d3d3d;">预约数量</span><p id="reserve_count" style="font-size: large"></p> </td>
                                <td class="fl_by">
                            </tr>
                            <td valign="top" class="category_l4">
                                <div class="subjectbox">
                                    <h2 style="color:grey;font-size:large" onclick="openModelExamineWindow()">模特资质审核</h2>

                                </div>
                            </td>
                            <td valign="top" class="category_l4">
                                <div class="subjectbox">
                                    <h2 style="color:grey;font-size:large" onclick="openConsignorExamineWindow()">委托人资质审核</h2>

                                </div>
                            </td>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>



</div>


<%--model examine--%>
<div class="easyui-window" title="模特资质审核" id="model_examine_window" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:1000px;height:560px;padding:10px;">
    <table id="model_examine_table">

    </table>
</div>

<%--consignor examine--%>
<div class="easyui-window" title="委托人资质审核" id="consignor_examine_window" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:1000px;height:560px;padding:10px;">
    <table id="consignor_examine_table">

    </table>
</div>

<%@ include file="/WEB-INF/jsp/foot.jsp"%>
</body>
</html>