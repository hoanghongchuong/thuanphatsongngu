@extends('admin.master')
@section('content')
@section('controller',''.$trang)
@section('action','List')
<!-- Content Header (Page header) -->
<script type="text/javascript">
  $(document).ready(function() {
    $("#chonhet").click(function(){
      var status=this.checked;
      $("input[name='chon']").each(function(){this.checked=status;})
    });
    
    $("#xoahet").click(function(){
      var listid="";
      $("input[name='chon']").each(function(){
        if (this.checked) listid = listid+","+this.value;
        })
      listid=listid.substr(1);   //alert(listid);
      if (listid=="") { alert("Bạn chưa chọn mục nào"); return false;}
      hoi= confirm("Bạn có chắc chắn muốn xóa?");
      if (hoi==true) document.location = homeUrl()+"/backend/news/"+listid+"/deleteList?type={{@$_GET[type]}}";
    });
  });
</script>
<section class="content-header">
  <h1>
    @yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        @include('admin.messages_error')

        @if($_GET['type']=='su-khac-biet')
        <h3>Đường dẫn:<a href="{{url('su-khac-biet')}}" target="_blank"> {{url('su-khac-biet')}}</a></h3>
        @endif

        @if($_GET['type']=='quan-he-co-dong')
        <h3>Đường dẫn:<a href="{{url('quan-he-co-dong')}}" target="_blank"> {{url('su-khac-biet')}}</a></h3>
        @endif
        <!-- <h3>Đường dẫn: <a href="{{url('tin-tuc/tin-tuyen-dung')}}" title="">{{url('tin-tuc/tin-tuyen-dung')}}</a></h3> -->
        <!--<div class="box-header">
          <h3 class="box-title">Data Table With Full Features</h3>
        </div>-->
        <div class="box-body">
          <table id="example2" class="table table-bordered table-hover">
            <thead>
              <tr>
                <th style="width: 20px;"><input type="checkbox" name="chonhet" class="minimal" id="chonhet" /></th>
                <th class="text-center with_dieuhuong">Stt</th>
                @if($_GET['type']=='tin-tuc' || $_GET['type']=='gioi-thieu')
                <th>Danh mục cha</th>
                @endif
                <th>Tên bài viết</th>
                <th>Hình ảnh</th>
                <th class="text-center with_dieuhuong">Hoạt động</th>
                <th class="text-center with_dieuhuong">Sửa</th>
                <th class="text-center with_dieuhuong">Xóa</th>
              </tr>
            </thead>
            <tbody>
              @foreach($data as $k=>$item)
              <tr>
                <td><input type="checkbox" name="chon" id="chon" value="{{$item->id}}" class="chon" /></td>
                <td class="text-center with_dieuhuong">{{$k+1}}</td>
                @if($_GET['type']=='gioi-thieu' || $_GET['type']=='tin-tuc')
                <td>
                  <?php  $parent = DB::table('news_categories')->where('id', $item->cate_id)->where('com', @$_GET['type'])->first();
                  ?>
                  @if(!empty($parent))
                    {{ $parent->name }}
                  @else
                    {{ 'None' }}
                  @endif
                </td>
                @endif
                <td>
                  {{$item->name}}<br>
                  <!-- <a href="{{ asset('/'.$item->com.'/'.$item->alias.'.html') }}" target="_blank">{{ $item->com.'/'.$item->alias.'.html' }}</a> -->
                </td>
                
                <td><img src="{{ asset('upload/news/'.$item->photo) }}" onerror="this.src='{{ asset('public/admin_assets/images/no-image.jpg') }}';" class="img_product"  alt="NO PHOTO" /></td>
                <td class="text-center with_dieuhuong">
                  <div class="form-group"> 
                    @if($item->status>0)
                      <a href="backend/news/edit?id={{$item->id}}&hienthi={{ time() }}&type={{ @$_GET['type'] }}" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> Hiển thị</a>
                    @else
                      <a href="backend/news/edit?id={{$item->id}}&hienthi={{ time() }}&type={{ @$_GET['type'] }}" class="btn btn-danger btn-xs"><i class="fa fa-eye"></i> Hiển thị</a>
                    @endif
                  </div>
                  @if($_GET['type']=='tin-tuc')
                  <div class="form-group"> 
                    @if($item->noibat>0)
                      <a href="backend/news/edit?id={{$item->id}}&noibat={{ time() }}&type={{ @$_GET['type'] }}" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> Nổi bật</a>
                    @else
                      <a href="backend/news/edit?id={{$item->id}}&noibat={{ time() }}&type={{ @$_GET['type'] }}" class="btn btn-danger btn-xs"><i class="fa fa-eye"></i> Nổi bật</a>
                    @endif
                  </div>
                  @endif
                </td>
                <td class="text-center with_dieuhuong">
                  <i class="fa fa-pencil fa-fw"></i><a href="backend/news/edit?id={{$item->id}}&type={{ @$_GET['type'] }}">Edit</a>
                </td>
                <td class="text-center">
                  <i class="fa fa-trash-o fa-fw"></i><a onClick="if(!confirm('Xác nhận xóa')) return false;" href="backend/news/{{$item->id}}/delete?type={{ @$_GET['type'] }}">Delete</a>
                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
        </div><!-- /.box-body -->
        <div class="box-footer col-md-12">
          <div class="row">
            <div class="col-md-6">
              <input type="button" onclick="javascript:window.location='backend/news/add?type={{ @$_GET[type] }}'" value="Thêm" class="btn btn-primary" />
              <button type="button" id="xoahet" class="btn btn-success">Xóa</button>
              <input type="button" value="Thoát" onclick="javascript:window.location='backend'" class="btn btn-danger" />

            </div>
          </div>
        </div>
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->
@endsection()
