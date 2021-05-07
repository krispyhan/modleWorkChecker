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
function openFavoriteWindow() {
    $("#favorite_dialog_id").dialog('open');
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
                // $("#favorite_dialog_id").dialog('close');
                $("#index_nickname_id").text(res);
                $.messager.alert("温馨提示","收藏成功！");
            }else{
                $.messager.alert("温馨提示","收藏失败，请重试");
            }
        }
    })
}