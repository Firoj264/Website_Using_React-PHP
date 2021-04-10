<?php

namespace App\Http\Controllers;

use App\MonitoringService;
use App\RoutineMonitor;
use App\Stall;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RoutineMonitorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::select('SELECT r.id, r.monitoring_date,r.animal_id,r.note,s.stall_no,r.animal_id from routine_monitor r inner join stalls s on r.stall_no = s.id');
        return view('admin.routine_monitor.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $stall = Stall::orderby('stall_no')->get();
        $monitoringservice = MonitoringService::get();
        return view('admin.routine_monitor.create',compact('stall','monitoringservice'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $monitoring_date =  Carbon::parse($request->date);
        $data = array();
        $data['animal_id'] = $request->animalId;
        $data['input_from'] = "Routine Monitor";
        $image = $request->animal_image;
        if ($image) {
            $image_name = hexdec(uniqid());
            $ext = strtolower($image->getClientOriginalExtension());
            $image_full_name = $image_name . '.' . $ext;
            $upload_path = "public/frontend/images/cows";
            $image_url = $upload_path . $image_full_name;
            $success = $image->move($upload_path, $image_full_name);
            $data['images'] = $image_url;
            // DB::table('cow_images')->insert($data);

            foreach($request->service_name as $key => $value) { 
                $data = new RoutineMonitor();
                $data->stall_no = $request->stall_no;
                $data->animal_id = $request->animalId;
                $data->weight = $request->weight;
                $data->height = $request->height;
                $data->milk_per_day = $request->milk_per_day;
                $data->monitoring_date = $monitoring_date;
                $data->note = $request->note;
                $data->service_name = $request->service_name[$key];
                $data->result = $request->result[$key];
                $data->time = $request->monitoring_time[$key];
                $data->save();
            }
        } 
        else
        {
            foreach($request->service_name as $key => $value) {
                $data = new RoutineMonitor();
                $data->stall_no = $request->stall_no;
                $data->animal_id = $request->animalId;
                $data->weight = $request->weight;
                $data->height = $request->height;
                $data->milk_per_day = $request->milk_per_day;
                $data->monitoring_date = $monitoring_date;
                $data->note = $request->note;
                $data->service_name = $request->service_name[$key];
                $data->result = $request->result[$key];
                $data->time = $request->monitoring_time[$key];
                $data->save();
            }
        }
        return Redirect()->back()->with('message', 'Data store successfully');
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
        $data = RoutineMonitor::find($id);
        return $data;
        // $stall = Stall::orderby('stall_no')->get();
        // $monitoringservice = MonitoringService::get();
        // return view('admin.routine_monitor.edit',compact('stall','monitoringservice'));
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
    }
}
