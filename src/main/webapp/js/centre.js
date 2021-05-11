$(function () {

    $.post("centreManage/getCurrentUserName",{},function (data) {
        if(data == ""){
            location.href = "error.jsp";
        }else {
            $("#centre_nickname_id").text(data);
            $("#centre_name_id").text(data);
            $.post("centreManage/getUserInfo",{},function (res) {
                if(res.state != 0){
                    $.messager.alert("温馨提示","请登录后操作");
                }else {
                    var dataInfo = res.data;
                    $("#centre_user_type").text(dataInfo.type);
                    $("#centre_user_contact").text(dataInfo.account);
                    $("#centre_user_birthday").text(dataInfo.birthdayStr);
                    $("#centre_user_sex").text(dataInfo.sex);
                    $("#centre_user_intro").text(dataInfo.introduction);
                    $("#centre_user_location").text(dataInfo.location);
                }
            });
            // $.post("centreManage/getCurrentUserType",{},function (res) {
            //     if (res == 0){
            //         $("#centre_user_type").text("模特");
            //     }else if (res == 1){
            //         $("#centre_user_type").text("委托人");
            //     }
            // });
            // $.post("centreManage/getCurrentUserBirthday",{},function (res) {
            //     $("#centre_user_birthday").text(res);
            // });
            // $.post("centreManage/getCurrentUserContact",{},function (res) {
            //     $("#centre_user_contact").text(res);
            // });
            // $.post("centreManage/getCurrentUserSex",{},function (res) {
            //     $("#centre_user_sex").text(res);
            // });
            // $.post("centreManage/getCurrentUserIntro",{},function (res) {
            //     $("#centre_user_intro").text(res);
            // });
            // $.post("centreManage/getCurrentUserLocation",{},function (res) {
            //     $("#centre_user_location").text(res);
            // });

            $.post("reserve/getCurrentUserNewReserveCount",{},function (res) {
                $("#centre_newReserve_count_id").text(res);
            });
            $.post("reserve/getCurrentUserAllReserveCount",{},function (res) {
                $("#centre_allReserve_count_id").text(res);
            });
            $.post("reserve/getCurrentUserAcceptedReserveCount",{},function (res) {
                $("#centre_acceptedReserve_count_id").text(res);
            });
            $.post("reserve/getCurrentUserRefusedReserveCount",{},function (res) {
                $("#centre_refusedReserve_count_id").text(res);
            });
            $.post("favorite/getCurrentUserFavorCount",{},function (res) {
                console.log(res+"#");
                $("#centre_favor_count_id").text(res);
            });

        }
    });

    $("#myReserve_table").datagrid({
        onDblClickRow : function (rowIndex, rowData) {
            $("#myReserveDetail_dialog").dialog("open");
            $("#myReserveDetail_id").textbox('setValue',rowData.content);
        }
    });
    $("#mySchedule_table").datagrid({
        onDblClickRow : function (rowIndex, rowData) {
            $("#myScheduleDetail_dialog").dialog("open");
            $("#myScheduleDetail_id").textbox('setValue',rowData.content);
        }
    });
});

function openMyReserveWindow() {
    $("#myReserve_window").window('open');

     $.post("centreManage/getCurrentUserType",{},function (res) {
         if (res == 0){
             loadMyReserveTable();
         }else if (res == 1){
             loadMyReservationTable();
         }
     });


}

function loadMyReserveTable() {
    var nickname = $("#centre_nickname_id").text().trim();

    console.log(nickname+"#");
    var MyReserveListDataOptions = {
        fit : true,
        border : true,
        rownumbers : true,
        singleSelect : true,
        pagination : true,
        pageSize : 4,
        pageNumber : 1,
        pageList : [ 4, 8, 12 ],
        striped :true,
        fitColumns : true,
        columns:[[
            {field:"id",title:"id",width:10,align:"center",hidden:true},
            {field:"initialNickname",title:"邀约人",width:40,align:"center"},
            {field:"contact",title:"联系方式",width:40,align:"center"},
            {field:"theme",title:"主题",width:40,align:"center"},
            {field:"time",title:"工作时间",width:40,align:"center"},
            {field:"status",title:"状态",width:40,align:"center",sortable:true},
            {field: "action1", title: "操作", width: 40, align: "center", formatter: function (value, row, index) {
                    if(row.status=="待处理"){
                        return "<a href='#' onclick='confirmReserve(this)' data-id='"
                            + row.id
                            + "' data-decision='"
                            + 1
                            + "'>接受</a>   <a href='#' onclick='confirmReserve(this)' data-id='"
                            + row.id
                            + "' data-decision='"
                            + 2
                            + "'>拒绝</a>";
                    }
                }
            }
        ]],
        url : "reserve/getMyReserves_"+nickname,
        method : "GET",
        loadFilter : function(data) {
            return {
                "total" : data.state != 0 ? 0 : data.data.total,
                "rows" : data.state != 0 ? [] : data.data.rows
            }
        }
    };

    $("#myReserve_table").datagrid(MyReserveListDataOptions);
}

function loadMyReservationTable() {
    var initiative = $("#centre_nickname_id").text().trim();

    console.log(initiative+"#");
    var MyReservationListDataOptions = {
        fit : true,
        border : true,
        rownumbers : true,
        singleSelect : true,
        pagination : true,
        pageSize : 4,
        pageNumber : 1,
        pageList : [ 4, 8, 12 ],
        striped :true,
        fitColumns : true,
        columns:[[
            {field:"id",title:"id",width:10,align:"center",hidden:true},
            {field:"passiveNickname",title:"邀约对象",width:40,align:"center"},
            {field:"theme",title:"主题",width:40,align:"center"},
            {field:"time",title:"工作时间",width:40,align:"center"},
            {field:"status",title:"状态",width:40,align:"center",sortable:true},
            {field: "action1", title: "操作", width: 40, align: "center", formatter: function (value, row, index) {

                }
            }
        ]],
        url : "reserve/getMyReservation_" + initiative,
        method : "GET",
        loadFilter : function(data) {
            return {
                "total" : data.state != 0 ? 0 : data.data.total,
                "rows" : data.state != 0 ? [] : data.data.rows
            }
        }
    };

    $("#myReserve_table").datagrid(MyReservationListDataOptions);
}

function logout() {
    $.post("logout",{},function (res) {
        location.href = "index.jsp";
       $.messager.alert("温馨提示",res.message);
    });
}

function confirmReserve(pram) {
    var id = $(pram).attr("data-id");
    var decision = $(pram).attr("data-decision");
    $.post("reserve/confirmReserve_" + id + "_" + decision,{},function (res) {
        if(res.state == 0){
            $.messager.alert("温馨提示",res.message);
            loadMyReserveTable();
        }else {
            $.messager.alert("温馨提示","操作失败，请重试!");
        }
    });
}

function openEditInfoWindow() {
    $.post("centreManage/getUserInfo",{},function (res) {
        if(res.state != 0){
            $.messager.alert("温馨提示","请登录后操作");
        }else {
            var data = res.data;
            $("#centre_edit_location").textbox('setValue',data.location);
            $("#centre_edit_birthday").datebox('setValue',data.birthday);
            $("#centre_edit_introduction").textbox('setValue',data.introduction);
        }
    });
    $("#editInfo_dialog_id").window('open');
}

function editInfo(){
    var location = $("#centre_edit_location").textbox('getValue');
    var sex = $("input[name='centre_edit_sex']:checked").val();
    var birthday = $("#centre_edit_birthday").datebox('getValue');
    var introduction = $("#centre_edit_introduction").textbox('getValue');
    var currentAccount = document.getElementById("centre_user_contact").innerText;

    $("#editInfo_form").form("submit",{
        url:"centreManage/editInformation_" + location + "_" + sex +"_"+ birthday + "_" + introduction + "_" + currentAccount  ,
        onSubmit: function () {
            if(sex == "" ){
                $.messager.alert("温馨提示","性别信息必填！");
                return false;
            }
            return true;
        },
        success : function (res) {
            if(res == "success"){
                $("#editInfo_dialog_id").dialog('close');
                $.messager.alert("温馨提示","信息编辑成功！");
                location.reload();
            }else{
                $.messager.alert("温馨提示","信息编辑失败，请重试");
            }
        }
    })
}

function openMyFavoriteWindow() {
    $("#myFavorite_window").window('open');
    loadMyFavoriteTable();
}

function loadMyFavoriteTable() {
    var operatorNickname = $("#centre_nickname_id").text().trim();

    console.log(operatorNickname+"#");
    var MyFavoriteListDataOptions = {
        fit : true,
        border : true,
        rownumbers : true,
        singleSelect : true,
        pagination : true,
        pageSize : 4,
        pageNumber : 1,
        pageList : [ 4, 8, 12 ],
        striped :true,
        fitColumns : true,
        columns:[[
            {field:"id",title:"id",width:10,align:"center",hidden:true},
            {field:"favorite",title:"收藏对象昵称",width:40,align:"center"},
            {field:"operateDate",title:"收藏时间",width:40,align:"center"},
            {field: "action1", title: "操作", width: 40, align: "center", formatter: function (value, row, index) {

                    return "<a href='#' onclick='cancelFavorite(this)' data-id='"
                        + row.id
                        + "' >取消收藏</a>";

                }
            }
        ]],
        url : "favorite/getMyFavorites_"+operatorNickname,
        method : "GET",
        loadFilter : function(data) {
            return {
                "total" : data.state != 0 ? 0 : data.data.total,
                "rows" : data.state != 0 ? [] : data.data.rows
            }
        }
    };

    $("#myFavorite_table").datagrid(MyFavoriteListDataOptions);
}
function cancelFavorite(pram) {
    var id = $(pram).attr("data-id");
    $.post("favorite/cancelFavorite_" + id ,{},function (res) {
        if(res.state == 0){
            $.messager.alert("温馨提示",res.message);
            loadMyFavoriteTable();
        }else {
            $.messager.alert("温馨提示","操作失败，请重试!");
        }
    });
}

function openMyScheduleWindow() {
    $("#mySchedule_window").window('open');
    $.post("centreManage/getCurrentUserType",{},function (res) {
        if (res == 0){
            loadMySchedulingTable();

        }else if (res == 1){
            loadMyScheduleTable();
        }
    });

}

function loadMyScheduleTable() {
    var nickname = $("#centre_nickname_id").text().trim();

    console.log(nickname+"#");
    var MyScheduleDataOptions = {
        fit : true,
        border : true,
        rownumbers : true,
        singleSelect : true,
        pagination : true,
        pageSize : 4,
        pageNumber : 1,
        pageList : [ 4, 8, 12 ],
        striped :true,
        fitColumns : true,
        columns:[[
            {field:"id",title:"id",width:10,align:"center",hidden:true},
            {field:"passive",title:"合作方",width:40,align:"center"},
            {field:"theme",title:"工作主题",width:40,align:"center"},
            {field:"time",title:"工作时间",width:40,align:"center"},
        ]],
        url : "schedule/getMyScheduleByInitiative_"+nickname,
        method : "GET",
        loadFilter : function(data) {
            return {
                "total" : data.state != 0 ? 0 : data.data.total,
                "rows" : data.state != 0 ? [] : data.data.rows
            }
        }
    };

    $("#mySchedule_table").datagrid(MyScheduleDataOptions);
}
function loadMySchedulingTable() {
    var nickname = $("#centre_nickname_id").text().trim();

    console.log(nickname+"#");
    var MySchedulingDataOptions = {
        fit : true,
        border : true,
        rownumbers : true,
        singleSelect : true,
        pagination : true,
        pageSize : 4,
        pageNumber : 1,
        pageList : [ 4, 8, 12 ],
        striped :true,
        fitColumns : true,
        columns:[[
            {field:"id",title:"id",width:10,align:"center",hidden:true},
            {field:"initiative",title:"合作方",width:40,align:"center"},
            {field:"contact",title:"联系方式",width:40,align:"center"},
            {field:"theme",title:"工作主题",width:40,align:"center"},
            {field:"time",title:"工作时间",width:40,align:"center"},
            {field: "action1", title: "操作", width: 40, align: "center", formatter: function (value, row, index) {

                    return "<a href='#' onclick='displayDetail(this)' data-id='"
                        + row.id
                        + "' >查看详情</a>";

                }
            }
        ]],
        url : "schedule/getMyScheduleByPassive_"+nickname,
        method : "GET",
        loadFilter : function(data) {
            return {
                "total" : data.state != 0 ? 0 : data.data.total,
                "rows" : data.state != 0 ? [] : data.data.rows
            }
        }
    };

    $("#mySchedule_table").datagrid(MySchedulingDataOptions);
}
function displayDetail(pram) {
        var id = $(pram).attr("data-id");
        $.post("schedule/displayScheduleDetail_" + id ,{},function (res) {
            if(res == ""){
                $.messager.alert("温馨提示","没有该数据");
            }else {
                $("#myScheduleDetail_dialog").dialog("open");
                $("#myScheduleDetail_id").textbox('setValue',res);
            }
        });
    }