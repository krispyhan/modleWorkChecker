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

 <div class="toppest"> <a > 欢迎</a>  <a id="centre_nickname_id"> |</a> <a id="centre_logout_id" onclick="logout()"> 注销</a>  <a style="float: right;">联系我们</a><a style="float: right;" href="index.jsp" >返回首页</a> </div>


  <div class="qing_bbs_topw cl">

  </div> 
  <div id="wp" class="wp"> 
   <div class="cl"> 
    <div class="z"> 
     <div id="chart"> 
      <p class="chart z">
      	新消息数: <em>1</em><span class="pipe">|</span>
      	总消息数: <em>8</em><span class="pipe">|</span>
      	被接受的预约数: <em>2</em><span class="pipe">|</span>
        被拒绝的预约数: <em>3</em><span class="pipe">|</span>
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
        <table cellspacing="0" cellpadding="0" class="fl_tb"> 
         <tbody>
          <tr class="fl_row">
           <td class="fl_icn"> <img id="centre_user_cover" src="img/模板图片.jpg" align="left" style=" width: 240px;height: 320px;" /></td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">用户类型</span><p id="centre_user_type" style="font-size: large;width:120px;"></p> <br/> <span style="font-size: large;color: #3d3d3d;">用户生日</span><p id="centre_user_birthday" style="font-size: large;width:120px;"></p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;">联系方式</span><p id="centre_user_contact" style="font-size: large"></p> <br/> <span style="font-size: large;color: #3d3d3d;">用户性别</span><p id="centre_user_sex" style="font-size: large"></p> </td>
              <td class="fl_i"> <span style="font-size: large;color: #3d3d3d;"> </span><p style="font-size: large"> </p> </td>
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
                                    <h2 style="color:grey;font-size:large" onclick="openMyReserveWindow()">预约记录</h2>

                                    <div></div>


                               </div> </td>
                           <td valign="top" class="category_l3">
                                 <div class="subjectbox">
                                 <h2 style="color:grey;font-size:large">合作推荐</h2>

                                     <div></div>

                                    </div> </td>
                          </tr>
      </tbody>
      </table>
  </div>
 </div>
 </div>


 </ul>
   </div> 
  </div>

 <div class="easyui-window" title="预约记录" id="myReserve_window" data-options="conCls:'icon-save',closed:true,modal:true,collapsible:false,minimizable:false,maximizable:false,resizable:false" style="width:1000px;height:560px;padding:10px;">
     <table id="myReserve_table">

     </table>
 </div>
<%@ include file="/WEB-INF/jsp/foot.jsp"%>
 </body>
</html>