@extends('admin.layouts.app')
@section('css')

@stop
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Content</h1>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
        @if (count($errors) > 0)
        <div class="alert alert-danger">
          <strong>Whoops!</strong> There were some problems with your input.<br><br>
          <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif  
        
        <!-- <form method="POST" enctype="multipart/form-data" action="/mading-online/public/admin/content/save-content"> -->
        <form method="POST" enctype="multipart/form-data" action="/admin/content/edit-content/{{$contents->id}}">
              {{ csrf_field() }}
          <div class="box box-info">
            <!-- /.box-header -->
            <div class="box-body pad">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Title</label>
                  <input type="text" name="title" class="form-control" value="{{ $contents->title }}" id="exampleInputEmail1">
                </div>
                <div class="form-group">
                  <label>Category</label>
                  <select class="form-control" name="category" id="category">
                    <option {{ $contents->category == 'Quote' ? 'selected':'' }}>Quote</option>
                    <option {{ $contents->category == 'Information' ? 'selected':'' }}>Information</option>
                    <option {{ $contents->category == 'Banner' ? 'selected':'' }}>Banner</option>
                    <option {{ $contents->category == 'Video' ? 'selected':'' }}>Video</option>
                  </select>
                </div>
                @if($contents->type_content == 'video')
                <div class="form-group">
                  <label>Status</label>
                  <select class="form-control" name="status" >
                    <option {{ $contents->active == 1 ? 'selected':'' }}>Active</option>
                    <option {{ $contents->active == 0 ? 'selected':'' }}>Inactive</option>
                  </select>
                </div>
                @endif
                @if($contents->category == 'Banner' || $contents->category == 'Video')
                <label for="exampleInputEmail1" >File</label><br>
                @if (!is_null($contents->image))
                    @if($contents->type_content == 'gambar')
                    <img src="{{ asset('images/').'/'.$contents->image }}">
                    @else
                    <video width="50%" height="auto" controls>
                        <source src="{{ asset('images/').'/'.$contents->image }}" type="video/mp4"></source>
                    </video>
                    @endif
                @else
                    <p>No image found</p>
                @endif
                <div class="input-group control-group">
                  <input type="file" name="filename" class="form-control" >
                </div>
                @endif
                <!-- <label for="exampleInputEmail1" id="image-label">Image</label>
                <div class="input-group control-group increment" id="image">
                  <input type="file" name="filename[]" class="form-control" >
                  <div class="input-group-btn"> 
                    <button class="btn btn-success" type="button"><i class="glyphicon glyphicon-plus"></i>Add</button>
                  </div>
                </div>
                <div class="clone hide">
                  <div class="control-group input-group" style="margin-top:10px">
                    <input type="file" name="filename[]" class="form-control">
                    <div class="input-group-btn"> 
                      <button class="btn btn-danger" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
                    </div>
                  </div>
                </div> -->
                @if($contents->category == 'Quote' || $contents->category == 'Information')
                <div class="form-group" id="contents">
                    <label for="exampleInputPassword1">Content</label>
                    <textarea id="editor1" name="content" rows="10" cols="80">
                        {{ $contents->content }}
                    </textarea> 
                </div>
                @endif
              </div>
            </div>
            <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
          </form>
          <!-- /.box -->
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->
  </div>
  @stop
  @section('script')
    <!-- CK Editor -->
    <script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
    <script>
    $(function () {

       
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor1');
    });

    $(document).ready(function() {

      $(".btn-success").click(function(){ 
        var html = $(".clone").html();
        $(".increment").after(html);
      });

      $("body").on("click",".btn-danger",function(){ 
        $(this).parents(".control-group").remove();
      });

    });
    </script>
  @stop