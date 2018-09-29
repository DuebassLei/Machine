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
                <h3 >常见商品类</h3>
            </div>
            <div class="row">
                    <div class="col-sm-6 col-md-4"><input type="text" id="kind" name="kind" placeholder="kind" value="电子器械"></div>
                    <div class="col-xs-6 col-md-8"><button class="btn btn-success btn-searchShopKind">Search</button></div>

            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">石油机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            用于石油生产
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">电热设备</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            电热工作
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">物流设备</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            用于物流运输等
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                <div class="box box-default box-solid collapsed-box">
                    <div class="box-header with-border">
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                            <h3 class="box-title">清洁设备</h3>
                        </div>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body" style="display: none;">
                        适用于清洁护理
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">造纸机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            生产各式各样纸品
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">农业机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            农业生产工具
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">机械零部件</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                           机械零散部件，各种配件
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">纺织印染机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            生产纺织印刷品工具
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">锅炉与原动机</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                           锅炉作业
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">办公设备</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            办公相关产品
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">木工机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            木工专用工具
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">食品机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            食品的生产工具
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">药品加工机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            药品生产作业
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">粮油加工机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            各种粮油的加工生产
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">金属加工机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            专用于加工金属材料
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">通信设备</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            传递讯息设备
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">交通工具</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            用于交通出行
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">广播电视设备</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                           电视广播接收
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">汽车机械</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                           作用于汽车生产
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-3">
                    <div class="box box-default box-solid collapsed-box">
                        <div class="box-header with-border">
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                                <h3 class="box-title">更多...</h3>
                            </div>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="display: none;">
                            正在积极建设中。。。
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
        <section class="content">

                <table class="table table-striped" >


                </table>

        </section>

    </div>

    <!-- /.content-wrapper -->
    <jsp:include page="/WEB-INF/page/common/foot.jsp"/>

</div>
<!-- ./wrapper -->

<jsp:include page="/WEB-INF/page/common/js_1.jsp"></jsp:include>
</body>
<script>
    $(function(){
        $(".btn-searchShopKind").click(function(){
            var kind =  $("input#kind").val();
            console.info(kind);
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/shop/selectShopKind",
                data: {"kind":kind},
                success: function(msg){
                    if(msg['success']){
                        layer.msg('操作成功', {time:700},function(){
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭
                        });
//                        console.log(msg);
                        var html = ' ';
                        html += '<tr><td>' + '商品名称' + '</td><td>' + '商品信息' + '</td><td>' + '商品价格' + '</td><td>' + '商品类别'+'</td></tr>'
                        for (var i=0;i<msg.shopList.length;i++){

                               var shop = msg.shopList[i];
                               html += '<tr><td>' + shop.name + '</td><td>' + shop.info + '</td><td>' + shop.price + '</td><td>' + shop.kind+'</td></tr>'
                        }
                        $('.table').append(html);
                    }
                    else {
                        $('.table').append(

                            "<div class='row'>" +
                            "<div class='col-sm-6 col-md-4'><i class='fa fa-bomb'></i></div>" +
                            "<div class='col-sm-6 col-md-8'><h2>无该类型商品，请重新查找商品类别 </h2></div>" +
                            "</div>"
                        );

                    }
                },
                dataType:'json'
            });
        });
    });
</script>

</html>

