$(function () {

    $.post("centreManage/getCurrentUserName",{},function (data) {
        if(data == ""){
            location.href = "error.jsp";
        }else {
            $("#centre_nickname_id").text(data);
            $("#centre_name_id").text(data);

            $.post("centreManage/getCurrentUserType",{},function (res) {
                if (res == 0){
                    $("#centre_user_type").text("模特");
                }else if (res == 1){
                    $("#centre_user_type").text("委托人");
                }
            });
            $.post("centreManage/getCurrentUserBirthday",{},function (res) {
                $("#centre_user_birthday").text(res);
            });
            $.post("centreManage/getCurrentUserContact",{},function (res) {
                $("#centre_user_contact").text(res);
            });
            $.post("centreManage/getCurrentUserSex",{},function (res) {
                $("#centre_user_sex").text(res);
            });
            $.post("centreManage/getCurrentUserIntro",{},function (res) {
                $("#centre_user_intro").text(res);
            });
        }
    });

});

function openMyReserveWindow() {
    $("#myReserve_window").window('open');
    loadMyReserveTable();
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
            {field:"time",title:"邀约时间",width:40,align:"center"},
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