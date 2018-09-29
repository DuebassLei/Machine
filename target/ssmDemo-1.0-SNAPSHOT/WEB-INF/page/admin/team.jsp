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


        <!-- Main content -->
        <section class="content">
            <h3>团队成员</h3>
            <p>高磊，迪丽热巴，艾则哈尔江，叶尔登</p>
            <h4>团队分工</h4>
            <p>核心模块编写：<em>高磊</em></p>
            <p>前后台交互  :<em>艾则哈尔江</em></p>
            <p>前端页面编写：<em>迪丽热巴</em></p>
            <p>数据库部分：<em>叶尔登</em></p>
            <p>团队收获：</p>
            <blockquote><p>接近20天的实训让我们基本掌握了ssm框架的搭建，了解了从前端到后台的数据交互，Spring 注解的使用，SpringMVC基本运行模式，Mybatis的基本Crud操作，在这次实训中谁受益颇多。</p>
            </blockquote>
            <p>&nbsp;</p>
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

