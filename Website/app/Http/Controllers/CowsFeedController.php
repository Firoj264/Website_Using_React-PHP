<?php

namespace App\Http\Controllers;

use App\CowsFeed;
use App\Stall;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;

class CowsFeedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $data = DB::table('cows_feed')->get();
        $data = DB::select('SELECT c.id, DATE_FORMAT(c.date, "%Y-%m-%d") as date,s.stall_no, cow.animal_id, c.note FROM cows_feed c
        LEFT JOIN stalls s on c.stall_no= s.id
        left join cows cow on c.cow_no = cow.animal_id
        GROUP by id,date,stall_no,animal_id,note');
        return view('admin.cowsfeed.index', compact('data'));
        
        // return $data;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $stall = Stall::get();
        return view('admin.cowsfeed.create', compact('stall'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $date =  Carbon::parse($request->date);

        foreach ($request->item as $key => $value) {
            $data = new CowsFeed();
            $data->stall_no = $request->stallno;
            $data->cow_no = $request->cowid;
            $data->date = $date;
            $data->note = $request->note;
            $data->food_item = $request->item[$key];
            $data->item_quantity = $request->quantity[$key];
            $data->unit = $request->unit[$key];
            $data->feedingTime = $request->feedingtime[$key];
            if ($data->save()) {
                return Redirect()->back()->with('message', 'Data store successfully');
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
        //
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
        //
    }

    public function getmanimalid($id)
    {
        $data = DB::table('cows')->select(['id','animal_id'])->where('stall_no',$id)->get();
        return $data;
    }
}
