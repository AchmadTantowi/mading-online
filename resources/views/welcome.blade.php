@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="box" style="padding-left:100px;padding-right:100px;">
                <!-- <div class="box-header with-border">
                    <h3 class="box-title">Monthly Recap Report</h3>
                </div> -->
                <div class="box-body">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                        @foreach( $banners as $banner )
                            <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
                        @endforeach
                        </ol>
                        <div class="carousel-inner">
                            @foreach( $banners as $banner )
                                <div class="item {{ $loop->first ? 'active' : '' }}">
                                <h3 class="box-title"><b>{{ $banner->title }}</b></h3>
                                <img src="{{ asset('images/').'/'.$banner->image }}" width="100%" height="auto">
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
            </div>
        </div>

        <section class="col-lg-6">
            <div class="box box-solid">
            <div class="box-header with-border">
            
            </div>
            <div class="box-body">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                    @foreach( $quotes as $quote )
                        <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
                    @endforeach
                    </ol>
                    <div class="carousel-inner">
                        @foreach( $quotes as $quote )
                            <div class="item {{ $loop->first ? 'active' : '' }}">
                            <h3 class="box-title"><b>{{ $quote->title }}</b></h3>
                            {!! $quote->content !!}
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
            </div>
        </section>

        <section class="col-lg-6">
            <div class="box box-solid">
                <div class="box-header with-border">
                
                </div>
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
            </div>
        </section>
    </div>
</div>
@endsection
