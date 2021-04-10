@extends('admin.master.layout')
@section('content')
<div class="wrapper">
    <div class="content-wrapper">
        <section class="content">
            <section class="content-header">
                <h1><i class="fa fa-list" aria-hidden="true"></i> Collected Milk List</h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Collected Milk List</li>
                </ol>
            </section>
            <div class="box box-success">
                <div class="box-header with-border" align="right"> <a href="{{url('milkparlor')}}" class="btn btn-success btn-sm"> <i class="fa fa-plus"></i> <b>Collect Milk</b> </a> <a href="#" class="btn btn-warning btn-sm"> <i class="fa fa-refresh"></i> <b>Refresh</b> </a> </div>
                <div class="box-body">
                    @if(session('message'))
                    <div class="alert alert-success" id="message">{{session('message')}}</div>
                    @endif
                    <div class="table_scroll">
                        <table class="table table-bordered table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>sl</th>
                                    <th>Date</th>
                                    <th>Account No</th>
                                    <th>Stall No</th>
                                    <th>Animal Id</th>
                                    <th>Litre</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                    <th>Collected From</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($data as $key => $rows)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{{$rows->collected_date}}</td>
                                    <td>{{$rows->account_no}}</td>
                                    <td>{{$rows->stall_no}}</td>
                                    <td>{{$rows->animal_id}}</td>
                                    <td>{{$rows->liter}}</td>
                                    <td>{{$rows->price_liter}}</td>
                                    <td>{{$rows->total_price}}</td>
                                    <td>{{$rows->collected_from}}</td>
                                    <td>
                                        <a href="{{url('milkparlor/'.$rows->id.'/edit')}}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i></a>
                                        {!! Form::open(['method' => 'DELETE','url' => ['milkparlor', $rows->id],'style'=>'display:inline']) !!}
                                        {{ Form::button('<i class="fa fa-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-sm delete'] )  }}
                                        {!! Form::close() !!}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
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

    $('.delete').click(function(e) {
        if (!confirm('Are you sure you want to delete this?')) {
            e.preventDefault();
        }
    });

    function editData($id) {
        console.log($id);
    };
</script>
@endsection