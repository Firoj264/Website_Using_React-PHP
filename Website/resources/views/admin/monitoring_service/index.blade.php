@extends('admin.master.layout')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <section class="content-header">
        <h1><i class="fa fa-list" aria-hidden="true"></i>Monitoring service list</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Monitoring Service List</li>
        </ol>
    </section>
    <section class="content">
        <div class="box box-success">
            <div class="box-header with-border" align="right"> <a href="{{url('monitoringservice/create')}}" class="btn btn-success btn-sm"> <i class="fa fa-plus"></i> <b>Add New</b> </a> <a href="#" class="btn btn-warning btn-sm"> <i class="fa fa-refresh"></i> <b>Refresh</b> </a> </div>
            <div class="box-body">
                <div class="col-sm-8 col-md-offset-3">
                    <div class="table_scroll">
                        @if(session('message'))
                        <div class="alert alert-success" id="message">{{session('message')}}</div>
                        @endif
                        <table class="table table-bordered table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>Sl No</th>
                                    <th>Unit Name</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($data as $key => $rows)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td><label class="label label-success">{{$rows->name}}</label></td>
                                    <td>
                                        <a href="{{url('monitoringservice/'.$rows->id.'/edit')}}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i></a>
                                        {!! Form::open(['method' => 'DELETE','url' => ['monitoringservice', $rows->id],'style'=>'display:inline']) !!}
                                        {{ Form::button('<i class="fa fa-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-sm'] )  }}
                                        {!! Form::close() !!}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div align="center"></div>
                    </div>
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

    function addForm() {
        save_method = 'add';
        $('input[name_method]').val('POST');
        $('#modal-form').modal('show');
        $('#modal-form form')[0].reset();
        $('.modal-title').text('Add new color');
        // $('#insertbtn').text('Save');
        // $('h4').append('<i class="fa fa-plus-square color-green"></i>');
    }

    $('#validate').validate({
        rules: {
            name: {
                required: true,
            },
        },
        messages: {
            name: {
                required: "Please enter food unit",
            },
        },
    });
</script>
@endsection