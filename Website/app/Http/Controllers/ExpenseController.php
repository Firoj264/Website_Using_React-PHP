<?php

namespace App\Http\Controllers;

use App\Expense;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ExpenseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= DB::Select('SELECT id,DATE_FORMAT(date, "%Y-%m-%d") as date,purpose,details,total_amount FROM expenses');
        return view('admin.expense.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = DB::table('expens_purposes')->get();
        return view('admin.expense.create',compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $date = date('Y-m-d');
        $id = DB::table('expens_purposes')->max('id');
        $aid = $id + 1;
        $id = "E-";
        $pdLeft = str_pad($aid, 3, '0', STR_PAD_LEFT);
        $invoiceNo = $id . $pdLeft;
        $expense_date = date('Y-m-d', strtotime($request->expense_date));
        
        $data = new Expense();
        $data->invoice_no = $invoiceNo;
        $data->invoice_date = $date;
        $data->purpose = $request->purpose_name;
        $data->date = $expense_date;
        $data->details = $request->details;
        $data->total_amount = $request->total_amount;
        if ($data->save()) {
            return Redirect()->back()->with('message', 'Data store successfully');
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
        $data = Expense::find($id);
        $purpose = DB::table('expens_purposes')->get();
        return view('admin.expense.edit',compact('data','purpose'));
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
        $expense_date = date('Y-m-d', strtotime($request->expense_date));
        
        $data = Expense::findorfail($id);
        $data->invoice_no = $request->invoice_no;
        $data->invoice_date = $request->invoice_date;
        $data->purpose = $request->purpose_name;
        $data->date = $expense_date;
        $data->details = $request->details;
        $data->total_amount = $request->total_amount;
        
        if ($data->save()) {
            return Redirect('expense')->with('message', 'Data updated successfully');
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
        $data = Expense::find($id);
        if ($data->delete()) {
            return Redirect('expense')->with('message', 'Data deleted successfully');
        }
    }

    public function expense(){
        return view('admin.reports.expense_report');
    }

    public function getofficeexpense(Request $request, $from, $to){
        // $from_date = $request->date_from;
        // $to_date = $request->date_to;

        $from_date = $from;
        $to_date = $to;

        $fromDate =  Carbon::parse($from_date)->format('Y-m-d');
        $toDate =  Carbon::parse($to_date)->format('Y-m-d');
        $data = DB::select('SELECT DATE_FORMAT(date, "%Y-%m-%d") as date,purpose,details,total_amount FROM expenses where date between "'.$fromDate.'" and "'.$toDate.'" order by date ASC');
        // return view('admin.routine_monitor.index',compact('data'));
        return $data;
    }
}
