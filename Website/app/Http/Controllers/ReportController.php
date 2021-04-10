<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use DB;
use Carbon\Carbon;
use Auth;

class ReportController extends Controller
{
    function __construct()
    {
         // $this->middleware('permission:report-view');
         // $this->middleware('permission:report-date');
    }


    public function pharSalesReport()
    {
        return view('admin.reportpage.phar-sales');
    }
    public function pharSalesDetilsReport()
    {
        return view('admin.reportpage.phar-salesdlts');
    }
    public function pharSalesInvReport()
    {
        return view('admin.reportpage.phar-salesinv');
    }

}