<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <!--人事管理 -->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>人事管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${pageContext.request.contextPath}/dept/deptManager"><i class="fa fa-circle-o"></i> 部门管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/emp/empManager"><i class="fa fa-circle-o"></i> 员工管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/recruit/recruitInfo"><i class="fa fa-circle-o"></i> 员工招聘</a></li>
                    <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> 绩效统计</a></li>
                    <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> 薪资管理</a></li>
                </ul>
            </li>
            <!--客户信息管理 -->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-laptop"></i>
                    <span>客户信息管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: none;">
                    <li><a href="${pageContext.request.contextPath}/customer/cusManager"><i class="fa fa-circle-o"></i> 客户资料</a></li>
                    <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> 客户订单</a></li>
                    <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> More</a></li>
                </ul>
            </li>
            <!-- 采购库存管理 -->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>采购库存管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: none;">
                    <li><a href="${pageContext.request.contextPath}/warehouse/warehousePlan"><i class="fa fa-circle-o"></i>采购计划管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/warehouse/inBound"><i class="fa fa-circle-o"></i> 入库</a></li>
                    <li><a href="${pageContext.request.contextPath}/warehouse/outBound"><i class="fa fa-circle-o"></i>出库</a></li>
                    <li><a href="${pageContext.request.contextPath}/warehouse/supplies"><i class="fa fa-circle-o"></i> 供货商管理</a></li>
                    <li><a href="examples/lockscreen.html"><i class="fa fa-circle-o"></i>库存管理</a></li>
                    <li><a href="examples/404.html"><i class="fa fa-circle-o"></i> 统计查询</a></li>
                    <li><a href="${pageContext.request.contextPath}/warehouse/warehouseOS"><i class="fa fa-circle-o"></i>仓库管理</a></li>
                    <li><a href="examples/blank.html"><i class="fa fa-circle-o"></i> More</a></li>
                    <li><a href="examples/pace.html"><i class="fa fa-circle-o"></i> More</a></li>
                </ul>
            </li>
            <!--产品信息管理 -->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-leaf"></i>
                    <span>产品信息管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${pageContext.request.contextPath}/shop/shopKind"><i class="fa fa-circle-o"></i> 产品分类</a></li>
                    <li><a href="${pageContext.request.contextPath}/shop/shopCrud"><i class="fa fa-circle-o"></i>产品处理中心</a></li>
                    <li><a href="${pageContext.request.contextPath}/shop/shopManager"><i class="fa fa-circle-o"></i> 产品管理</a></li>
                    <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> 产品统计分析</a></li>
                    <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> 产品生产管理</a></li>
                </ul>
            </li>
            <!--商务合作 -->
            <li class="treeview">
            <a href="#">
                <i class="fa fa-automobile"></i> <span>商务合作</span>
                <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i> </span>
            </a>
            <ul class="treeview-menu">
                <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i>合作简介</a></li>
                <li><a href="index2.html"><i class="fa fa-circle-o"></i>More</a></li>
            </ul>
        </li>
            <!--关于我们  -->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-heart"></i> <span>关于我们</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: none;">
                    <li><a href="#"><i class="fa fa-circle-o"></i> 核心成员</a></li>
                    <li><a href="https://www.baidu.com"><i class="fa fa-circle-o"></i>友情链接</a></li>
                    <li><a href="examples/lockscreen.html"><i class="fa fa-circle-o"></i>帮助</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

