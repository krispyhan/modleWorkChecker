$(function () {

    var hideFavor = document.getElementsByName("index_favorButton_name");
    var hideReserve = document.getElementsByName("index_reserveButton_name");

    $.post("centreManage/getCurrentUserName",{},function (res) {
        console.log(res+"#");
        if(res != ""){
            $("#index_nickname_id").text(res);
            $("#register_button_id").text("");
            $("#login_button_id").text("");
        }
    });

    $.post("centreManage/getCurrentUserType",{},function (res) {
        if (res == "1"){
            for (var i = 0; i < hideFavor.length; i++) {
                hideFavor[i].style.visibility = "visible";
            };
            for (var i = 0; i < hideReserve.length; i++) {
                hideReserve[i].style.visibility = "visible";
            };
        }
        if (res == "0"){
            for (var i = 0; i < hideFavor.length; i++) {
                hideFavor[i].style.visibility = "visible";
            };
        }
    });

});

function qq(value,name){
    alert(value+":"+name)

}
function openContactWindow() {
    $("#contact_us_dialog_id").dialog('open');
}

function addFavorite(pram){
    var favorite = $(pram).attr("data-value");
    var operator = document.getElementById("index_nickname_id").innerText;

    $("#favorite_form").form("submit",{
        url:"favorite/addFavorite_" + favorite + "_" + operator ,
        onSubmit: function () {
            return true;
        },
        success : function (res) {
            if(res == "success"){
                location.href = "index.jsp";
                $("#index_nickname_id").text(res);
                $.messager.alert("温馨提示","收藏成功！");
            }else{
                $.messager.alert("温馨提示","收藏失败，请重试");
            }
        }
    })
}
function openInformationWindow(pram) {
    $("#information_window_id").dialog('open');
    loadUserInformation(pram);
}
function loadUserInformation(pram){
    var nickname = $(pram).attr("data-value");
    $("#information_username_id").textbox('setValue',nickname);

    $.post("selfManage/getUserPhone_" + nickname,{},function (res) {
            $("#information_phone_id").textbox('setValue',res);
    });
    $.post("selfManage/getUserBirthday_" + nickname,{},function (res) {
        $("#information_birthday_id").textbox('setValue',res);
    });
    $.post("selfManage/getUserLocation_" + nickname,{},function (res) {
        $("#information_location_id").textbox('setValue',res);
    });
    $.post("selfManage/getUserIntroduction_" + nickname,{},function (res) {
        $("#information_intro_id").textbox('setValue',res);
    });
    $.post("selfManage/getUserCertificate_" + nickname,{},function (res) {
        if (res == 0){
            $("#information_certificate_id").textbox('setValue',"资质审核中");
        }else if (res == 1){
            $("#information_certificate_id").textbox('setValue',"资质审核通过");
        }else if (res == 2){
            $("#information_certificate_id").textbox('setValue',"资质审核退回");
        }
    });
}