@extends('layouts.app')

@section('content')
<div class="container">
<div class="row">
        <!-- Left col -->
        <section class="col-lg-6">

          <!-- Chat box -->
          <div class="box box-success">
            <div class="box box-solid">
                <div class="box-header with-border">
                <h3 class="box-title">Carousel</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                    </ol>
                    <div class="carousel-inner">
                    <div class="item active">
                        <img src="http://placehold.it/900x500/39CCCC/ffffff&text=I+Love+Bootstrap" alt="First slide">

                        <div class="carousel-caption">
                        First Slide
                        </div>
                    </div>
                    <div class="item">
                        <img src="http://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap" alt="Second slide">

                        <div class="carousel-caption">
                        Second Slide
                        </div>
                    </div>
                    <div class="item">
                        <img src="http://placehold.it/900x500/f39c12/ffffff&text=I+Love+Bootstrap" alt="Third slide">

                        <div class="carousel-caption">
                        Third Slide
                        </div>
                    </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="fa fa-angle-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="fa fa-angle-right"></span>
                    </a>
                </div>
                </div>
                <!-- /.box-body -->
            </div>
          </div>
          <!-- /.box (chat box) -->

          <!-- TO DO List -->
          <div class="box box-primary">
          <h3 class="box-title"><b>Peneyejuk jiwa</b></h3>
            <p>
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </p>
          </div>
          <!-- /.box -->

        </section>
        <!-- /.Left col -->
        <!-- right col (We are only adding the ID to make the widgets sortable)-->
        <section class="col-lg-6">

         <div class="box box-solid">
            <div class="box-header with-border">
            
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                    @foreach( $contents as $content )
                        <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
                    @endforeach
                    </ol>
                    <div class="carousel-inner">
                    @foreach( $contents as $content )
                    
                        <div class="item {{ $loop->first ? 'active' : '' }}">
                        <h3 class="box-title"><b>{{ $content->title }}</b></h3>
                        {!! $content->content !!}
                        </div>
                    @endforeach
                    </div>
                    <a class="left" href="#carousel-example-generic" data-slide="prev">
                    <span class="fa fa-angle-left"></span>
                    </a>
                    <a class="right" href="#carousel-example-generic" data-slide="next">
                    <span class="fa fa-angle-right"></span>
                    </a>
                </div>
            </div>
            <!-- /.box-body -->
        </div>

        </section>
        <!-- right col -->
      </div>
</div>
@endsection
