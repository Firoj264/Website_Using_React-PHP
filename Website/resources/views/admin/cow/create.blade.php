@extends('admin.master.layout')

@section('content')
<!-- Site wrapper -->
<div class="wrapper">
    <!-- =============================================== -->
    <!-- Left side column. contains the sidebar -->

    <!-- =============================================== -->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1><i class="fa fa-paw" aria-hidden="true"></i> Animal Information</h1>
            <ol class="breadcrumb">
                <li><a href=""><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Animal Information</li>
            </ol>
        </section>
        <section class="content">
            <!-- Default box -->
            <div class="box box-success">
                {!! Form::open(['url' => '/cow/store', 'method' =>'post', 'id'=>'validate', 'class'=>'formsave','enctype'=>"multipart/form-data"]) !!}
                @csrf
                <!-- <form method="POST" action="{{url('storestaff')}}" enctype="multipart/form-data"> -->
                <div class="box-body">
                    <div class="col-md-12">
                        @if(session('message'))
                        <div class="alert alert-success" id="message" style="display:block;color:green">{{session('message')}}</div>
                        @endif
                        <div class="panel-heading feed-heading"><i class="fa fa-info-circle"></i>&nbsp;Animal Basic Information</div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="DOB">Date of Birth <span class="validate">*</span> : </label>
                                            <input id="DOB" type="text" name="DOB" placeholder="Month/Day/Year" class="form-control age_datepicker" value="" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="age">Animal Age (Days) <span class="validate">*</span> : </label>
                                            <div class="input-group">
                                                <input type="text" name="age" id="age" class="form-control" value="" readonly>
                                                <input type="hidden" name="age_month" id="age_month" class="form-control" value="">
                                                <span class="input-group-addon animal-month">0 Month</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="weight">Weight (KG) <span class="validate">*</span> : </label>
                                            <input type="text" name="weight" class="form-control isnumber" value="" >
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="height">Height (INCH) <span class="validate">*</span> : </label>
                                            <input type="text" name="height" class="form-control isnumber" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="gender">Gender : </label>
                                            <select class="form-control" name="gender">
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="color">Color : </label>
                                            <select class="form-control" name="color">
                                                <option value="0">-- Select --</option>
                                                @foreach($color as $row)
                                                <option value="{{$row->id}}">{{$row->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="animal_type">Animal Type <span class="validate">*</span> : </label>
                                            <select class="form-control" name="animal_type">
                                                <option value="">-- Select --</option>
                                                @foreach($animal as $value)
                                                <option value="{{$value->id}}">{{$value->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="pregnant_status">Pregnant Status : </label>
                                            <select class="form-control" name="pregnant_status">
                                                <option value="Not Pregnant">No</option>
                                                <option value="Pregnant">Yes</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="previous_no_of_pregnant">No of Pregnent (Previouse Record) : </label>
                                            <input type="text" name="previous_no_of_pregnant" class="form-control isnumber" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="next_pregnant_aprrox_time">Next Pregnancy Appox Time : </label>
                                            <input type="text" name="next_pregnant_aprrox_time" class="form-control wsit_datepicker" autocomplete="off" placeholder="Month/Day/Year" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="milk_ltr_per_day">Milk Per Day (LTR) : </label>
                                            <input type="text" name="milk_ltr_per_day" class="form-control isnumber" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="buy_from">Buy From : </label>
                                            <input type="text" name="buy_from" class="form-control" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="buying_price">Buying Price <span class="validate">*</span> : </label>
                                            <input type="text" name="buying_price" class="form-control isnumber" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="buy_date">Buy Date <span class="validate">*</span> : </label>
                                            <input type="text" name="buy_date" class="form-control wsit_datepicker" autocomplete="off" placeholder="Month/Day/Year" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="stall_no">Stall No <span class="validate">*</span> : </label>
                                            <select class="form-control" name="stall_no">
                                                <option value="">-- Select --</option>
                                                @foreach($stall as $value)
                                                <option value="{{$value->id}}">{{$value->stall_no}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="previous_vaccine_done">Previous Vaccine Done : </label>
                                            <select class="form-control" name="previous_vaccine_done">
                                                <option value="No">No</option>
                                                <option value="Yes">Yes</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="note">Note : </label>
                                            <textarea id="note" name="note" class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-5">
                            <div class="col-md-5">
                                <div class="panel panel-default">
                                    <div class="panel-heading feed-heading"> <i class="fa fa-image"></i> Animal Images
                                        <!-- <button type="button" name="" id="increaserf" onclick="manageCowImageRow();" data-toggle="tooltip" class="btn btn-success btn-xs pull-right"><i class="fa fa-plus-circle"></i>&nbsp; Add Images</button> -->
                                    </div>
                                    <div class="panel-body" id="imageBlock">
                                        <div class="col-md-12 animal-box-height" id="div_0">
                                            <div class="upload-builder-2">
                                                <!-- <div class="upload-builder-3"><a onclick="$('#div_0').remove();" class="fa fa-times upload-builder-3a"></a> &nbsp; </div> -->
                                                <img src="{{url('frontend/images/cow.jpg')}}" class="manage-animal-upload" id="previewImage_0">
                                                <div class="manage-animal-upload-2">
                                                    <label class="btn btn-success btn-xs btn-file upload-builder-5"> <i class="fa fa-folder-open"></i>&nbsp;&nbsp; Upload Image
                                                        <input type="file" name="animal_image" id="inputImage_0" onchange="preview_Images_manage_cow(this);">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="">
                                    <button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <b>Save</b></button>
                                    &nbsp;
                                    <a href="{{url('cow')}}" class="btn btn-warning "><i class="fa fa-list"></i> <b> List</b></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{ csrf_field() }}
                {!! Form::close() !!}
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
        $('#validate').validate({
            rules: {
                name: "required",
                email: "required",
                phone_number: "required",
                salary: "required",
                joining_date: "required",
            },
            messages: {
                name: "Please enter name",
                email: "Please enter email",
                phone_number: "Please enter phone number",
                salary: "Please enter salary",
                joining_date: "Please enter joining date",
            },
        });
    });
</script>
@endsection