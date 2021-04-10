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
            <h1><i class="fa fa-paw" aria-hidden="true"></i> Cow Calf Information</h1>
            <ol class="breadcrumb">
                <li><a href=""><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Cow Calf Information</li>
            </ol>
        </section>
        <section class="content">
            <!-- Default box -->
            <div class="box box-success">
                {!! Form::open(['url' => ['/cowcalf/update',$data->id], 'method' =>'post', 'id'=>'validate', 'class'=>'formsave','enctype'=>"multipart/form-data"]) !!}
                @csrf
                <!-- <form method="POST" action="{{url('storestaff')}}" enctype="multipart/form-data"> -->
                <div class="box-body">
                    <div class="col-md-12">
                        @if(session('message'))
                        <div class="alert alert-success" id="message" style="display:block;color:green">{{session('message')}}</div>
                        @endif
                        <div class="panel-heading feed-heading"><i class="fa fa-info-circle"></i>&nbsp;Calf Basic Information</div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="DOB">Date of Birth <span class="validate">*</span> : </label>
                                            <input id="DOB" type="text" name="DOB" placeholder="Month/Day/Year" class="form-control age_datepicker" autocomplete="off" value="{{$data->date_of_birth}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="mother_id">Mother's Id <span class="validate">*</span> : </label>
                                            <select name="mother_id" id="mother_id" class="form-control">
                                            <option value="0">---Select---</option>
                                            @foreach($mId as $mid){
                                            <option value="{{$mid->animal_id}}">{{$mid->animal_id}}</option>
                                            }
                                            @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="age">Animal Age (Days) <span class="validate">*</span> : </label>
                                            <div class="input-group">
                                                <input type="text" name="age" id="age" class="form-control" value="{{$data->animal_age}}" readonly>
                                                <span class="input-group-addon animal-month">{{$data->age_month}} Month</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="weight">Weight (KG) <span class="validate">*</span> : </label>
                                            <input type="text" name="weight" class="form-control isnumber" value="{{$data->weight}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="height">Height (INCH) <span class="validate">*</span> : </label>
                                            <input type="text" name="height" class="form-control isnumber" value="{{$data->height}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="gender">Gender : </label>
                                            <select class="form-control" name="gender">
                                                <option value="Male" {{$data->gender == 'Male' ? 'selected' : '' }}>Male</option>
                                                <option value="Female" {{$data->gender == 'Female' ? 'selected' : '' }}>Female</option>
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
                                                <option value="1" {{$data->animal_type == '1' ? 'selected' : ''}} >Holstein</option>
                                                <option value="3" {{$data->animal_type == '3' ? 'selected' : ''}}>Friesian</option>
                                                <option value="4" {{$data->animal_type == '4' ? 'selected' : ''}}>Brahman</option>
                                                <option value="7" {{$data->animal_type == '7' ? 'selected' : ''}}>Holstein Friesian</option>
                                                <option value="8" {{$data->animal_type == '8' ? 'selected' : ''}}>Sindi</option>
                                                <option value="9" {{$data->animal_type == '9' ? 'selected' : ''}}>Sahiwal</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="buy_from">Buy From : </label>
                                            <input type="text" name="buy_from" class="form-control" value="{{$data->buy_from}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="buying_price">Buying Price <span class="validate">*</span> : </label>
                                            <input type="text" name="buying_price" class="form-control isnumber" value="{{$data->buy_price}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="buy_date">Buy Date <span class="validate">*</span> : </label>
                                            <input type="text" name="buy_date" class="form-control wsit_datepicker" autocomplete="off" placeholder="Month/Day/Year" value="{{$data->buy_date}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="stall_no">Stall No <span class="validate">*</span> : </label>
                                            <select class="form-control" name="stall_no">
                                                <option value="">-- Select --</option>
                                                <option value="1" {{$data->stall_no == '1' ? 'selected' : ''}} >Stall-001 (Booked)</option>
                                                <option value="2" {{$data->stall_no == '2' ? 'selected' : ''}} >Stall-002 (Available)</option>
                                                <option value="3" {{$data->stall_no == '3' ? 'selected' : ''}} >Stall-003 (Booked)</option>
                                                <option value="4" {{$data->stall_no == '4' ? 'selected' : ''}} >Stall-004 (Available)</option>
                                                <option value="5" {{$data->stall_no == '5' ? 'selected' : ''}} >Stall-005 (Booked)</option>
                                                <option value="7" {{$data->stall_no == '6' ? 'selected' : ''}} >Stall-006 (Booked)</option>
                                                <option value="8" {{$data->stall_no == '7' ? 'selected' : ''}} >Stall-007 (Available)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="previous_vaccine_done">Previous Vaccine Done : </label>
                                            <select class="form-control" name="previous_vaccine_done">
                                                <option value="No" {{$data->previous_vaccine_done == 'No' ? 'selected' : ''}} >No</option>
                                                <option value="Yes" {{$data->previous_vaccine_done == 'Yes' ? 'selected' : ''}} >Yes</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="note">Note : </label>
                                            <textarea id="note" name="note" class="form-control">{{$data->note}}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-5">
                            <div class="col-md-5">
                                <div class="panel panel-default">
                                    <div class="panel-heading feed-heading"> <i class="fa fa-image"></i> Calf Images
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
                                    <a href="{{url('cowcalf')}}" class="btn btn-warning "><i class="fa fa-list"></i> <b> List</b></a>
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