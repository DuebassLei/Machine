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
                <a class="btn btn-primary btn-flat btn-xs" id="selectDept" href="${pageContext.request.contextPath}/dept/select">查询部门</a>
                <button class="btn btn-success btn-flat btn-xs" id="btnAddDept">新建部门</button>
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
                            <table id="deptTableID" class="table table-striped">
                                <thead>
                                <tr>
                                    <td>序号</td>
                                    <td>部门名称</td>
                                    <td>部门信息</td>
                                    <td>电话</td>
                                    <td>地址</td>
                                    <td>员工数</td>
                                    <td>操作</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach  items="${deptList}" var="dept" varStatus="status">
                                    <tr id="${dept.id}">
                                        <td>${status.count}</td>
                                        <td>${dept.name}</td>
                                        <td>${dept.info}</td>
                                        <td>${dept.phone}</td>
                                        <td>${dept.address}</td>
                                        <td>${dept.empCount}
                                            <c:if test="${dept.empCount==0}">
                                                <a class="btn btn-link btn_importEmp">导入</a>
                                            </c:if>
                                            <c:if test="${dept.empCount!=0}">
                                                <a class="btn btn-link btn_showEmp">详情</a>
                                            </c:if>
                                        </td>
                                        <td>
                                            <button class="btn btn-danger btn-xs btn-delDept">删除</button>

                                            <button class="btn btn-info btn-xs btn-updateDept">更改</button>
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
         $("#btnAddDept").click(function () {

             layer.open({
                 title: '填写部门信息',
                 type: 2,
                 maxmin : false,
                 area:['500px','600px'],
                 content:"${pageContext.request.contextPath}/dept/tolayerAddDept"
             });
         });
     })

     $(".content").delegate(".btn-delDept","click",function () {
             var $tr = $(this).parents("tr");
             var deptId  = $tr.attr("id");
             //拿到本行的id 值
             layer.confirm('确定删除？', {icon: 3, title:'提示'}, function(index){
                 //do something
                 $.ajax({
                     type: "POST",
                     url: "${pageContext.request.contextPath}/dept/delete",
                     data: {"id":deptId},
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

     $(".content").delegate(".btn-updateDept","click",function () {
         var $tr = $(this).parents("tr");
         var deptId  = $tr.attr("id");
         layer.open({
             title:'填写部门信息',
             type: 2,
             maxmin:false,
             area:['500px','600px'],
             content:"${pageContext.request.contextPath}/dept/updateDept?id="+deptId
         });
     });

     $("#deptTableID").dataTable({
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

     $(".content").delegate(".btn_importEmp","click",function () {
         var $tr = $(this).parents("tr");
         var deptId  = $tr.attr("id");
         layer.open({
             title:'批量导入员工',
             type: 2,
             maxmin:false,
             area:['500px','600px'],
             content:"${pageContext.request.contextPath}/emp/showImportEmpPage?deptId="+deptId
         });

     });
     $(".content").delegate(".btn_showEmp","click",function () {
         var $tr = $(this).parents("tr");
         var clazzId  = $tr.attr("id");
         console.info("显示学生列表");
     });
</script>

</html>

