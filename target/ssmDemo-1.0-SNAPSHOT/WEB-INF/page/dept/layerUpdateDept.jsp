<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <jsp:include page="/WEB-INF/page/common/css_1.jsp"/>
</head>
<body>
<div class="box box-info">
    <form class="form-horizontal" id="form1">
        <input type="hidden" name="id" value="${dept.id}"/>
        <div class="box-body no-margin">
            <div class="form-group">
                <label for="name" class="col-xs-2 control-label">
                    <i class="fa fa-hand-paper-o fa-2x"></i>
                </label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" id="name" name="name" placeholder="部门名称" value="${dept.name}">
                </div>
            </div>

            <div class="form-group">
                <label for="info" class="col-xs-2 control-label">
                    <i class="fa fa-hand-paper-o fa-2x"></i>
                </label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" id="info" name="info" placeholder="部门信息" value="${dept.info}">
                </div>
            </div>
            <div class="form-group">
                <label for="phone" class="col-xs-2 control-label">
                    <i class="fa fa-hand-paper-o fa-2x"></i>
                </label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" id="phone"  name="phone" placeholder="联系方式" value="${dept.phone}">
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="col-xs-2 control-label">
                    <i class="fa fa-hand-paper-o fa-2x"></i>
                </label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" id="address" name="address" placeholder="地址" value="${dept.address}">
                </div>
            </div>

            <div class="form-group">
                <label for="empCount" class="col-xs-2 control-label">
                    <i class="fa fa-hand-paper-o fa-2x"></i>
                </label>
                <div class="col-xs-10">
                    <input type="number" class="form-control" id="empCount" name="empCount" placeholder="员工数" value="${dept.empCount}">
                </div>
            </div>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <button type="button" class="btn btn-default" id="btn_close">取消</button>
            <button type="button" class="btn btn-info pull-right" id="btn_submit">提交</button>
        </div>
        <!-- /.box-footer -->

    </form>
</div>

</body>
<jsp:include page="/WEB-INF/page/common/js_1.jsp"></jsp:include>
<script>
    $(function () {
        $("#btn_close").click(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
        });

        $("#btn_submit").click(function () {
            //验证表单通过？？？？？？？
            var data4Send =  $("#form1").serialize();
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/dept/submitUpdateDept",
                data: data4Send,
                success: function(msg){
                    if(msg['success']){
                        layer.msg('操作成功', {time:700},function(){
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭
                        });
                    }
                },
                dataType:'json'
            });

        });
    });
</script>


</html>


