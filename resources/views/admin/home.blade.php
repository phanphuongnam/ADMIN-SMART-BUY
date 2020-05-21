@extends('layouts')
@section('title' , 'ADMIN')
@section('contents')
<!-- Content Wrapper. Contains page content -->
<div class="wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">DashBoard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('admin')}}">Home</a></li>
            <li class="breadcrumb-item active">Starter Page</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Small boxes (Stat box) -->
      <div class="row">
  
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3>{{$Totalorder}}</h3>

              <p>Đơn Hàng</p>
            </div>
            <div class="icon">
              <i class="fas fa-file-invoice"></i>
            </div>
            <a href="{{route('admin/orders.index')}}" class="small-box-footer">Xem chi tiết<i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">
              <!-- <h3>53<sup style="font-size: 20px">%</sup></h3> -->
              <h3>{{$Totalcate}}</h3>
              <p>Danh Mục</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="{{route('admin/categories.index')}}" class="small-box-footer">Xem chi tiết<i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-warning">
            <div class="inner">
              <h3>{{$TotalUser}}</h3>
              <p>Thành Viên</p>
            </div>
            <div class="icon">
              <i class="fas fa-users"></i>
            </div>
            <a href="{{route('admin/users.index')}}" class="small-box-footer">Xem chi tiết<i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-danger">
            <div class="inner">
              <h3>{{$Totalproduct}}</h3>
              <p>Sản Phẩm</p>
            </div>
            <div class="icon">
            <i class="fas fa-toolbox"></i>
            </div>
            <a href="{{route('admin/products.index')}}" class="small-box-footer">Xem chi tiết<i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->

        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3>{{$Totalcontact}}</h3>

              <p>Liên Hệ</p>
            </div>
            <div class="icon">
              <i class="far fa-address-card"></i>
            </div>
            <a href="{{route('admin/contacts.index')}}" class="small-box-footer">Xem chi tiết<i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">
              <!-- <h3>53<sup style="font-size: 20px">%</sup></h3> -->
              <h3>{{$Totalcmt}}</h3>
              <p>Bình Luận</p>
            </div>
            <div class="icon">
              <i class="far fa-comments"></i>
            </div>
            <a href="{{route('admin/comments.index')}}" class="small-box-footer">Xem chi tiết<i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
       
        <!-- ./col -->

        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-danger">
            <div class="inner">
              <h3>{{$Totalvoucher}}</h3>

              <p>Mã Giảm Giá</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="{{route('admin/vouchers.index')}}" class="small-box-footer">Xem chi tiết<i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->



      </div><!-- end-row-->
    </div> <!-- end-container-fluid-->
  </section><!--endSection-->
</div> <!-- content-wrapper-->
<div class="row">
  <div class="col-lg-6">
    <div class="card">
      <div class="card-header border-0">
        <div class="d-flex justify-content-between">
          <h3 class="card-title">Biểu đồ sản phẩm được mua</h3>
          <a href="javascript:void(0);">Xem báo cáo</a>
        </div>
      </div>
      <div class="card-body">
        <div class="d-flex">
          <p class="d-flex flex-column">
            <span class="text-bold text-lg">320 Sản Phẩm</span>
            <span>Sản phẩm tuần trước</span>
          </p>
          <p class="ml-auto d-flex flex-column text-right">
            <span class="text-success">
              <i class="fas fa-arrow-up"></i> 12.5%
            </span>
            <span class="text-muted">Sản phẩm tuần này</span>
          </p>
        </div>
        <!-- /.d-flex -->

        <div class="position-relative mb-4">
          <canvas id="visitors-chart" height="200"></canvas>
        </div>

        <div class="d-flex flex-row justify-content-end">
          <span class="mr-2">
            <i class="fas fa-square text-primary"></i> Tuần này
          </span>

          <span>
            <i class="fas fa-square text-gray"></i> Tuần trước
          </span>
        </div>
      </div>
    </div>
  </div>
  <!-- /.col-md-6 -->
  <div class="col-lg-6">
    <div class="card">
      <div class="card-header border-0">
        <div class="d-flex justify-content-between">
          <h3 class="card-title">Biểu đồ doanh thu</h3>
          <a href="javascript:void(0);">Xem báo cáo</a>
        </div>
      </div>
      <div class="card-body">
        <div class="d-flex">
          <p class="d-flex flex-column">
            <span class="text-bold text-lg">@foreach($totalrevenueMonth4 as $totalMonth4)  
              {{$totalMonth4->doanhthu}}
            @endforeach VNĐ</span>
            <span>Doanh thu tháng trước</span>
          </p>
          <p class="ml-auto d-flex flex-column text-right">
            <span class="text-success">
              <i class="fas fa-arrow-up"></i> 95.1%
            </span>
            <span class="text-muted">Doanh thu tháng này</span>
          </p>
        </div>
        <!-- /.d-flex -->

        <div class="position-relative mb-4">
          <canvas id="sales-chart" height="200"></canvas>
        </div>

        <div class="d-flex flex-row justify-content-end">
          <span class="mr-2">
             Đơn vị: Việt Nam Đồng
          </span>

          <span>
           
          </span>
        </div>
      </div>
    </div>        
  </div>
          <!-- /.col-md-6 -->
</div>
<script>

$(function () {
  'use strict'

  var ticksStyle = {
    fontColor: '#495057',
    fontStyle: 'bold'
  }

  var mode      = 'index'
  var intersect = true

  var $salesChart = $('#sales-chart')
  var salesChart  = new Chart($salesChart, {
    type   : 'bar',
    data   : {
      labels  : ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8'
      , 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'
      ],
      datasets: [
        
        // {
        //   backgroundColor: '#ced4da',
        //   borderColor    : '#ced4da',
        //   data           : [700, 1700, 2700, 2000, 1800, 1500, 2000,2200,2000,2000,2000,2000]
        // },
        {
          backgroundColor: '#007bff',
          borderColor    : '#007bff',
          data           : [
              @foreach($totalrevenueMonth1 as $totalMonth1)  
              {{$totalMonth1->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth2 as $totalMonth2)  
              {{$totalMonth2->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth3 as $totalMonth3)  
              {{$totalMonth3->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth4 as $totalMonth4)  
              {{$totalMonth4->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth5 as $totalMonth5)  
              {{$totalMonth5->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth6 as $totalMonth6)  
              {{$totalMonth6->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth7 as $totalMonth7)  
              {{$totalMonth7->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth8 as $totalMonth8)  
              {{$totalMonth8->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth9 as $totalMonth9)  
              {{$totalMonth9->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth10 as $totalMonth10)  
              {{$totalMonth10->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth11 as $totalMonth11)  
              {{$totalMonth11->doanhthu}}
            @endforeach,
            @foreach($totalrevenueMonth12 as $totalMonth12)  
              {{$totalMonth12->doanhthu}}
            @endforeach,
          ]
        },
      ]
    },
    options: {
      maintainAspectRatio: false,
      tooltips           : {
        mode     : mode,
        intersect: intersect
      },
      hover              : {
        mode     : mode,
        intersect: intersect
      },
      legend             : {
        display: false
      },
      scales             : {
        yAxes: [{
          // display: false,
          gridLines: {
            display      : true,
            lineWidth    : '4px',
            color        : 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks    : $.extend({
            beginAtZero: true,

            // Include a dollar sign in the ticks
            callback: function (value, index, values) {
              if (value >= 1000000) {
                value /=1000000
                value += ' Triệu'
              }
              else if (value < 1000000) {
                value /=1000
                value += 'K'
              }
              return value + ' VNĐ'
            }
          }, ticksStyle)
        }],
        xAxes: [{
          display  : true,
          gridLines: {
            display: false
          },
          ticks    : ticksStyle
        }]
      }
    }
  })

  var $visitorsChart = $('#visitors-chart')
  var visitorsChart  = new Chart($visitorsChart, {
    data   : {
      labels  : ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'Chủ nhật'],
      datasets: [{
        type                : 'line',
        data                : [100, 120, 170, 167, 180, 177, 160],
        backgroundColor     : 'transparent',
        borderColor         : '#007bff',
        pointBorderColor    : '#007bff',
        pointBackgroundColor: '#007bff',
        fill                : false
        // pointHoverBackgroundColor: '#007bff',
        // pointHoverBorderColor    : '#007bff'
      },
        {
          type                : 'line',
          data                : [60, 80, 70, 67, 80, 77, 100],
          backgroundColor     : 'tansparent',
          borderColor         : '#ced4da',
          pointBorderColor    : '#ced4da',
          pointBackgroundColor: '#ced4da',
          fill                : false
          // pointHoverBackgroundColor: '#ced4da',
          // pointHoverBorderColor    : '#ced4da'
        }]
    },
    options: {
      maintainAspectRatio: false,
      tooltips           : {
        mode     : mode,
        intersect: intersect
      },
      hover              : {
        mode     : mode,
        intersect: intersect
      },
      legend             : {
        display: false
      },
      scales             : {
        yAxes: [{
          // display: false,
          gridLines: {
            display      : true,
            lineWidth    : '4px',
            color        : 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks    : $.extend({
            beginAtZero : true,
            suggestedMax: 200
          }, ticksStyle)
        }],
        xAxes: [{
          display  : true,
          gridLines: {
            display: false
          },
          ticks    : ticksStyle
        }]
      }
    }
  })
})
</script>






@endsection