function openRegisterWindow() {
    $("#register_dialog_id").dialog('open');
}
function openLoginWindow() {
    $("#login_dialog_id").dialog('open');
}

function attemptLogin()  {

   var loginphone = $("#loginphone").textbox('getValue');
   var usertype = $("input[name='usertype']:checked").val();
   var loginpassword = $("#loginpassword").textbox('getValue');

   $("#login_form").form("submit",{
       url: "checkUser_" + loginphone + "_"+ loginpassword +"_"+usertype,
       onSubmit:function () {
           if(loginphone=="" || loginpassword==""){
               $.messager.alert("温馨提示","账号或密码为空!");
               return false;
           }
           return true;
       },
       success:function (res) {
           if(res=="success"){
               window.location.href="selfpage.jsp";
           }else{
               $.messager.alert("温馨提示","账号或密码错误!");
           }
       }

   })

}

function insertUser() {
    var nickname = $("#basal_register_username").textbox('getValue');
    var type = $("input[name='userType']:checked").val();
    var password1 = $("#register_password1").textbox('getValue');
    var password2 = $("#register_password2").textbox('getValue');
    var sex = $("input[name='sex']:checked").val();
    var phone = $("#register_phone").textbox('getValue');

    $("#register_form").form("submit",{
        url:"register_" + nickname + "_" + type + "_" + password1 + "_" + sex + "_" + phone,
        onSubmit: function () {
            if(nickname == "" || password1 =="" || password2 =="" || sex == "" || phone ==""){
                $.messager.alert("温馨提示","请完善信息");
                return false;
            }
            if(password2 != password1){
                $.messager.alert("温馨提示","两次密码不一致");
                return false;
            }
            return true;
        },
        success : function (res) {
            if(res == "success"){
                $("#register_dialog_id").dialog('close');
                $("#login_dialog_id").dialog('open');
                $.messager.alert("温馨提示","注册成功请重新登录");
            }else if(res == "failure"){
                $.messager.alert("温馨提示","注册失败");
            }else if(res == "isExisted"){
                $.messager.alert("温馨提示","此用户已存在");
            }
        }
    })

}