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
    <div style="padding: 15px;margin: auto;">
        <#--<table class="layui-table">-->
            <#--&lt;#&ndash;<colgroup>&ndash;&gt;-->
                <#--&lt;#&ndash;<col width="200">&ndash;&gt;-->
                <#--&lt;#&ndash;<col width="200">&ndash;&gt;-->
                <#--&lt;#&ndash;<col>&ndash;&gt;-->
            <#--&lt;#&ndash;</colgroup>&ndash;&gt;-->
            <#--<thead>-->
            <#--<tr>-->
                <#--<th>一级</th>-->
                <#--<th>二级</th>-->
                <#--<th>三级</th>-->
            <#--</tr>-->
            <#--</thead>-->
            <#--<tbody>-->
            <#--<tr>-->
                <#--<td>　</td>-->
                <#--<td></td>-->
                <#--<td></td>-->
            <#--</tr>-->
            <#--<tr>-->
                <#--<td>-->
                    <#--<select id="parent" onchange="parentChange()">-->
                        <#--<option value="">-请选择-</option>-->
                        <#--<#list parentList as parent>-->
                         <#--<option value="${parent.id}">${parent.name}</option>-->
                        <#--</#list>-->
                    <#--</select>-->
                <#--</td>-->
                <#--<td>-->
                    <#--<select id="children2" onchange="children2Change()">-->
                      <#--<option value="">-请选择-</option>-->
                    <#--</select>-->
                <#--</td>-->
                <#--<td>-->
                    <#--<select id="children3">-->
                     <#--<option>-请选择-</option>-->
                    <#--</select>-->
                <#--</td>-->
            <#--</tr>-->
            <#--<tr>-->
                <#--<td>　</td>-->
                <#--<td></td>-->
                <#--<td></td>-->
            <#--</tr>-->
            <#--</tbody>-->
        <#--</table>-->



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
            <div class="layui-anim layui-anim-loop"></div>

            <div class="layui-anim layui-anim-up layui-anim-loop"></div>

    </div>
</div>
</body>
<script src="/layui/layui.js"></script>
<script>
    // JavaScript代码区域  layui
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
                ,form = layui.form;

        layer.msg('你好岳大小姐');
    });

</script>
<script>
    function parentChange(){
        //   获取选中的一级菜单id
        var parentId =  $("#parent option:selected").val();
        if(parentId == ''){
            $("#children2").empty();
            $("#children2").append(" <option value= ''>-请选择-</option>");
            $("#children3").empty();
            $("#children3").append(" <option value= ''>-请选择-</option>");
            return;
        }
        $("#children3").empty();
        $("#children3").append(" <option value= ''>-请选择-</option>");
        //进行查询第二级
        $.ajax({
            type: "GET",
            url: "/demo/children",
            data: {"parentId": parentId},
            dataType:"json",
            success: function (data) {
                //放置之前要清空数据
                $("#children2").empty();
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
            $("#children3").empty();
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
                $("#children3").empty();
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