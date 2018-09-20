<!DOCTYPE html>
<html lang="en">
<head>
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script type="text/javascript" src="/webjars/jquery/2.2.4/dist/jquery.min.js"></script>
</head>
<body>
<div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <select id="parent" onchange="parentChange()">
            <option value="">-请选择-</option>
            <#list parentList as parent>
             <option value="${parent.id}">${parent.name}</option>
            </#list>
        </select>

        <select id="children2" onchange="children2Change()">
            <option value="">-请选择-</option>
        </select>

        <select id="children3">
            <option>-请选择-</option>
        </select>

    </div>
</div>
</body>
<script>
    function parentChange(){
        //   获取选中的一级菜单id
        var parentId =  $("#parent option:selected").val();
        if(parentId == ''){
            $("#children2 ").empty();
            $("#children2").append(" <option value= ''>-请选择-</option>");
            $("#children3 ").empty();
            $("#children3").append(" <option value= ''>-请选择-</option>");
            return;
        }
        //进行查询第二级
        $.ajax({
            type: "GET",
            url: "/demo/children",
            data: {"parentId": parentId},
            dataType:"json",
            success: function (data) {
                //放置之前要清空数据
                $("#children2 ").empty();
                $("#children2").append(" <option value= ''>-请选择-</option>");
                for(var i=0;i<data.length;i++){
                    var children2Id =data[i].id;
                    var name =  data[i].name;
                    $("#children2").append("<option value='"+children2Id+"'>"+name+"</option>");  //添加一项option
                }
            }
        });
    }
    function children2Change(){
        //   获取选中的一级菜单id
        var parentId =  $("#children2 option:selected").val()
        //进行查询第二级
        if(parentId == ''){
            $("#children3 ").empty();
            $("#children3").append(" <option value= ''>-请选择-</option>");
            return;
        }
        $.ajax({
            type: "GET",
            url: "/demo/children",
            data: {"parentId": parentId},
            dataType:"json",
            success: function (data) {
                //放置之前要清空数据
                $("#children3 ").empty();
                $("#children3").append(" <option value= ''>-请选择-</option>");
                for(var i=0;i<data.length;i++){
                    var children2Id =data[i].id;
                    var name =  data[i].name;
                    $("#children3").append("<option value='"+children2Id+"'>"+name+"</option>");  //添加一项option
                }
            }
        });
    }
</script>
</html>