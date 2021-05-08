function loadSelfPage(pram){


    var selfNickname = $(pram).attr("data-value");
    var operator = document.getElementById("online_nickname_id").innerText;

    console.log(selfNickname+"#");

    $.post("centreManage/getCurrentUserName",{},function (data) {
        $("#online_nickname_id").text(data);
        $("#self_name_id").text(selfNickname);
    });


}