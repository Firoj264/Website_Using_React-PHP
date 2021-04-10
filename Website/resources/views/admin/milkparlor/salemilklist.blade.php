@extends('admin.master.layout')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <section class="content-header">
    <h1><i class="icon-list"></i> Sale Milk List</h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Sale Milk List</li>
    </ol>
  </section>
  <section class="content">
    <div class="box box-success">
      <div class="box-header with-border" align="right"> <a href="{{url('salemilk')}}" class="btn btn-success btn-sm"> <i class="fa fa-plus"></i> <b>New Sale</b> </a> <a href="#" class="btn btn-warning btn-sm"> <i class="fa fa-refresh"></i> <b>Refresh</b> </a> </div>
      <div class="box-body">
        <div class="table_scroll">
          <table class="table table-bordered table-striped table-responsive">
            <thead>
              <tr>
                <th>Sl No</th>
                </th>
                <th>Invoice</th>
                <th>Date</th>
                <th>Account No</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Litre</th>
                <th>Price</th>
                <th>Total</th>
                <th>Paid</th>
                <th>Due</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              @foreach($data as $key => $rows)
              <tr>
                <td>{{$key+1}}</td>
                <td>{{$rows->InvoiceNo}}</td>
                <td>{{$rows->InvoiceDate}}</td>
                <td>{{$rows->AccNo}}</td>
                <td>{{$rows->Name}}</td>
                <td>{{$rows->MobileNo}}</td>
                <td>{{$rows->Email}}</td>
                <td>{{$rows->Litre}}</td>
                <td>{{$rows->PriceLitre}}</td>
                <td>{{$rows->Total}}</td>
                <td>{{$rows->Paid}}</td>
                <td>{{$rows->Due}}</td>
                <td>
                  <a href="{{url('staff/'.$rows->id.'/edit')}}" class="btn btn-info" style="font-size: 15px; padding:5px;margin: 0px;">Edit</a>
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