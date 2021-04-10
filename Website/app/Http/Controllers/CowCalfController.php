<?php

namespace App\Http\Controllers;

use App\Color;
use App\Cow;
use App\CowCalf;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CowCalfController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data  = CowCalf::get();
        return view('admin.cowcalf.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = Color::get();
        $mId = Cow::select('animal_id')->where('gender', 'Female')->get();
        return view('admin.cowcalf.create', compact('data', 'mId'));
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
        $no = CowCalf::max('id');
        $aid = $no + 1;
        $id = "CC-";
        $pdLeft = str_pad($aid, 4, '0', STR_PAD_LEFT);
        $animal_id = $id . $pdLeft;

        $data = new CowCalf();
        $data->animal_id = $animal_id;
        $data->date_of_birth = $DOB;
        $data->mother_id = $request->mother_id;
        $data->animal_age = $request->age;
        $data->weight = $request->weight;
        $data->height = $request->height;
        $data->gender = $request->gender;
        $data->color = $request->color;
        $data->animal_type = $request->animal_type;
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
        $mId = Cow::select('animal_id')->where('gender', 'Female')->get();
        $data = CowCalf::find($id);
        return view('admin.cowcalf.edit', compact('data', 'mId', 'color'));
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

        $data = CowCalf::findorfail($id);
        $data->date_of_birth = $DOB;
        $data->mother_id = $request->mother_id;
        $data->animal_age = $request->age;
        $data->weight = $request->weight;
        $data->height = $request->height;
        $data->gender = $request->gender;
        $data->color = $request->color;
        $data->animal_type = $request->animal_type;
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
            if ($data->save()) {
                return Redirect()->back()->with('message', 'Data updated successfully');
            }
        } else {
            if ($data->save()) {
                return Redirect()->back()->with('message', 'Data updated successfully');
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
        $data = CowCalf::find($id);
        if ($data->delete()) {
            return Redirect('cowcalf')->with('message', 'Data deleted successfully');
        }
    }
}
