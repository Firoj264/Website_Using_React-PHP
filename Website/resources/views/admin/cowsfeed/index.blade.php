@extends('admin.master.layout')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <section class="content-header">
        <h1><i class="fa fa-list" aria-hidden="true"></i>  Cow Feed List</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Cows Feed List</li>
        </ol>
    </section>
    <section class="content">
        <div class="box box-success">
            <div class="box-header with-border" align="right"> <a href="{{url('cowsfeedcreate')}}" class="btn btn-success btn-sm"> <i class="fa fa-plus"></i> <b>AddNew</b> </a> <a href="#" class="btn btn-warning btn-sm"> <i class="fa fa-refresh"></i> <b>Refresh</b> </a> </div>
            <div class="box-body">
                <div class="table_scroll">
                    <table class="table table-bordered table-striped table-responsive">
                        <thead>
                            <tr>
                                <th>Sl No</th>
                                <th>Date</th>
                                <th>Stall No</th>
                                <th>Cow No</th>
                                <th>Note</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $key => $rows)
                            <tr>
                                <td class="col-sm-1">{{$key+1}}</td>
                                <td class="col-sm-1">{{$rows->date}}</td>
                                <td class="col-sm-1">{{$rows->stall_no}}</td>
                                <td class="col-sm-1">{{$rows->animal_id}}</td>
                                <td class="col-sm-5">{{$rows->note}}
                                <td class="col-sm-1">
                                    <a href="{{url('staff/'.$rows->id.'/view')}}" class="btn btn-info btn-sm">View</a>
                                    <a href="{{url('staff/'.$rows->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>
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

@endsection

@section('script')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
@endsection