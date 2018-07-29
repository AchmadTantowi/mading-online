@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row" style="margin-left:-380px;margin-right:-380px;">
        <div class="col-md-5">
            <div class="box">
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
        <div class="col-md-6">
            <div class="box">
                <!-- <div class="box-header with-border">
                    <h3 class="box-title">Monthly Recap Report</h3>
                </div> -->
                <div class="box-body">
                    <!-- <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"> -->
                        <!-- <ol class="carousel-indicators">
                        @foreach( $videos as $video )
                            <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
                        @endforeach
                        </ol> -->
                        <!-- <div class="carousel-inner"> -->
                            @foreach( $videos as $video )
                                <!-- <div class="item {{ $loop->first ? 'active' : '' }}"> -->
                                <h3 class="box-title"><b>{{ $video->title }}</b></h3>
                                <!--<img src="{{ asset('images/').'/'.$banner->image }}" width="100%" height="auto"> -->
                                <video width="100%" height="auto" controls autoplay loop>
                                    <source src="{{ asset('images/').'/'.$video->image }}" type="video/mp4"></source>
                                </video>
                                <!-- </div> -->
                            @endforeach
                        <!-- </div> -->
                        <!-- <a class="left" href="#carousel-example-generic" data-slide="prev">
                        <span class="fa fa-angle-left"></span>
                        </a>
                        <a class="right" href="#carousel-example-generic" data-slide="next">
                        <span class="fa fa-angle-right"></span>
                        </a> -->
                    <!-- </div> -->
                </div>
            </div>
        </div>

        <section class="col-md-5" style="padding-right:50px;">
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

    

        <section class="col-md-6">
            <div class="box box-solid">
                <div class="box-header with-border">
                
                </div>
                <div class="box-body">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                        @foreach( $getDatas as $getData )
                            <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
                        @endforeach
                        </ol>
                        <div class="carousel-inner">
                        @foreach( $getDatas as $getData )
                            <div class="item {{ $loop->first ? 'active' : '' }}">
                            <h3 class="box-title"><b><img src="http://pbs.twimg.com/profile_images/1592378929/uai.jpg_normal.jpg">  {{ $getData['user']['name'] }}</b></h3>
                            <p><i>{!! date('d-m-Y', strtotime($getData['created_at'])); !!}</i></p>
                            {!! $getData['text'] !!}
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
@section('script')
 
@stop