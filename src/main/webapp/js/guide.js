$(function () {

    var hideRegister = document.getElementById("register_button_id");
    var hideLogin = document.getElementById("login_button_id");

    $.post("centreManage/getCurrentUserName",{},function (res) {
        console.log(res+"#");
        if(res != ""){
            $("#index_nickname_id").text(res);
            $("#register_button_id").text("");
            $("#login_button_id").text("");
        }
    });
});

function qq(value,name){
    alert(value+":"+name)

}
function openContactWindow() {
    $("#contact_us_dialog_id").dialog('open');
}