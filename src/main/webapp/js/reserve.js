function openReserveWindow() {
    $("#reserve_dialog_id").dialog('open');
}

function insertReservation(){

    var theme = $("#work_theme").textbox('getValue');
    var contact = $("#reserve_phone").textbox('getValue');
    var time = $("#reserve_time").datebox('getValue');
    var content = $("#work_content").textbox('getValue');

    $("#reserve_form").form("submit",{
        url:"reserve_" + theme + "_" + contact + "_" + time + "_" + content ,
        onSubmit: function () {
            if(theme == "" || contact =="" || time =="" || content == "" ){
                $.messager.alert("温馨提示","请完善信息");
                return false;
            }

            return true;
        },
        success : function (res) {
            if(res == "success"){
                $("#reserve_dialog_id").dialog('close');
                $.messager.alert("温馨提示","预约成功");
            }
        }


    })


}