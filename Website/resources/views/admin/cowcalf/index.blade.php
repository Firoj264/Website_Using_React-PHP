@extends('admin.master.layout')

@section('content')
<div class="wrapper">
    <div class="content-wrapper">
        <section class="content-header">
            <h1><i class="fa fa-tasks" aria-hidden="true"></i> Cow Calf List</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Cow Calf List</li>
            </ol>
        </section>
        <section class="content">
            <div class="box box-success">
                <div class="box-header with-border" align="right"> <a href="{{url('cowcalf/create')}}" class="btn btn-success btn-sm"> <i class="fa fa-plus"></i> <b>Add New</b> </a> <a href="#" class="btn btn-warning btn-sm"> <i class="fa fa-refresh"></i> <b>Refresh</b> </a> </div>
                @if(session('message'))
                <div class="alert alert-danger" id="message" style="display:block;color:green">{{session('message')}}</div>
                @endif
                <div class="box-body">
                    <div class="table_scroll">
                        <table class="table table-bordered table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th class="text-center" >Sl No</th>
                                    <th class="text-center" >Cow Calf Id</th>
                                    <th class="text-center" >Image</th>
                                    <th class="text-center" >Mohter Id</th>
                                    <th class="text-center" >Gender</th>
                                    <th class="text-center" >Animal Type</th>
                                    <th class="text-center" >Buy Date</th>
                                    <th class="text-center" >Buying Price</th>
                                    <th class="text-center" >Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($data as $key => $rows)
                                <tr>
                                    <td class="text-center"><label class="label label-default lblfarm">{{$key+1}}</label></td>
                                    <td class="text-center" >{{$rows->animal_id}}</td>
                                    <td class="text-center col-sm-1"><img name="zoom" style="background-color: red;padding:1px" width="100%" height="40px" src="{{ URL::asset($rows->image) }}"></td>
                                    <!-- <td>{{$rows->image}}</td> -->
                                    <td class="text-center"><label class="label label-success lblfarm">{{$rows->mother_id}}</label></td>
                                    <td class="text-center"><label class="label label-success lblfarm">{{$rows->gender}}</label></td>
                                    <td class="text-center"><label class="label label-info lblfarm">{{$rows->animal_type}}</label></td>
                                    <td class="text-center">{{$rows->buy_date}}</td>
                                    <td class="text-center">{{$rows->buy_price}}</td>
                                    <td>
                                        <a href="{{url('cowcalf/edit/'.$rows->id)}}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i></a>
                                        <a href="{{url('cowcalf/delete/'.$rows->id)}}" class="btn btn-danger btn-sm"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div align="center"></div>
                    </div>
                </div>
                <div class="box-footer"> </div>
            </div>
        </section>
    </div>
</div>
@endsection

@section('script')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(document).ready(function() {
        $('img').hover(function() {
            $(this).css("cursor", "pointer");
            $(this).toggle({
                effect: "scale",
                percent: "90%"
            }, 200);
        }, function() {
            $(this).toggle({
                effect: "scale",
                percent: "80%"
            }, 200);

        });
    });
</script>
@endsection