function openRecordWindow() {
    $("#record_dialog_id").dialog('open');
}
function getReservation(){

    var record_theme = $("#record_theme").textbox('getValue');
    var record_phone = $("#record_phone").textbox('getValue');
    var record_consignor= $("#record_consignor_nickname").textbox('getValue');
    var record_model= $("#record_model_nickname").textbox('getValue');
    var record_time = $("#record_time").datebox('getValue');
    var record_content = $("#record_content").textbox('getValue');


    $("#record_form").form("submit",{
        url:"record_" + record_theme + "_" + record_phone + "_" + record_consignor + "_" + record_model + "_" + record_time + "_" + record_content ,

        success : function (res) {
            if(res == "success"){
                $("#record_dialog_id").dialog('close');
                $.messager.alert("温馨提示","预约成功");
            }
        }


    })

}