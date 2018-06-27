<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ Auth::user()->avatar }}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{ Auth::user()->name }}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="{{ Request::is('admin/dashboard') ? 'active' : '' }}">
          <a href="/admin/dashboard">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container"></span>
          </a>
        </li>
        <li class="{{ Request::is('admin/content') ? 'active' : '' }}">
          <a href="/admin/content">
          <i class="fa fa-edit"></i> <span>Content</span>
            <span class="pull-right-container"></span>
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>