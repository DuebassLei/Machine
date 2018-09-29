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
                <h2 >入库管理</h2>
            </div>
        </section>
        <!-- Main content -->
        <section class="content">
            <!-- 在店铺中添加商品-->
            <div class="row">
                <div class="col-xs-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa  fa-hand-spock-o"></i></span>
                        <div class="info-box-content">
                            <button class="btn btn-success btn-flat btn-xs" id="btn-addWhShop">商品入库</button>
                            <span class="info-box-number">1+</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <div class="col-xs-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="fa  fa-cube"></i></span>

                        <div class="info-box-content">
                            <button class="btn btn-success btn-flat btn-xs" id="btn-lookWhShop">查看仓库商品</button>
                            <span class="info-box-number">99+</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <div class="col-xs-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa  fa-diamond"></i></span>
                        <div class="info-box-content">
                            <button class="btn btn-success btn-flat btn-xs" id="btn-WhShopCount">商品数量</button>
                            <span class="info-box-number">1000+</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <div class="col-xs-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="fa fa-headphones"></i></span>

                        <div class="info-box-content">
                            <button class="btn btn-success btn-flat btn-xs" id="btn-WhStatus">仓库状态</button>
                            <span class="info-box-number">99+</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
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
        $('#btn-addWhShop').click(function () {
            layer.open({
                title: '填写入库商品信息',
                type: 2,
                maxmin : false,
                area:['500px','600px'],
                content:"${pageContext.request.contextPath}/warehouse/tolayerAddWhShop"
            });
        });
        $('#btn-lookWhShop').click(function () {
            layer.open({
                title: '选择仓库',
                type: 2,
                maxmin : false,
                area:['500px','600px'],
                content:"${pageContext.request.contextPath}/warehouse/layerShowWhShop"
            });
        });

    });
</script>
</html>

