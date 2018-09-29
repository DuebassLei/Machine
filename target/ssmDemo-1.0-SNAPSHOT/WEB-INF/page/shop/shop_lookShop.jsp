<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>机械信息系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <jsp:include page="/WEB-INF/page/common/css_1.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>机械</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>机械信息系统</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>


        </nav>
    </header>
    <jsp:include page="/WEB-INF/page/common/menu.jsp"/>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="text-center">
                <h2 >商品屋</h2>
            </div>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">

                    <div class="box">
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="shopTableID" class="table table-striped">
                                <thead>
                                <tr>
                                    <td>序号</td>
                                    <td>商品名称</td>
                                    <td>商品信息</td>
                                    <td>价格</td>
                                    <td>数量</td>
                                    <td>生产日期</td>
                                    <td>产地</td>
                                    <td>操作</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach  items="${shopList}" var="shop" varStatus="status">
                                    <tr id="${shop.shopId}">
                                        <td>${status.count}</td>
                                        <td>${shop.name}</td>
                                        <td>${shop.info}</td>
                                        <td>${shop.price}</td>
                                        <td>${shop.count}</td>
                                        <td>${shop.makeTime}</td>
                                        <td>${shop.address}</td>
                                        <td>
                                            <button class="btn btn-danger btn-xs btn-delShop">删除</button>
                                            <button class="btn btn-info btn-xs btn-updateShop">更改</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>

        </section>
        <!-- /.content -->
    </div>

    <!-- /.content-wrapper -->
    <jsp:include page="/WEB-INF/page/common/foot.jsp"/>

</div>
<!-- ./wrapper -->

<jsp:include page="/WEB-INF/page/common/js_1.jsp"></jsp:include>
</body>
<script>
    $(function () {
        $(".content").delegate(".btn-delShop","click",function () {
            var $tr = $(this).parents("tr");
            var shopId  = $tr.attr("id");
            //拿到本行的id 值
            layer.confirm('确定删除？', {icon: 3, title:'提示'}, function(index){
                //do something
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/shop/delete",
                    data: {"id":shopId},
                    success: function(msg){
                        if(msg['success']){
                            layer.msg('删除成功', {time:700},function(){
                                $tr.remove();
                                layer.close(index);
                            });
                        }
                    },
                    dataType:'json'
                });
            });
        });

        $(".content").delegate(".btn-updateShop","click",function () {
            var $tr = $(this).parents("tr");
            var shopId  = $tr.attr("id");
            layer.open({
                title:'填写更新商品信息',
                type: 2,
                maxmin:false,
                area:['500px','600px'],
                content:"${pageContext.request.contextPath}/shop/updateShop?id="+shopId
            });
        });



        $("#shopTableID").dataTable({
            'paging'      : true,
            'lengthChange': true,
            'searching'   : true,
            'ordering'    : true,
            'info'        : true,
            'autoWidth'   : false,
            'language':{
                "paginate": {
                    "next": "下一页",
                    "previous":"上一页"
                },
                "sZeroRecords": "没有找到",
                "search":"快速搜索",
                "emptyTable":"无可用数据",
                "lengthMenu": "_MENU_ 项/页",
                "info": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项"
            }
        });


    })

</script>

</html>

