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
        <div class="row">
                      <div class="col-xs-6">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="fa  fa-hand-spock-o"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text"><a class="btn btn-primary btn-flat btn-xs" href="${pageContext.request.contextPath}/customer/selectAllCustomer">查看客户信息</a></span>
                        <span class="info-box-number">1k+</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>


            <div class="col-xs-6">
                <div class="info-box">
                    <span class="info-box-icon bg-red"><i class="fa fa-star-o"></i></span>

                    <div class="info-box-content">
                        <button class="btn btn-success btn-flat btn-xs" id="btnAddCustomer">新增客户信息</button>
                        <span class="info-box-number">+1</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>

        </div>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="cusTableID" class="table table-striped">
                                <thead>
                                <tr>
                                    <td>序号</td>
                                    <td>客户名</td>
                                    <td>客户性别</td>
                                    <td>客户电话</td>
                                    <td>客户地址</td>
                                    <td>加入时间</td>
                                    <td>星级</td>
                                    <td>操作</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach  items="${cusList}" var="cus" varStatus="status">
                                    <tr id="${cus.cusId}">
                                        <td>${status.count}</td>
                                        <td>${cus.name}</td>
                                        <td>${cus.sex}</td>
                                        <td>${cus.phone}</td>
                                        <td>${cus.address}</td>
                                        <td>${cus.makeTime}</td>
                                        <td>${cus.level}</td>
                                        <td>
                                            <button class="btn btn-danger btn-xs btn-delCus">删除</button>
                                            <button class="btn btn-info btn-xs btn-updateCus">更改</button>
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

        $('#btnAddCustomer').click(function () {
            layer.open({
                title: '填写客户资料',
                type: 2,
                maxmin : false,
                area:['500px','600px'],
                content:"${pageContext.request.contextPath}/customer/tolayerAddCustomer"
            });
        });

        $(".content").delegate(".btn-delCus","click",function () {
            var $tr = $(this).parents("tr");
            var data  = $tr.attr("id");
            //拿到本行的id 值
            layer.confirm('确定删除？', {icon: 3, title:'提示'}, function(index){
                //do something
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/customer/delete",
                    data: {"id":data},
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

        $(".content").delegate(".btn-updateCus","click",function () {
            var $tr = $(this).parents("tr");
            var data  = $tr.attr("id");
            layer.open({
                title:'修改客户信息',
                type: 2,
                maxmin:false,
                area:['500px','600px'],
                content:"${pageContext.request.contextPath}/customer/tolayerUpdateCustomer?id="+data
            });
        });

        $("#cusTableID").dataTable({
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

