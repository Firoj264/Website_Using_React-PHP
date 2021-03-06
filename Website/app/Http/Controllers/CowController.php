<?php

namespace App\Http\Controllers;

use App\AnimalType;
use App\Color;
use App\Cow;
use App\Stall;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CowController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Cow::orderBy('animal_id')->get();
        return view('admin.cow.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $color = Color::get();
        $stall = Stall::get();
        $animal = AnimalType::get();
        return view('admin.cow.create', compact('color','stall','animal'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $DOB =  Carbon::parse($request->DOB);
        $buy_date =  Carbon::parse($request->buy_date);

        $no = '0';
        $no = Cow::max('id');
        $aid = $no + 1;
        $id = "C-";
        $pdLeft = str_pad($aid, 4, '0', STR_PAD_LEFT);
        $animal_id = $id . $pdLeft;

        $data = new Cow();
        $data->animal_id = $animal_id;
        $data->date_of_birth = $DOB;
        $data->animal_age = $request->age;
        $data->age_month=$request->age_month;
        $data->weight = $request->weight;
        $data->height = $request->height;
        $data->gender = $request->gender;
        $data->color = $request->color;
        $data->animal_type = $request->animal_type;
        $data->pregnant_status = $request->pregnant_status;
        $data->previous_no_of_pregnant = $request->previous_no_of_pregnant;
        $data->next_pregnant_aprrox_time = $request->next_pregnant_aprrox_time;
        $data->milk_per_day_ltr = $request->milk_ltr_per_day;
        $data->buy_from = $request->buy_from;
        $data->buy_price = $request->buying_price;
        $data->buy_date = $buy_date;
        $data->stall_no = $request->stall_no;
        $data->previous_vaccine = $request->previous_vaccine_done;
        $data->note = $request->note;
        $data->status = "Available";
        // return $request->age_month;
        $image = $request->file('animal_image');
        if ($image) {
            $image_name = hexdec(uniqid());
            $ext = strtolower($image->getClientOriginalExtension());
            $image_full_name = $image_name . '.' . $ext;
            $upload_path = "public/frontend/cows/";
            $image_url = $upload_path . $image_full_name;
            $success = $image->move($upload_path, $image_full_name);
            $data->image = $image_url;
            if ($data->save()) {
                return Redirect()->back()->with('message', 'Data stored successfully');
            }
        } else {
            $data->save();
            if ($data->save()) {
                return Redirect()->back()->with('message', 'Data stored successfully');
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $color = Color::get();
        $data = Cow::find($id);
        return view('admin.cow.edit',compact('data','color'));
        // return $data;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $DOB =  Carbon::parse($request->DOB);
        $buy_date =  Carbon::parse($request->buy_date);

        $data = Cow::findorfail($id);
        $data->date_of_birth = $DOB;
        $data->animal_age = $request->age;
        $data->age_month=$request->age_month;
        $data->weight = $request->weight;
        $data->height = $request->height;
        $data->gender = $request->gender;
        $data->color = $request->color;
        $data->animal_type = $request->animal_type;
        $data->pregnant_status = $request->pregnant_status;
        $data->previous_no_of_pregnant = $request->previous_no_of_pregnant;
        $data->next_pregnant_aprrox_time = $request->next_pregnant_aprrox_time;
        $data->milk_per_day_ltr = $request->milk_ltr_per_day;
        $data->buy_from = $request->buy_from;
        $data->buy_price = $request->buying_price;
        $data->buy_date = $buy_date;
        $data->stall_no = $request->stall_no;
        $data->previous_vaccine = $request->previous_vaccine_done;
        $data->note = $request->note;
        $data->status = "Available";
        $image = $request->file('animal_image');
        if ($image) {
            $image_name = hexdec(uniqid());
            $ext = strtolower($image->getClientOriginalExtension());
            $image_full_name = $image_name . '.' . $ext;
            $upload_path = "public/frontend/cows/";
            $image_url = $upload_path . $image_full_name;
            $success = $image->move($upload_path, $image_full_name);
            $data->image = $image_url;
            // return $data;
            if ($data->save()) {
                return Redirect('cow')->with('message', 'Data updated successfully');
            }
        } else {
            if ($data->save()) {
                return Redirect('cow')->with('message', 'Data updated successfully');
            }
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Cow::find($id);
        if ($data->delete()) {
            return Redirect('cow')->with('message', 'Data deleted successfully');
        }
    }
}
