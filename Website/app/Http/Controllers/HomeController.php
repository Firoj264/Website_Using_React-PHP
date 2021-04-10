<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Input;
use App\InvMaster;
use App\InvDetail;
use App\Patient;
use App\DiagnosisDueColl;
use DB;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }

    public function index()
    {
        return view('admin.dashboard');
    }

    public function getDrInfo(Request $request)
    {
        $data = DB::select('select DrCode, DrName from dr_infos where concat(DrCode, DrName) like "%'.$request->param.'%" ');
        return response()->json($data);
    }
    public function getCorporateInfo(Request $request)
    {
        $data =DB::select('select code, name from corporatestaff');
        return response()->json($data);
    }
    public function getClinicalChart(Request $request)
    {
        $data =DB::select('select PCode, Description, Charge, CanChangePrice from clinical_charts where concat(PCode, Description) like "%'.$request->param.'%" and DeptName="'.$request->type.'" ');
        return response()->json($data);
    }
    public function getPtnRegInfo(Request $request)
    {
        $data =DB::select('select * from patientregistration where concat(RegNo,PatientName, TelephoneNo,PatientAddress) like "%'.$request->param.'%"  ');
        return response()->json($data);
    }
    public function getPtnInfoDiagnosis(Request $request)
    {
        $data =DB::select('select PatientName, MobNo, Address, Sex, Age, DOB from invmaster where concat(PatientName,MobNo,Address) like "%'.$request->param.'%"  group by PatientName, MobNo, Address, Sex, Age, DOB order by PatientName');
        return response()->json($data);
    }
    public function getBedInfo(Request $request)
    {
        $data =DB::select('select * from bed_information where concat(BedNo,FloorNo) like "%'.$request->param.'%" and Isbooked=0  order by FloorNo');
        return response()->json($data);
    }
    public function dueInvoice(Request $request)
    {
        $data =DB::select('select InvNo, DATE_FORMAT(InvDate, "%Y-%m-%d") as InvDate, SUM(TotalAmt-TotalLess-AdvanceAmt) as DueAmt from invmaster where concat(InvNo) like "%'.$request->param.'%" group by  InvNo, InvDate having DueAmt>0');
        return response()->json($data);
    }
    public function invoiceQuery(request $request)
    {
        $data = InvMaster::where('InvNo','LIKE', "%$request->param%")->paginate(20);
        return view('admin.diagnosisInv.index', compact('data'));
    }
    public function dueInvoiceQuery(request $request)
    {
        $data = DiagnosisDueColl::where('Trno','LIKE', "%$request->param%")->paginate(20);
        return view('admin.diagnosisduecoll.index', compact('data'));
    }
    public function patientQuery(Request $request)
    {
        $data = Patient::where(function($query) use ($request) {
            $query->where('RegNo', 'LIKE', '%'.$request->param.'%')
                ->orWhere('PatientName', 'LIKE', '%'.$request->param.'%')
                ->orWhere('TelephoneNo', 'LIKE', '%'.$request->param.'%');
        })->paginate(20);
        return view('admin.patient.index', compact('data'));
    }
}
