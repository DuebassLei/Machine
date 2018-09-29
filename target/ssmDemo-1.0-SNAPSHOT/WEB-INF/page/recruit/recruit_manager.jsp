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
            <div>
                <a class="btn btn-primary btn-flat btn-xs" id="selectRecruit" href="${pageContext.request.contextPath}/recruit/select">查询招聘信息</a>
                <button class="btn btn-success btn-flat btn-xs" id="btnAddEmpRecruit">新建招聘信息</button>
            </div>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>主页</a></li>
                <li class="active">位置指示1</li>
                <li class="active">位置指示2</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <div class="row">
                <div class="col-xs-12">

                    <div class="box">
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="recruitTableID" class="table table-striped">
                                <thead>
                                <tr>
                                    <td>序号</td>
                                    <td>姓名</td>
                                    <td>性别</td>
                                    <td>年龄</td>
                                    <td>籍贯</td>
                                    <td>邮箱</td>
                                    <td>电话</td>
                                    <td>技能</td>
                                    <td>爱好</td>
                                    <td>工作经历</td>
                                    <td>申请岗位</td>
                                    <td>操作</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach  items="${recruitList}" var="recruit" varStatus="status">
                                    <tr id="${recruit.id}">
                                        <td>${status.count}</td>
                                        <td>${recruit.name}</td>
                                        <td>${recruit.sex}</td>
                                        <td>${recruit.age}</td>
                                        <td>${recruit.address}</td>
                                        <td>${recruit.email}</td>
                                        <td>${recruit.phone}</td>
                                        <td>${recruit.skill}</td>
                                        <td>${recruit.hobby}</td>
                                        <td>${recruit.experience}</td>
                                        <td>${recruit.applyPosition}</td>
                                        <td>
                                            <button class="btn btn-danger btn-xs btn-delRecruit">删除</button>
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
        $("#btnAddEmpRecruit").click(function () {
            layer.open({
                title: '填写招聘员工信息',
                type: 2,
                maxmin : false,
                area:['500px','600px'],
                content:"${pageContext.request.contextPath}/recruit/tolayerAddRecruit"
            });
        });
    })

    $(".content").delegate(".btn-delRecruit","click",function () {
        var $tr = $(this).parents("tr");
        var recruitId  = $tr.attr("id");
        //拿到本行的id 值
        layer.confirm('确定删除？', {icon: 3, title:'提示'}, function(index){
            //do something
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/recruit/delete",
                data: {"id":recruitId},
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






    $("#recruitTableID").dataTable({
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

</script>

</html>

