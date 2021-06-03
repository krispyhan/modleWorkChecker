$(function () {

    $.post("centreManage/getCurrentUserName",{},function (data) {
        if(data == ""){
            location.href = "error.jsp";
        }else {
            $("#online_nickname_id").text(data);
            $("#self_name_id").text(data);
            $.post("centreManage/getUserInfo",{},function (res) {
                if(res.state != 0){
                    $.messager.alert("温馨提示","请登录后操作");
                }else {
                    var dataInfo = res.data;
                    $("#self_user_type").text(dataInfo.type);
                }
            });
            $.post("selfManage/getUserCount",{},function (res) {
                $("#user_count").text(res);
            });
            $.post("selfManage/getModelCount",{},function (res) {
                $("#model_count").text(res);
            });
            $.post("selfManage/getConsignorCount",{},function (res) {
                $("#consignor_count").text(res);
            });
            $.post("reserve/getAllReserveCount",{},function (res) {
                $("#reserve_count").text(res);
            });


            /*$("#centre_user_cover").src = "centreManage/getImage_" + data;*/
            var element = document.getElementById("self_user_cover");
            element.src = "centreManage/getImage_" + data;

        }
    });
});
function openModelExamineWindow() {
    $("#model_examine_window").window('open');
    loadModelExamineTable();
}

function loadModelExamineTable() {
    var operatorNickname = $("#online_nickname_id").text().trim();

    console.log(operatorNickname+"#");
    var ModelExamineListDataOptions = {
        fit : true,
        border : true,
        rownumbers : true,
        singleSelect : true,
        pagination : true,
        pageSize : 14,
        pageNumber : 1,
        pageList : [ 14, 28, 42 ],
        striped :true,
        fitColumns : true,
        columns:[[
            {field:"id",title:"id",width:10,align:"center",hidden:true},
            {field:"nickname",title:"用户昵称",width:40,align:"center"},
            {field:"account",title:"联系方式",width:40,align:"center"},
            {field:"certificate",title:"审核状态",width:40,align:"center"},
            {field: "action1", title: "操作", width: 40, align: "center", formatter: function (value, row, index) {
                    return "<a href='#' onclick='' data-id='"
                        + row.id
                        + "' data-decision='"
                        + 0
                        + "'>下载资质文件</a>  <a href='#' onclick='' data-id='"
                        + row.id
                        + "' data-decision='"
                        + 1
                        + "'>资质通过</a>   <a href='#' onclick='' data-id='"
                        + row.id
                        + "' data-decision='"
                        + 2
                        + "'>资质退回</a>";
                }
            }
        ]],
        url : "selfManage/getModels",
        method : "GET",
        loadFilter : function(data) {
            return {
                "total" : data.state != 0 ? 0 : data.data.total,
                "rows" : data.state != 0 ? [] : data.data.rows
            }
        }
    };

    $("#model_examine_table").datagrid(ModelExamineListDataOptions);
}

function openConsignorExamineWindow() {
    $("#consignor_examine_window").window('open');
    loadConsignorExamineTable()
}
function loadConsignorExamineTable() {
    var operatorNickname = $("#online_nickname_id").text().trim();

    console.log(operatorNickname+"#");
    var ConsignorExamineListDataOptions = {
        fit : true,
        border : true,
        rownumbers : true,
        singleSelect : true,
        pagination : true,
        pageSize : 14,
        pageNumber : 1,
        pageList : [ 14, 28, 42 ],
        striped :true,
        fitColumns : true,
        columns:[[
            {field:"id",title:"id",width:10,align:"center",hidden:true},
            {field:"nickname",title:"用户昵称",width:40,align:"center"},
            {field:"account",title:"联系方式",width:40,align:"center"},
            {field:"certificate",title:"审核状态",width:40,align:"center"},
            {field: "action1", title: "操作", width: 40, align: "center", formatter: function (value, row, index) {
                    return "<a href='#' onclick='' data-id='"
                        + row.id
                        + "' data-decision='"
                        + 0
                        + "'>下载资质文件</a>  <a href='#' onclick='confirmExamine(this)' data-id='"
                        + row.id
                        + "' data-decision='"
                        + 1
                        + "'>资质通过</a>   <a href='#' onclick='confirmExamine(this)' data-id='"
                        + row.id
                        + "' data-decision='"
                        + 2
                        + "'>资质退回</a>";
                }
            }
        ]],
        url : "selfManage/getConsignors",
        method : "GET",
        loadFilter : function(data) {
            return {
                "total" : data.state != 0 ? 0 : data.data.total,
                "rows" : data.state != 0 ? [] : data.data.rows
            }
        }
    };

    $("#consignor_examine_table").datagrid(ConsignorExamineListDataOptions);
}
function logout() {
    $.post("logout",{},function (res) {
        location.href = "index.jsp";
        $.messager.alert("温馨提示",res.message);
    });
}