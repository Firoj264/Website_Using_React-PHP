@extends('admin.master.layout')

@section('content')
<!-- ifsession()->flash('success','Post Save Successfully'); -->
@if(session()->has('success'))
@endif
<div class="wrapper">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1><i class="fa fa-cutlery"></i>Cow sale information</h1>
            <ol class="breadcrumb">
                <li><a href=""><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Cows sale information</li>
            </ol>
        </section>
        <section class="content">
            <div class="box box-success">
                {!! Form::open(['url' => '/cowsale', 'method' =>'post', 'id'=>'validate','class'=>'formsave']) !!}
                @csrf
                <div class="box-body">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-heading feed-heading feed-heading"><i class="fa fa-info-circle"></i>&nbsp;Customer Information :</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Date <span class="validate">*</span> : </label>
                                                <input type="text" name="date" id="date" class="form-control wsit_datepicker" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Customer Name <span class="validate">*</span> : </label>
                                                <input type="text" name="customer_name" id="customer_name" class="form-control" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Date <span class="validate">*</span> : </label>
                                                <input type="text" name="customer_phone" id="customer_phone" class="form-control" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Customer Email <span class="validate">*</span> : </label>
                                                <input type="text" name="customer_email" id="customer_email" class="form-control" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Customer Address <span class="validate">*</span> : </label>
                                                <input type="text" name="address" id="address" class="form-control" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Note <span class="validate">*</span> : </label>
                                                <input type="text" name="note" id="note" class="form-control" value="" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading feed-heading feed-heading"><i class="fa fa-info-circle"></i>&nbsp;Cow Selection</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="table grid-table">
                                            <thead id="table" name="table">
                                                <tr style="margin-bottom: -10px;">
                                                    <th>Image</td>
                                                    <th>Animal Type</th>
                                                    <th>Animal Id</th>
                                                    <th>Stall No</th>
                                                    <th>Sell Price</th>
                                                    <td><input class="btn btn-success btn-block" id="add" name="add" type="button" value="Add" onclick="fncAdd()" /> </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="{{url('public/frontend/images/noImage.jpg')}}" id="image" name="image" class="img-thumbnail img-width-150">
                                                    </td>
                                                    <td class="verticalAlign">
                                                        <select class="form-control" id="cowtype" name="cowtype" onchange="loadCowSell();">
                                                            <option value="">-- Select --</option>
                                                            <option value="1">Cow</option>
                                                            <option value="2">Calf</option>
                                                        </select>
                                                    </td>
                                                    <td class="verticalAlign">
                                                        <select class="form-control" id="animal_id" name="animal_id" onchange="changeCow();">
                                                            <option value="">-- Select --</option>
                                                        </select>
                                                    </td>
                                                    <td class="verticalAlign">
                                                        <input type="text" id="stall_no" name="stall_no" class="form-control" value="" readonly>
                                                    </td>
                                                    <td class="verticalAlign">
                                                        <input type="text" id="sell_price" name="sell_price" class="form-control cowprice" onkeyup="totalPriceCowSell();" value="0.00">
                                                    </td>
                                                </tr>
                                                </tr>
                                            </thead>
                                            <tbody id="feedinformations"></tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading feed-heading"><i class="fa fa-info-circle"></i>&nbsp;Payment Information :</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Total Price <span class="validate">*</span> : </label>
                                                <input type="text" name="total_price" class="form-control" value="50" id="total_price" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="total_paid">Total Paid <span class="validate">*</span> : </label>
                                                <input type="text" name="total_paid" class="form-control" value="" id="total_paid" onkeyup="calculateCowSell();" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="due">Due Amount : </label>
                                                <input type="text" name="due" class="form-control" value="" id="due">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-success " id="saveInfo"><i class="fa fa-floppy-o"></i> <b>Save Information</b></button>
                            &nbsp;
                            <a href="{{url('cowsfeed')}}" class="btn btn-warning "><i class="fa fa-list"></i> <b> Feed List</b></a>
                        </div>
                    </div>
                </div>
                {{ csrf_field() }}
                {!! Form::close() !!}
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

    function loadCowSell() {
        var id = $('#cowtype').val();
        if (id == 1) {
            $.ajax({
                url: "getmilkinfo",
                data: {
                    "accNo": $("#cowtype").val()
                },
                dataType: "html",
                type: "post",
                success: function(data) {
                    console.log(data);
                }
            });
        } else {
            $.ajax({
                url: "getmilkinfo",
                data: {
                    "accNo": $("#cowtype").val()
                },
                dataType: "html",
                type: "post",
                success: function(data) {
                    console.log(data);
                }
            });
        }
    };
    function fncAdd() {
        var image = $('#image').val();
        var cowtype = $('#cowtype').val();
        var animal_id = $('#animal_id').val();
        var stall_no = $('#stall_no').val();
        var sell_price = $('#sell_price').val();
        var row = '<tr> ' +
            "<td><img src='"+ image +"' id='image' name='image' class='img-thumbnail img-width-150'></td>" +
            "<td><input class='form-control' name='quantity[]' type='text' value='" + cowtype + "' readonly/> </td> " +
            "<td><input class='form-control' name='unit[]' type='text' value='" + animal_id + "' readonly/> </td> " +
            "<td><input class='form-control' name='feedingtime[]' type='text' value='" + stall_no + "' readonly/> </td> " +
            "<td><input class='form-control' name='feedingtime[]' type='text' value='" + sell_price + "' readonly/> </td> " +
            ' <td><a class="btn btn-info btn-block removeRow" style="color:white">Remove</a> </td>' +
            ' </tr>';
        $('.grid-table thead input').not(".grid-table thead #add").val('');
        $('#feedinformations').append(row);
    };

    $("table #feedinformations").on('click', 'a.removeRow', function(e) {
        $(this).closest('tr').remove();
        return false;
    });
</script>
@endsection