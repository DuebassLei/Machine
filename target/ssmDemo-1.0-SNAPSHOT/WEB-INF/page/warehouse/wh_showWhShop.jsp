<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <jsp:include page="/WEB-INF/page/common/css_1.jsp"/>
</head>
<body>
<div class="box box-info">
    <form class="form-horizontal" id="form1">
        <div class="box-body no-margin">
            <div class="form-group">
                <label for="name" class="col-xs-2 control-label">
                    <i class="fa fa-hand-paper-o fa-2x"></i>
                </label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" id="name" name="name" placeholder="仓库名称" value="1号仓库">
                </div>
            </div>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <button type="button" class="btn btn-default" id="btn_close">取消</button>
            <button type="button" class="btn btn-info pull-right" id="btn_submit">提交</button>
        </div>


        <div class="table" >



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
                url: "${pageContext.request.contextPath}/warehouse/selectWhName",
                data: data4Send,
                success: function(msg){
                    if(msg['success']){
//                        layer.msg('操作成功', {time:700},function(){
//                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
//                            parent.layer.close(index); //再执行关闭
//                        });
                        var html = ' ';
                        html += '<tr><td>' + '商品名称' + '</td><td>' + '商品价格' + '</td><td>' + '商品类别'+'</td></tr>'
                        for (var i=0;i<msg.shopList.length;i++){

                            var shop = msg.shopList[i];
                            html += '<tr><td>' + shop.name +  '</td><td>' + shop.price + '</td><td>' + shop.kind+'</td></tr>'
                        }
                        $('.table').append(html);

                    }
                },
                dataType:'json'
            });

        });
    });
</script>


</html>


