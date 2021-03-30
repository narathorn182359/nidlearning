<?php
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
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




Auth::routes();


Route::get('/error', 'ErrorController@error')->name('error');
/* Route::get('/showe', function () {
   $position = DB::table('users_detail')
    ->select('Position')
    ->get();
    $a = array();

    foreach ($position as $i) {

        array_push($a,  $i->Position);
    }
    $brand_r = array_unique($a);
    $array = $a;
    $unique = array();
    foreach ($array as $v) {
        isset($k[$v]) || ($k[$v] = 1) && $unique[] = $v;
    }
        foreach ($unique as $v) {
            DB::table('position')->insert([
                'name_posi' => $v
            ]);

    }

    return response()->json('200');



     DB::table('users')->insert([
        'username' => 'developer',
        'password' => Hash::make('ad1234'),
    ]);
}); */

Route::get('/json', function () {

    $data_a = array(
            'section'=>'test',
            'select' => array(
                '1'=>'test',
                '2'=>'test',
                '3'=>'test',
                '4'=>'test',
            ),
            'answer'=>'1',
            'active'=>1,
            'e_status'=>1,
            'e_status'=>1,
            'created_at'=>'...',
            'updated_at'=>'...'
          );
          $data_b[] = $data_a;
          $data_b[0]['created_at'] =Carbon::now();

    /*   DB::table('users')->insert([
          'username' => 'developer',
          'password' => Hash::make('ad1234'),
      ]); */

      return response()->json($data_b);
  });
  


Route::get('/videosublect/{id}', 'AdminController@videosublect')->name('videosublect');
Route::get('/adminhome', 'AdminController@home')->name('home');
Route::get('/category', 'AdminController@category')->name('category');
Route::get('/course', 'AdminController@course')->name('course');
Route::resource('/grouplear', 'GroupLearController')->names([
    'create' => 'grouplear.create',
    'store'  => 'grouplear.store',
    'update'  =>'grouplear.update',
    'show'  =>'grouplear.show'
]);
Route::get('/set_brand/{id}/{idd}', 'GroupLearController@add_brand')->name('set_brand');
Route::post('/save_brand_set', 'GroupLearController@save_brand_set')->name('save_brand_set');



Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@welcome')->name('welcome');
Route::get('/service', 'HomeController@service')->name('service');
Route::get('/contect', 'HomeController@contect')->name('contect');
Route::get('/about', 'HomeController@about')->name('about');
Route::get('/profile', 'HomeController@profile')->name('profile');
Route::get('/class', 'HomeController@class')->name('class');
Route::get('/skill', 'HomeController@skill')->name('skill');
Route::get('/indexvideo', 'VideoController@indexvideo')->name('indexvideo');
Route::post('file-upload/upload', 'VideoController@upload')->name('upload');
Route::post('delete_video', 'VideoController@delete_video')->name('delete_video');

Route::post('/datasubject', 'AdminController@datasubject')->name('datasubject');
Route::post('/savesubject', 'AdminController@savesubject')->name('savesubject');
Route::get('/getsubject/{id}', 'AdminController@getsubject')->name('getsubject');


Route::post('/datacategory', 'CategoryController@datacategory')->name('datacategory');
Route::post('/datacourse', 'AdminController@datacourse')->name('datacourse');
Route::post('/deletesubject', 'AdminController@deletesubject')->name('deletesubject');
Route::post('/savecategory', 'CategoryController@savecategory')->name('savecategory');
Route::post('/deletecategory', 'CategoryController@deletecategory')->name('deletecategory');
Route::get('/geteditcategory/{id}', 'CategoryController@geteditcategory')->name('geteditcategory');

Route::post('/datacourse', 'CourseController@datacourse')->name('datacourse');
Route::post('/deletecourse', 'CourseController@deletecourse')->name('deletecourse');
Route::post('/savecourse', 'CourseController@savecourse')->name('savecourse');
Route::get('/geteditcourse/{id}', 'CourseController@geteditcourse')->name('geteditcourse');
Route::get('/room/{id}', 'RoomController@room')->name('room');
Route::get('/examination/{id}', 'ExaminationController@examination')->name('examination');
Route::post('/saveexpre', 'ExaminationController@saveexpre')->name('saveexpre');
Route::post('/dowloadtexam', 'ExaminationController@dowloadexcel')->name('dowloadexcel');
Route::post('/saveexpreforexcel', 'ExaminationController@saveexpreforexcel')->name('saveexpreforexcel');
Route::post('/deleteallpre', 'ExaminationController@deleteallpre')->name('deleteallpre');
Route::post('/deleteallbe', 'ExaminationController@deleteallbe')->name('deleteallbe');
Route::post('/deletepost', 'ExaminationController@deletepost')->name('deletepost');
Route::get('/detailsub/{id}', 'AdminController@detailsub')->name('detailsub');
Route::post('/ckeditor/upload', 'AdminController@upload')->name('ckeditor.upload');
Route::post('/savedetailsub', 'AdminController@savedetailsub')->name('savedetailsub');
Route::post('/datadetailsub/{id}', 'AdminController@datadetailsub')->name('datadetailsub');
Route::post('/noti', 'HomeController@noti')->name('noti');
Route::get('/geteditsexa/{id}', 'ExaminationController@geteditsexa')->name('geteditsexa');
Route::get('/showetest/{id}', 'RoomController@showetest')->name('showetest');
Route::post('/savetest', 'RoomController@savetest')->name('savetest');
Route::post('/savepretest', 'RoomController@savepretest')->name('savepretest');
Route::post('/saveprepost', 'RoomController@saveprepost')->name('saveprepost');
Route::get('/getuser', 'UserController@getuser')->name('getuser');
Route::post('/datauser', 'UserController@datauser')->name('datauser');
Route::get('/viewtest/{id}', 'HomeController@viewtest')->name('viewtest');
Route::post('/showreport/{id}', 'RoomController@showreport')->name('showreport');
Route::get('/detailreport/{id}', 'RoomController@detailreport')->name('detailreport');



