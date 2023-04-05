@extends('layouts.adminpanel.master')

@section('content')

<div class="container-xxl flex-grow-1 container-p-y">
    @if (\Session::has('success'))
      <div class="row">
          <div class="col-md-12">
              <div id="notificationAlert" style="display: block;">
                  <div class="alert alert-warning">
                      <span style="color:black;">
                          {!! \Session::get('success') !!}
                      </span>
                  </div>
              </div>
          </div>
      </div>
    @endif
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Event / </span> {{ $event_data['name'] }}</h4>
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Event Information</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('events.update', $event_data['id']) }}" method="POST">
                        @method('PUT')
                        @csrf
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-name" placeholder="Event Name"
                                    name="name" value="{{ $event_data['name'] }}" required />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-date">Event Date-Time</label>
                            <div class="col-sm-5">
                                <input type="date" class="form-control" id="basic-default-date" placeholder="Event Name"
                                    name="event_date" value="{{ $event_data['event_date'] }}" required />
                            </div>
                            <div class="col-sm-5">
                                <input type="time" class="form-control" id="basic-default-time" placeholder="Event Name"
                                    name="event_time" value="{{ $event_data['event_time'] }}" required />
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-date2">Reg. Last Date-Time</label>
                            <div class="col-sm-5">
                                <input type="date" class="form-control" id="basic-default-date2"
                                    name="reg_date" value="{{ $event_data['reg_date'] }}" required />
                            </div>
                            <div class="col-sm-5">
                                <input type="time" class="form-control" id="basic-default-time2"
                                    name="reg_time" value="{{ $event_data['reg_time'] }}" required />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-location">Location</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-location" placeholder="Input Event Location.."
                                    name="location" value="{{ $event_data['location'] }}" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Visibility</label>
                            <div class="col-sm-10">
                                <select class="form-select" id="exampleFormControlSelect1"
                                    aria-label="Default select example" name="is_visible" required>

                                    <option value="1" @if ($event_data['visibility'] != NULL) selected @endif >Yes</option>
                                    <option value="0" @if ($event_data['visibility'] == NULL) selected @endif>No</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-google-form">Google Form</label>
                            <div class="col-sm-10">
                                <input type="url" class="form-control" id="basic-default-google-form" placeholder="URl.."
                                    name="google_form_link"  value="{{ $event_data['google_form_link'] }}" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            
                                <label class="col-sm-2 col-form-label" for="basic-default-date2">Event Fees</label>
                                <div class="col-sm-10 my-auto" onclick="ADDFORM()" style="cursor: pointer;">
                                    <i class="fa fa-plus-circle " aria-hidden="true" style="font-size: 20px;color:black;" ></i><span style="font-size: 20px;color:black;">Add More</span>
                                </div>
                            
                        </div>

                        @foreach ($event_data['reg_purpose'] as $key=>$item)
                            <div class="row mb-3" id="existing_fee_data-{{ $key }}">
                                <label class="col-sm-2 col-form-label" for="basic-default-date2">Criteria {{ $key+1 }}</label>
                                <div class="col-sm-1">
                                    <div class="d-flex justify-content-center my-auto">
                                        <label for="primary_mandatory" style="font-size: 0.85em;">Mandatory</label>&nbsp;&nbsp;
                                        <input type="hidden" name="mandatory[]" @if ($event_data['mandatory'][$key] == 1) value="1" @else value="0"  @endif ><input type="checkbox" @if ($event_data['mandatory'][$key] == 1) checked  @endif onclick="this.previousSibling.value=1-this.previousSibling.value">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                <input type="text" class="form-control"
                                        name="reg_purpose[]" value="{{ $event_data['reg_purpose'][$key] }}" placeholder="Registration Purpose" />
                                </div>
                                <div class="col-sm-3">
                                    <input type="number" class="form-control" id="basic-default-time2"
                                        name="reg_fee[]" value="{{ $event_data['reg_fee'][$key] }}" placeholder="Registration Fee" />
                                </div>
                                <div class="col-sm-1 my-auto">
                                        <i class="fa fa-trash " aria-hidden="true" style="font-size: 25px;color:red;" onclick="REMOVEFORMEXIST('existing_fee_data-{{ $key }}')"></i>
                                </div>
                            </div>
                        @endforeach
                        <div id="items" class="mt-3"></div>


                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                                <a href="{{ route('events.index') }}" class="btn btn-dark btn-sm">Back to List</a>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </div>

    <div class="row">

    </div>
</div>


@endsection


@section('footer_js')
    <script>
        var UniqueID = 1;
        var form = document.getElementById('items');
        function ADDFORM(){
            var tagID= UniqueID;

            form.innerHTML+=

            '<div class="row mb-3" id="uni-'+tagID+'">'+
                '<label class="col-sm-2 col-form-label" for="basic-default-date2"></label>'+
                '<div class="col-sm-1">'+
                    '<div class="d-flex justify-content-center my-auto">'+
                       ' <label for="primary_mandatory'+tagID+'" style="font-size: 0.85em;">Mandatory </label>&nbsp;&nbsp;'+
                    '<input type="hidden" name="mandatory[]" value="0"><input type="checkbox" onclick="this.previousSibling.value=1-this.previousSibling.value">'+
                    '</div>'+
                '</div>'+

                '<div class="col-sm-4">'+
                    '<input type="text" class="form-control"name="reg_purpose[]" placeholder="Registration Purpose" required />'+
                '</div>'+
                '<div class="col-sm-3">'+
                    '<input type="number" class="form-control" id="basic-default-time2" name="reg_fee[]" placeholder="Registration Fee" required />'+
                '</div>'+
                '<div class="col-sm-1 my-auto">'+
                    '<i class="fa fa-trash " aria-hidden="true" style="font-size: 25px;color:red;" onclick="REMOVEFORM('+tagID+')"></i>'+
               '</div>'+
            '<br>';
            UniqueID++;
        }

        function REMOVEFORMEXIST(id){
            var div = document.getElementById(id).remove();

        }
        function REMOVEFORM(id)
        {
            var div = document.getElementById('uni-'+id).remove();
        }
        let fee_mandatory = [];

        function Mandatory(id)
        {
            var div = document.getElementById(id);
            fee_mandatory.push(div);
            console.log(fee_mandatory+'<br>');

        }

    </script>
    <script>
        $('#notificationAlert').delay(3000).fadeOut('slow');   
        document.getElementById('SINK').visibility = 'true';
        
     </script>
  
@endsection
