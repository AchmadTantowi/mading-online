@extends('admin.layouts.app')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-12 col-xs-6">
          Selamat datang <b>{{ Auth::user()->name }}</b><br><br>
          <h3><b>Vision</b></h3>
“ To become leading university in developing excellent and dignified persons, who have intellectual capability, based on Islamic spiritual, moral, and ethical values “<br>

<h3><b>Mission</b></h3>
1. To improve quality of education, research, and public services, by applying enterprising university’s principles;<br>
2. To tighten partnership with relevant domestic and international  institutions;<br>
3. To apply universal Islamic values in character building.
<h4><b>Visi UAI</b></h4>
“Menjadi Universitas Terkemuka dalam Membentuk Manusia Unggul dan Bermartabat, yang Memiliki Kemampuan Intelektual Berlandaskan Nilai-nilai Spiritual, Moral, dan Etika Islami “

<h4><b>Misi UAI</b></h4>
Meningkatkan kualitas pendidikan, penelitian, dan pelayanan kepada masyarakat, dengan menerapkan kaidah enterprising university;
Menjalin kemitraan dengan institusi yang relevan, baik di dalam maupun di luar negeri;
Menumbuh-kembangkan nilai-nilai universal Islam dalam pembentukan karakter.
        </div>
        
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  @stop