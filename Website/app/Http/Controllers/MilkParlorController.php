<?php

namespace App\Http\Controllers;

use App\Cow;
use App\MilkParlor;
use App\Stall;
use Illuminate\Http\Request;
use DB;

class MilkParlorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stall = Stall::orderBy('stall_no', 'asc')->get();
        $cow = Cow::orderBy('stall_no', 'asc')->get();
        return view('admin.milkparlor.index', compact('stall', 'cow'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id = DB::table('milkparlors')->max('id');
        $date = date('ymd');
        $pdLeft = str_pad($id, 4, '0', STR_PAD_LEFT);
        $lnTrNo = $date . $pdLeft;
        $date = date('Y-M-d H:i:s');

        $data = new MilkParlor();
        $data->account_no = $lnTrNo;
        $data->collected_from = $request->collectorName;
        $data->collected_date = $request->collectDate;
        $data->stall_no = $request->stallNo;
        $data->animal_id = $request->animalId;
        $data->liter = $request->litre;
        $data->price_liter = $request->price;
        $data->total_price = $request->totalAmount;
        $data->save();
        
        $milk = array();
        $milk['date'] =$request->collectDate;
        $milk['referance_no'] =$lnTrNo;
        $milk['name'] =$request->collectorName;
        $milk['litre_collect'] =$request->litre;
        $milk['litre_sale'] ="0";
        $milk['price_collect'] =$request->price;
        $milk['price_sale'] ="0";
        $milk['come_from'] ="Collected";
        DB::table('milk_ledger')->insert($milk);
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
        $data = MilkParlor::find($id);
        $stall = Stall::orderBy('stall_no', 'asc')->get();
        $cow = Cow::orderBy('stall_no', 'asc')->get();
        return view('admin.milkparlor.edit', compact('stall', 'cow', 'data'));
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
        $data = MilkParlor::find($id);
        $data->account_no = $request->accNo;
        $data->collected_date = $request->collectDate;
        $data->collected_from = $request->collectorName;
        $data->stall_no = $request->stallNo;
        $data->animal_id = $request->animalId;
        $data->liter = $request->litre;
        $data->price_liter = $request->price;
        $data->total_price = $request->totalAmount;
        if ($data->save()) {
            return Redirect('colletedmilklist')->with('message', 'Data store successfully');
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
        $data = MilkParlor::find($id);
        if ($data->delete()) {
            return Redirect()->back()->with('message', 'Data deleted successfully');
        }
    }
    public function colletedmilklist()
    {
        $data = MilkParlor::select(
            'milkparlors.id',
            'milkparlors.account_no',
            'milkparlors.collected_from',
            'milkparlors.animal_id',
            'milkparlors.liter',
            'milkparlors.price_liter',
            'milkparlors.total_price',
            'milkparlors.collected_date',
            'stalls.stall_no',
        )
            ->leftJoin("stalls", "milkparlors.stall_no", "=", "stalls.id")
            ->get();
        return view('admin.milkparlor.collectedmilklist', compact('data'));
        // return $data;
    }

    public function getcowid(Request $request)
    {
        $id = $request->stallNo;
        $data = DB::table('cows')->select('animal_id')->where('stall_no', $id)->get();
        return $data;
    }
    public function saleMilk()
    {
        $data = DB::table('milkparlors')->get();
        return view('admin.milkparlor.salemilk', compact('data'));
        // return $data;
    }
    public function salemilklist()
    {
        $data = DB::table('salemilk')->get();
        // return $data;
        return view('admin.milkparlor.salemilklist', compact('data'));
    }
    public function salemilkstore(Request $request)
    {

        $id = DB::table('salemilk')->max('id');
        $date = date('y');
        $pdLeft = str_pad($id + 1, 4, '0', STR_PAD_LEFT);
        $TrNo = "INV-" . $date . "-" . $pdLeft;
        $date = date('Y-M-d H:i:s');
        // return $request;
        $data = array();
        $data['InvoiceNo'] = $TrNo;
        $data['InvoiceDate'] = $request->sale_date;
        $data['AccNo'] = $request->accNo;
        $data['Name'] = $request->name;
        $data['MobileNo'] = $request->contact;
        $data['Email'] = $request->email;
        $data['Address'] = $request->address;
        $data['Litre'] = $request->litre;
        $data['PriceLitre'] = $request->pricelitre;
        $data['Total'] = $request->total;
        $data['Paid'] = $request->paid;
        $data['Due'] = $request->due;
        DB::table('salemilk')->insert($data);

        $milk = array();
        $milk['date'] =$request->sale_date;
        $milk['referance_no'] =$TrNo;
        $milk['name'] =$request->name;
        $milk['litre_collect'] ="0";
        $milk['litre_sale'] = $request->litre;
        $milk['price_collect'] ="0";
        $milk['price_sale'] =$request->pricelitre;
        $milk['come_from'] ="Sales";
        DB::table('milk_ledger')->insert($milk);
        
        return Redirect()->back()->with('message', 'Data stored successfully');
    }

    public function getmilkinfo(Request $request)
    {
        // return DB::table('milkparlors')->get();
        $accNo = $request->accNo;
        $value = 0;
        $data = DB::table('milkparlors')->select('price_liter')->where('account_no', $accNo)->get();
        if ($data) {
            $value = $data[0]->price_liter;
        }
        // return json_encode($value);
        return $value;
    }

    public function duecollection()
    {
        return view('admin.milkparlor.duecollection');
    }

    public function getduecollectiondata(Request $request)
    {
        $invno =  $request->invno;

        $data = DB::table('salemilk')->select('InvoiceDate', 'InvoiceNo', 'Total', 'Paid', 'Due')->where('InvoiceNo', $invno)->get();
        // return view('admin.milkparlor.duecollection',compact('data'));

        return $data;
    }

    public function getanimalno($id)
    {
        $data = DB::table('cows')->select(['id', 'animal_id'])->where('stall_no', $id)->get();
        return $data;
    }
}
