<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
     <%@ page contentType="text/html;charset=UTF-8" language="java" %>
     <%@ include file="/WEB-INF/jsp/common.jsp" %>
  <title>个人中心</title>
  <link rel="stylesheet" href="css/self.css" />
  <link rel="stylesheet" type="text/css" href="css/centre.css" />
  <script type="text/javascript" src="js/loginAndRegister.js"></script>
  <script type="text/javascript" src="js/guide.js"></script>
  <script type="text/javascript" src="js/centre.js"></script>

 </head> 
 <body  class="pg_index">

 <div class="toppest"> <a > Hi!</a>  <a id="centre_nickname_id"> |</a>  <a>|</a> <a id="centre_logout_id" onclick="logout()"> 注销</a>  <a style="float: right;">联系我们</a><a style="float: right;" href="index.jsp" >返回首页</a> </div>


  <div class="qing_bbs_topw cl">

  </div> 
  <div id="wp" class="wp"> 
   <div class="cl"> 
    <div class="z"> 
     <div id="chart"> 
      <p class="chart z">
      	新消息: <em id="centre_newReserve_count_id"></em><span class="pipe">|</span>
      	总消息: <em  id="centre_allReserve_count_id"></em><span class="pipe">|</span>
      	接受的预约: <em  id="centre_acceptedReserve_count_id"></em><span class="pipe">|</span>
        拒绝的预约: <em  id="centre_refusedReserve_count_id"></em><span class="pipe">|</span>
        收藏我的：<em  id="centre_favor_count_id"></em>
      </p> 
     </div> 
    </div>

   </div>


   <div class="wp cl"> 
    <div class="mn"> 
     <div class="fl bm">

      <div class="bm bmw cl"> 
       <div class="bm_h cl">
           <a><h2 id="centre_name_id" style="font-family: 黑体;font-size: xx-large"></h2></a>
       </div>
       <div>
<%--           <div style="float: left">--%>
<%--               <input class="easyui-filebox" style="width:200px;border-color: #3d3d3d">--%>
<%--           </div>--%>
           <div>
               <button class="centre_edit_button" onclick="openEditInfoWindow()" >编辑信息</button>
           </div>

        <table cellspacing="0" cellpadding="0" class="fl_tb"> 
         <tbody>
          <tr class="fl_row">
           <td class="fl_icn"> <img id="centre_user_cover" align="left" style=" width: 240px;height: 320px;" /></td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">用户类型</span><p id="centre_user_type" style="font-size: large;width:120px;"></p> <br/> <span style="font-size: large;color: #3d3d3d;">用户生日</span><p id="centre_user_birthday" style="font-size: large;width:120px;"></p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">联系方式</span><p id="centre_user_contact" style="font-size: large"></p> <br/> <span style="font-size: large;color: #3d3d3d;">用户性别</span><p id="centre_user_sex" style="font-size: large"></p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">地域信息</span><p id="centre_user_location" style="font-size: large;width:120px;"></p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">简单介绍</span><p id="centre_user_intro" style="width: 410px;"></p> </td>
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

  <div class="qing_lk cl" style="height: 200px;">
   <div class="wp ptm">
    <ul class="x cl">


        <div class="wp cl">
            <div class="cl">
                <div id="category_grid" class="cl">
                    <table cellspacing="0" cellpadding="0">
                        <tbody>
                        <tr>
                            <td valign="top" class="category_l2">
                            <div class="subjectbox">
                                  <h2 style="color:grey;font-size:large"  onclick="openMyReserveWindow()">预约记录</h2>


                               </div>
                            </td>
                           <td valign="top" class="category_l3">
                                <div class="subjectbox">
                                    <h2 style="color:grey;font-size:large" onclick="openMyFavoriteWindow()">我的收藏</h2>

                                </div>
                           </td>
                            <td valign="top" class="category_l4">
                                <div class="subjectbox">
                                    <h2 style="color:grey;font-size:large" onclick="openMyScheduleWindow()">日程安排</h2>

                                </div>
                            </td>

                          </tr>
                        <tr>
                            <td valign="top" class="category_l2">
                                <div >
                                    <h3>在此可查看历史的预约消息</h3>

                                </div>
                            </td>
                            <td valign="top" class="category_l3">
                                <div >
                                    <h3>在此可查看你收藏的用户</h3>

                                </div>
                            </td>
                            <td valign="top" class="category_l4">
                                <div >
                                    <h3>在此可查看你的日程安排</h3>

                                </div>
                            </td>

                        </tr>
      </tbody>
      </table>
  </div>
 </div>
 </div>


 </ul>
   </div> 
  </div>

 <%--my reserve history--%>
 <div class="easyui-window" title="预约记录" id="myReserve_window" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:1000px;height:560px;padding:10px;">
     <table id="myReserve_table">

     </table>
 </div>

 <div class="easyui-dialog" title="详情" id="myReserveDetail_dialog" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:360px;height:200px;padding:10px;">
     <div style="padding: 10px;">
         <input class="easyui-textbox" id="myReserveDetail_id" data-options="type:'text',readonly:true,multiline:true" style="width:100%;height:150px;padding:12px"/>
     </div>
 </div>

<%--my favorite--%>
 <div class="easyui-window" title="我的收藏" id="myFavorite_window" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:1000px;height:560px;padding:10px;">
     <table id="myFavorite_table">

     </table>
 </div>

 <%--my schedule--%>
 <div class="easyui-window" title="日程安排" id="mySchedule_window" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:1000px;height:560px;padding:10px;">
     <table id="mySchedule_table">

     </table>
 </div>

 <div class="easyui-dialog" title="日程详情" id="myScheduleDetail_dialog" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:360px;height:200px;padding:10px;">
     <div style="padding: 10px;">
         <input class="easyui-textbox" id="myScheduleDetail_id" data-options="type:'text',readonly:true,multiline:true" style="width:100%;height:150px;padding:12px"/>
     </div>
 </div>

<%-- edit information--%>
 <div class="easyui-dialog" title="编辑信息" id="editInfo_dialog_id" style="width:350px;height:400px;padding:10px" data-options="closed:true, modal: true">
     <div data-options="region:'center'" style="padding:10px;">
         <form id="editInfo_form" method="post">
             <div style="padding: 10px;">
                 <input class="easyui-textbox" id="centre_edit_location" name="centre_edit_location" data-options="type:'text',required:false,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-man',prompt:'输入您的地域信息'" style="width:100%;height:30px;padding:12px"/>
             </div>
             <div style="padding: 10px;">
                 男<input type="radio" name="centre_edit_sex" value="男" checked="checked"/>
                 女<input type="radio" name="centre_edit_sex" value="女" />
             </div>
             <div style="padding: 10px;">
                 <div>
                     生日<input class="easyui-datebox"  id="centre_edit_birthday" name="centre_edit_birthday"
                                data-options="required:false,showSeconds:false" style="width:150px">
                 </div>
             </div>
             <div style="padding: 10px;">
                 <input class="easyui-textbox" id="centre_edit_introduction" name="centre_edit_introduction" data-options="type:'text',multiline:true,required:false,validateOnCreate:false,validateOnBlur:true,iconCls:'icon-phone',prompt:'介绍一下自己吧'" style="width:100%;height:150px;padding:12px"/>
             </div>
         </form>
     </div>
     <div data-options="region:'south',border:false" style="text-align:center;padding:5px 0 0;">
         <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="editInfo()" style="width:80px">提交</a>
         <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#editInfo_dialog_id').dialog('close')" style="width:80px">取消</a>
     </div>
 </div>


<%@ include file="/WEB-INF/jsp/foot.jsp"%>
 </body>
</html>