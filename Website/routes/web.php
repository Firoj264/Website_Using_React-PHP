<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	return view('auth.login');
});

Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/dashboard', 'HomeController@index')->name('dashboard');

Route::group(['middleware' => ['auth']], function () {
	Route::resource('users', 'UserController');
	Route::resource('sliders', 'SliderController');

	Route::resource('staff', 'StaffController');
	Route::resource('supplier', 'SupplierController');
	Route::resource('animaltype', 'AnimalTypeController');
	Route::resource('foodunit', 'FoodUnitController');
	Route::resource('fooditem', 'FoodItemController');
	Route::resource('expense', 'ExpenseController');
	Route::resource('expensepurpose', 'ExpensePurposeController');
	Route::resource('cowsale', 'CowSaleController');
	Route::resource('routinemonitor', 'RoutineMonitorController');
	Route::resource('monitoringservice', 'MonitoringServiceController');
	Route::resource('managecowpregnancy', 'ManageCowPregnancyController');
	Route::resource('designation', 'DesignationController');
	Route::resource('usertype', 'UserTypeController');
	Route::resource('employeesalary', 'EmployeeSalaryController');

	Route::get('employeesalary/getemployeesalary/{id}', 'EmployeeSalaryController@getemployeesalary');


	Route::get('/userlist', 'StaffController@userList')->name('userlist');


	Route::get('/milkparlor', 'MilkParlorController@index');
	Route::post('storemilk', 'MilkParlorController@store');
	Route::post('getcowid', 'MilkParlorController@getcowid');
	Route::get('colletedmilklist', 'MilkParlorController@colletedmilklist');
	Route::get('salemilklist', 'MilkParlorController@salemilklist');
	Route::get('salemilk', 'MilkParlorController@saleMilk');
	Route::post('salemilkstore', 'MilkParlorController@salemilkstore');
	Route::post('getmilkinfo', 'MilkParlorController@getmilkinfo');
	Route::get('duecollection', 'MilkParlorController@duecollection');
	Route::post('getduecollectiondata', 'MilkParlorController@getduecollectiondata');
	Route::post('getmilkdueinfo', 'MilkParlorController@getmilkdueinfo');

	Route::get('milkparlor/{id}/edit', 'MilkParlorController@edit');
	Route::get('milkparlor/loadaimalno/{id}', 'MilkParlorController@getanimalno');
	Route::delete('milkparlor/{id}', 'MilkParlorController@destroy');
	Route::patch('storemilk/{id}', 'MilkParlorController@update');


	Route::get('cowsfeed', 'CowsFeedController@index');
	Route::get('cowsfeedcreate', 'CowsFeedController@create');
	Route::post('storefeed', 'CowsFeedController@store');

	Route::get('getmanimalid/{id}', 'CowsFeedController@getmanimalid');
	Route::get('/routinemonitor/loadaimalid/{id}', 'MonitoringServiceController@getanimalid');

	Route::get('cow', 'CowController@index');
	Route::get('dimuna', 'CowController@create')->name('cow/create');
	Route::post('cow/store', 'CowController@store');
	Route::get('cow/edit/{id}', 'CowController@edit');
	Route::post('cow/update/{id}', 'CowController@update');
	Route::get('cow/delete/{id}', 'CowController@destroy');


	Route::get('cowcalf', 'CowCalfController@index');
	Route::get('cowcalf/create', 'CowCalfController@create');
	Route::post('cowcalf/store', 'CowCalfController@store');
	Route::get('cowcalf/edit/{id}', 'CowCalfController@edit');
	Route::post('cowcalf/update/{id}', 'CowCalfController@update');
	Route::get('cowcalf/delete/{id}', 'CowCalfController@destroy');

	Route::get('stall', 'StallController@index');
	Route::get('stallcreate', 'StallController@create');
	Route::post('storestall', 'StallController@store');
	Route::get('stall/{id}/edit', 'StallController@edit');
	Route::post('stall/update/{id}', 'StallController@update');
	Route::get('stall/delete/{id}', 'StallController@destroy');


	Route::get('colors', 'ColorsController@index');
	Route::get('color/create', 'ColorsController@create');
	Route::post('colorstore', 'ColorsController@store');
	Route::get('color/{id}/edit', 'ColorsController@edit');
	Route::post('color/update/{id}', 'ColorsController@update');
	Route::get('color/{id}', 'ColorsController@destroy');


	// Route::get('/phar-sales', 'ReportController@pharSalesReport');
	// Route::get('/phar-sales-details', 'ReportController@pharSalesDetilsReport');
	// Route::get('/phar-sales-invwise', 'ReportController@pharSalesInvReport');
	// Route::post('/q/reports', 'ReportViewController@getReports');


	// Route::get('/q/patients', 'HomeController@patientQuery');
	// Route::get('/q/invoices', 'HomeController@invoiceQuery');
	// Route::get('/q/diagnosis-deuinv', 'HomeController@dueInvoiceQuery');
	// Route::get('/due-invoices', 'HomeController@dueInvoice');
	// Route::get('/getdoctor', 'HomeController@getDrInfo');
	// Route::get('/getcorporate', 'HomeController@getCorporateInfo');
	// Route::get('/getclinicalchart', 'HomeController@getClinicalChart');
	// Route::get('/getptninforegistration', 'HomeController@getPtnRegInfo');
	// Route::get('/getptninfodiagnosis', 'HomeController@getPtnInfoDiagnosis');
	// Route::get('/getbadinfo', 'HomeController@getBedInfo');
	// Route::get('/getptnadmissioninfo', 'PatientAdmissionController@getPtnAdmissionInfo');
});
