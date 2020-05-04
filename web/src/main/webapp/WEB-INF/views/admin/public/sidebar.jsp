<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
        try {
            ace.settings.loadState('sidebar')
        } catch (e) {
        }
    </script>
    <ul class="nav nav-list">
        <li class="active">
            <a href="">
                <i class="menu-icon fa fa-tachometer"></i>
                <span class="menu-text">主页</span>
            </a>
            <b class="arrow"></b>
        </li>
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text">系统管理</span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="/user/userManage">
                        <i class="menu-icon fa fa-caret-right"></i>
                        用户管理
                    </a>
                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="../../../../static/admin/ace-master/jqgrid.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        文章管理
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
           data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>
