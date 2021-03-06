@extends('admin.master.layout')

@section('content')
<div class="wrapper">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1><i class="fa fa-tv" aria-hidden="true"></i> Cow Monitor</h1>
            <ol class="breadcrumb">
                <li><a href=""><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Cow Monitor</li>
            </ol>
        </section>
        <section class="content">
            <div class="box box-success">
                {!! Form::open(['url' => '/routinemonitor', 'method' =>'POST', 'id'=>'validate','class'=>'formsave','enctype'=>"multipart/form-data"]) !!}
                @csrf
                <div class="box-body">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="panel panel-default">
                            @if(session('message'))
                            <div class="alert alert-success" id="message" style="display:block;color:green">{{session('message')}}</div>
                            @endif
                            <div class="panel-heading feed-heading"><i class="fa fa-info-circle"></i>&nbsp;Basic Information :</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="shed_no">Stall No <span class="validate">*</span> : </label>
                                                <select class="form-control loadCow" name="stall_no" id="stall_no" required>
                                                    <option value="">-- Select --</option>
                                                    @foreach($stall as $row)
                                                    <option value="{{$row->id}}">{{$row->stall_no}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="cow_id">Animal ID <span class="validate">*</span> : </label>
                                                <select class="form-control animal-details-by-stall-no" name="animalId" id="animalId" required>
                                                    <option value="">-- Select --</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-10 col-md-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-heading feed-heading"><i class="fa fa-edit"></i>&nbsp;Result and Note :</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="weight">Animal Updated Weight (KG) <span class="validate">*</span> : </label>
                                                <input id="weight" type="text" name="weight" id="weight" class="form-control isnumber" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="height">Animal Updated Height (INCH) <span class="validate">*</span> : </label>
                                                <input id="height" type="text" name="height" id="height" class="form-control isnumber" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="milk">Animal Updated Milk Per Day(LTR) : </label>
                                                <input id="milk" type="text" name="milk_per_day" id="milk_per_day" class="form-control isnumber" value="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="date">Monitoring Date <span class="validate">*</span> : </label>
                                                <input id="date" type="text" name="date" class="form-control wsit_datepicker" autocomplete="off" value="" required>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="note">Reports : </label>
                                                <textarea id="note" name="note" class="form-control"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 animal-box-height" id="div_0">
                                        <div class="panel-body" id="imageBlock">
                                            <div class="upload-builder-2">
                                                <!-- <div class="upload-builder-3"><a onclick="$('#div_0').remove();" class="fa fa-times upload-builder-3a"></a> &nbsp; </div> -->
                                                <img src="{{url('public/frontend/images/cow.jpg')}}" style="height:185px" class="manage-animal-upload" id="previewImage_0">
                                                <div class="manage-animal-upload-2">
                                                    <label class="btn btn-success btn-xs btn-file upload-builder-5"> <i class="fa fa-folder-open"></i>&nbsp;&nbsp; Upload Image
                                                        <input type="file" name="animal_image" id="inputImage_0" onchange="preview_Images_manage_cow(this);">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading feed-heading feed-heading"><i class="fa fa-info-circle"></i>&nbsp;Montor Informations :</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="table grid-table">
                                            <thead id="table" name="table">
                                                <tr style="margin-bottom: -10px;">
                                                    <th>Service Name</td>
                                                    <th>Result</th>
                                                    <th>Monitoring Time</th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select name="service_name" id="service_name" class="form-control">
                                                            @foreach($monitoringservice as $row)
                                                            <option value="{{$row->name}}">{{$row->name}}</option>
                                                            @endforeach
                                                        </select>
                                                    </td>
                                                    <td><input class="form-control" name="result" id="result" type="text" /> </td>
                                                    <td><input class="form-control" name="monitoring_time" id="monitoring_time" type="text" /> </td>
                                                    <td><input class="btn btn-success btn-block" id="add" name="add" type="button" value="Add" onclick="fncAdd()" /> </td>
                                                </tr>
                                            </thead>
                                            <tbody id="feedinformations"></tbody>
                                        </table>
                                    </div>
                                    <div class="text-right">
                                        <button type="submit" class="btn btn-success" id="saveInfo"><i class="fa fa-floppy-o"></i><b>Save</b></button>
                                        <!-- &nbsp; -->
                                        <a href="{{url('routinemonitor')}}" class="btn btn-warning "><i class="fa fa-list"></i> <b> List</b></a>
                                    </div>
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
        $('#stall_no').change(function() {
            var animal_id = $("#stall_no").val();
            $.ajax({
                url: "loadaimalid/" + animal_id,
                type: "GET",
                dataType: "JSON",
                success: function(data) {
                    // console.log(data);
                    var obj = JSON.parse(JSON.stringify(data));
                    $('#animalId').html('<option value="">---Select---</option>');
                    obj.forEach(function(animal) {
                        // var id = animal.id;
                        var value = animal.animal_id;
                        $('#animalId').append('<option value="' + value + '">' + value + '</option>');
                    });
                }
            });
        });
    });



    function fncAdd() {
        var service_name = $('#service_name').val();
        var result = $('#result').val();
        var monitoring_time = $('#monitoring_time').val();
        var row = '<tr> ' +
            "<td><input class='form-control' name='service_name[]' type='text' value='" + service_name + "' readonly/></td>" +
            "<td><input class='form-control' name='result[]' type='text' value='" + result + "' readonly/> </td> " +
            "<td><input class='form-control' name='monitoring_time[]' type='text' value='" + monitoring_time + "' readonly/> </td> " +
            ' <td><a class="btn btn-info btn-block removeRow" style="color:white">Remove</a> </td>' +
            ' </tr>';
        $('.grid-table thead input').not(".grid-table thead #add").val('');
        $('#feedinformations').append(row);
    };

    $("table #feedinformations").on('click', 'a.removeRow', function(e) {
        $(this).closest('tr').remove();
        return false;
    });
    $('#validate').validate({
        rules: {
            name: {
                required: true,
            },
        },
        messages: {
            name: {
                required: "Please enter food unit name",
            },
        },
    });
</script>
@endsection