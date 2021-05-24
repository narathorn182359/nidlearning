<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use Excel;
use Illuminate\Support\Str;
class AdminController extends Controller
{
    
    public function __construct(){

    $this->middleware(['role:admin']);
    $this->middleware('auth');
     }



     public  function   savesubject(Request $request){
            if($request->skill_status == ''){
                $x = 0;
            }else{
                $x = 1;
            }

        if($request->id == '0'){
            $random = Str::random(5);
            $image_2 = $request->img_sub;
            list($type, $image_2) = explode(';', $image_2);
            list(, $image_2) = explode(',', $image_2);
            $image_2 = base64_decode($image_2);
            $imageName =  time().'.jpg';
            file_put_contents('images/' . $imageName, $image_2);
         
            DB::table('subject')
            ->insert([
                'img_sub' =>  $imageName ,
                'name_sub' =>  $request->name_sub,
                'course_id' =>  $request->course_id,
                'category_id' =>  $request->category_id,
                'sub_title' =>  $request->sub_title,
                'skill_status' => $x,
                'created_by'=>  Auth::user()->username,
                'created_at'=>  Carbon::now(),
            ]);
        }else{
            if($request->img_sub != ''){
                $random = Str::random(5);
                $image_2 = $request->img_sub;
                list($type, $image_2) = explode(';', $image_2);
                list(, $image_2) = explode(',', $image_2);
                $image_2 = base64_decode($image_2);
                $imageName =  time().'.jpg';
                file_put_contents('images/' . $imageName, $image_2);
             
                DB::table('subject')
                ->where('id_sub',$request->id)
                ->update([
                    'img_sub' =>  $imageName ,
                    'name_sub' =>  $request->name_sub,
                    'course_id' =>  $request->course_id,
                    'category_id' =>  $request->category_id,
                    'sub_title' =>  $request->sub_title,
                    'skill_status' => $x,
                    'updated_by'=>  Auth::user()->username,
                    'updated_at'=>  Carbon::now(),
                ]);
            }else{
                DB::table('subject')
                ->where('id_sub',$request->id)
                ->update([
                    'name_sub' =>  $request->name_sub,
                    'course_id' =>  $request->course_id,
                    'category_id' =>  $request->category_id,
                    'sub_title' =>  $request->sub_title,
                    'skill_status' => $x,
                    'updated_by'=>  Auth::user()->username,
                    'updated_at'=>  Carbon::now(),
                ]);
            }
          
        }
       



        return  response()->json('200');
     }

     public  function   home(){
          $category = DB::table('category')->get();
          $course = DB::table('course')->get();

          $data = array(
              'category' =>  $category,
              'course' => $course
          );


        return view('admin.home',$data);
     }


     public  function datasubject(Request $request){


      $columns = array(
            0 => 'id_sub',
            1 => 'name_sub',
            2 => 'course_id',
            );

        $totalData = DB::table('subject')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('subject')
                ->leftJoin('course','subject.course_id','course.id_co')
                ->leftJoin('category','subject.category_id','category.id_cat')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('subject')
                ->leftJoin('course','subject.course_id','course.id_co')
                ->leftJoin('category','subject.category_id','category.id_cat')
                ->orWhere('name_sub', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('subject')
               ->leftJoin('course','subject.course_id','course.id_co')
                ->leftJoin('category','subject.category_id','category.id_cat')
                ->orWhere('name_sub', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $nestedData['id_sub'] =  $post->id_sub;
                $nestedData['name_sub'] = $post->name_sub;
                $nestedData['img_sub'] = "<img src='".url('images/'.$post->img_sub)."' alt=''width='200'> ";
                $nestedData['name_cat'] = $post->name_cat;
                $nestedData['name_co'] = $post->name_co;
                $nestedData['options'] = "
                <a href='".url('/detailsub/'.$post->id_sub)."' class='btn btn-primary btn-xs ' >จัดการเนื้อหา</a> 
                <a href='".url('/grouplear/'.$post->id_sub.'/edit')."' class='btn btn-info btn-xs ' >จัดการกลุ่มเรียน</a> 
                <a href='".url('/examination/'.$post->id_sub)."' class='btn btn-success btn-xs' >จัดการข้อสอบ</a>   
                <a href='javascript:void(0)' class='btn btn-warning  btn-xs editsub' data-id='".$post->id_sub."' >แก้ไข</a>   
                <a class='btn btn-danger  btn-xs  deletesubject' data-id='".$post->id_sub."' href='javascript:void(0)'>ลบ</a>";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);
     }

     public function category(){


        return view('admin.category');
     }


     

     public function course(){

        return view('admin.course');

     }

     public function getsubject($id){

             $subject  =  DB::table('subject')->where('id_sub',$id)->first();

              //dd( $subject);

              return response()->json($subject);
     }
     public  function datacourse(Request $request){

        $columns = array(
            0 => 'name_co',
          );

        $totalData = DB::table('course')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('course')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('course')
                ->orWhere('name_co', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('course')
                ->orWhere('name_co', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $nestedData['name_co'] = $post->name_co;
                $nestedData['options'] = "
                <a href='/produc/'+data+'/edit' class='btn btn-warning  btn-xs' >แก้ไข</a>   
                <a class='btn btn-danger  btn-xs  deleteProduct' data-id='+data+' href='javascript:void(0)'>ลบ</a>
                ";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);

     }



     public function deletesubject(Request $request){

       $subject =  DB::table('subject')
        ->where('id_sub',$request->id)
        ->first();
        unlink(public_path('images/'.$subject->img_sub));

        DB::table('subject')
        ->where('id_sub',$request->id)
        ->delete();


        return response()->json(['status' => 200]);
     }


     public function  videosublect($id){

        $data =  DB::table('video')
        ->where('id_vi',$id)
        ->get();




        return response()->json($data);

     }

     public function  detailsub($id){


        $data =  array(
            'id' =>$id
        );


        return view('admin.detailsub',$data);
     }


     public function upload(Request $request)
     {
         if($request->hasFile('upload')) {
             $originName = $request->file('upload')->getClientOriginalName();
             $fileName = pathinfo($originName, PATHINFO_FILENAME);
             $extension = $request->file('upload')->getClientOriginalExtension();
             $fileName = '_'.time().'.'.$extension;
         
             $request->file('upload')->move(public_path('images'), $fileName);
    
             $CKEditorFuncNum = $request->input('CKEditorFuncNum');
             $url = asset('images/'.$fileName); 
             $msg = 'Image uploaded successfully'; 
             $response = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$msg')</script>";
                
@header('Content-type: text/html; charset=utf-8');
             echo $response;
         }
     }

     public function  savedetailsub(Request $request){
        
        
        if($request->id_se == '0'){
           
            if($request->file){
                $path = $request->file('file')->getRealPath();
                $data = Excel::load($path)->get();
                $lastid = 0;
                if($data->count()> 0){
                    foreach ($data as $key => $value) {
                            $expre_count =  DB::table('subject_examination')
                            ->where('id_sexa',$lastid)
                            ->count();
                                if( $expre_count > 0){
                                    $expre_first =  DB::table('subject_examination')
                                    ->where('id_sexa',$lastid)
                                    ->first();
                                    $exam_array = array(
                                        'section'=>$value->question,
                                        'select' => array( array(
                                            'id' => '1',
                                            'a'=>$value->answer_1,
                                        ),  array(
                                            'id' => '2',
                                            'a'=>$value->answer_2,
                                        ),  array(
                                            'id' => '3',
                                            'a'=>$value->answer_3,
                                        ),  array(
                                            'id' => '4',
                                            'a'=>$value->answer_4,
                                        ) ),
                                        'answer'=>$value->answer_pass,
                                        'active'=>$request->active,
                                        'e_status'=>$value->e_status,
                                        'created_at'=>Carbon::now(),
                                        'updated_at'=>Carbon::now()
                                      );
                      
                                       $exam_endcode = json_decode($expre_first->json_sub);
                                      
                                       array_push($exam_endcode,$exam_array);
                                      $exam_json = json_encode($exam_endcode);
                                     
                                    DB::table('subject_examination')
                                    ->where('id_sexa',$lastid)
                                    ->update([
                                        'id_sub' => $request->id_sub,
                                        'json_sub' =>  $exam_json,
                                        'detail_sub' => $request->detail_sub,
                                        'updated_by'=>  Auth::user()->username,
                                        'updated_at'=>  Carbon::now(),
                                    ]);
                      
                                 
                      
                      
                                }else{
                      
                                    $exam_array = array(
                                        'section'=>$value->question,
                                        'select' => array( array(
                                            'id' => '1',
                                            'a'=>$value->answer_1,
                                        ),  array(
                                            'id' => '2',
                                            'a'=>$value->answer_2,
                                        ),  array(
                                            'id' => '3',
                                            'a'=>$value->answer_3,
                                        ),  array(
                                            'id' => '4',
                                            'a'=>$value->answer_4,
                                        ) ),
                                        'answer'=>$value->answer_pass,
                                        'active'=>$request->active,
                                        'e_status'=>$value->e_status,
                                        'created_at'=>Carbon::now(),
                                        'updated_at'=>Carbon::now()
                                      );
                                      $data_b[]  = $exam_array;
                                    $exam_json = json_encode($data_b);
                                    
                                $lastid  =  DB::table('subject_examination')
                                    ->insertGetId([
                                        'id_sub' => $request->id_sub,
                                        'name_title' => $request->name_title,
                                        'json_sub' =>  $exam_json,
                                        'detail_sub' => $request->detail_sub,
                                        'created_by'=>  Auth::user()->username,
                                        'created_at'=>  Carbon::now(),
                                    ]);
                                }
                           }
        
        
                    }
            }else{
                $lastid  =  DB::table('subject_examination')
                    ->insertGetId([
                        'id_sub' => $request->id_sub,
                        'name_title' => $request->name_title,
                        'detail_sub' => $request->detail_sub,
                        'created_by'=>  Auth::user()->username,
                        'created_at'=>  Carbon::now(),
                    ]);
            }
          
            
            
        }else{
                
            if($request->file != ''){
                $path = $request->file('file')->getRealPath();
                $data = Excel::load($path)->get();
              
                $lastid = $request->id_se;
                if($data->count()> 0){
           
                    foreach ($data as $key => $value) {
                     
                            $expre_count =  DB::table('subject_examination')
                            ->where('id_sexa',$lastid)
                            ->count();
                         
                                if( $expre_count > 0){
                                    $expre_first =  DB::table('subject_examination')
                                    ->where('id_sexa',$lastid)
                                    ->first();
                                    $exam_array = array(
                                        'section'=>$value->question,
                                        'select' => array( array(
                                            'id' => '1',
                                            'a'=>$value->answer_1,
                                        ),  array(
                                            'id' => '2',
                                            'a'=>$value->answer_2,
                                        ),  array(
                                            'id' => '3',
                                            'a'=>$value->answer_3,
                                        ),  array(
                                            'id' => '4',
                                            'a'=>$value->answer_4,
                                        ) ),
                                        'answer'=>$value->answer_pass,
                                        'active'=>$request->active,
                                        'e_status'=>$value->e_status,
                                        'created_at'=>Carbon::now(),
                                        'updated_at'=>Carbon::now()
                                      );
                      
                                      if($expre_first->json_sub != null){
                                        $exam_endcode = json_decode($expre_first->json_sub);
                                     
                                         array_push($exam_endcode,$exam_array);
  
                                        $exam_json = json_encode($exam_endcode);
                                       
                                      DB::table('subject_examination')
                                      ->where('id_sexa',$lastid)
                                      ->update([
                                          'id_sub' => $request->id_sub,
                                          'name_title' => $request->name_title,
                                          'json_sub' =>  $exam_json,
                                          'detail_sub' => $request->detail_sub,
                                          'updated_by'=>  Auth::user()->username,
                                          'updated_at'=>  Carbon::now(),
                                      ]);
                                      }else{

                                        $exam_endcode =[];
                                        array_push($exam_endcode,$exam_array);
  
                                        $exam_json = json_encode($exam_endcode);
                                        DB::table('subject_examination')
                                        ->where('id_sexa',$lastid)
                                        ->update([
                                            'id_sub' => $request->id_sub,
                                            'name_title' => $request->name_title,
                                            'json_sub' =>  $exam_json,
                                            'detail_sub' => $request->detail_sub,
                                            'updated_by'=>  Auth::user()->username,
                                            'updated_at'=>  Carbon::now(),
                                        ]);
                                      }
                                      
                      
                                 
                      
                      
                                }else{
                      
                                    $exam_array = array(
                                        'section'=>$value->question,
                                        'select' => array( array(
                                            'id' => '1',
                                            'a'=>$value->answer_1,
                                        ),  array(
                                            'id' => '2',
                                            'a'=>$value->answer_2,
                                        ),  array(
                                            'id' => '3',
                                            'a'=>$value->answer_3,
                                        ),  array(
                                            'id' => '4',
                                            'a'=>$value->answer_4,
                                        ) ),
                                        'answer'=>$value->answer_pass,
                                        'active'=>$request->active,
                                        'e_status'=>$value->e_status,
                                        'created_at'=>Carbon::now(),
                                        'updated_at'=>Carbon::now()
                                      );
                                      $data_b[]  = $exam_array;
                                    $exam_json = json_encode($data_b);
                                    
                                $lastid  =  DB::table('subject_examination')
                                    ->insertGetId([
                                        'id_sub' => $request->id_sub,
                                        'name_title' => $request->name_title,
                                        'json_sub' =>  $exam_json,
                                        'detail_sub' => $request->detail_sub,
                                        'created_by'=>  Auth::user()->username,
                                        'created_at'=>  Carbon::now(),
                                    ]);
                                }
                           }
                    }
                 }
            else{
                DB::table('subject_examination')
                ->where('id_sexa',$request->id_se)
                ->update([
                    'id_sub' => $request->id_sub,
                    'name_title' => $request->name_title,
                    'detail_sub' => $request->detail_sub,
                    'updated_by'=>  Auth::user()->username,
                    'updated_at'=>  Carbon::now(),
                ]);



            }
          


        }
       

        return response()->json('200');
     }

     public  function deletesubjectdetail(Request $request){

        DB::table('subject_examination')->where("id_sexa",$request->id)->delete();
        return response()->json('200');
     }
    


   public  function datadetailsub(Request $request,$id){

    $columns = array(
        0 => 'name_title',
      );

    $totalData = DB::table('subject_examination')->count();
    $totalFiltered = $totalData;
    $limit = $request->input('length');
    $start = $request->input('start');
    $order = $columns[$request->input('order.0.column')];
    $dir = $request->input('order.0.dir');

    if (empty($request->input('search.value'))) {

        $posts = DB::table('subject_examination')
            ->where('id_sub',$id)
            ->offset($start)
            ->limit($limit)
            ->orderBy($order, $dir)
            ->get();

    } else {

        $search = $request->input('search.value');
        $posts = DB::table('subject_examination')
            ->where('id_sub',$id)
            ->orWhere('name_title', 'LIKE', "%{$search}%")
            ->offset($start)
            ->limit($limit)
            ->orderBy($order, $dir)
            ->get();

        $totalFiltered = DB::table('subject_examination')
            ->where('id_sub',$id)
            ->orWhere('name_title', 'LIKE', "%{$search}%")
            ->count();

    }

    $data = array();
    if (!empty($posts)) {
        foreach ($posts as $post) {
            $nestedData['name_title'] = $post->name_title;
            $nestedData['options'] = "
            <a href='javascript:void(0)'class='btn btn-warning  btn-xs  editdetailsub' data-id=".$post->id_sexa." >แก้ไข</a>   
            <a href='javascript:void(0)' class='btn btn-danger  btn-xs  deletedetailsub' data-id=".$post->id_sexa." >ลบ</a>
            ";
            $data[] = $nestedData;
        }
    }

    $json_data = array(
        "draw" => intval($request->input('draw')),
        "recordsTotal" => intval($totalData),
        "recordsFiltered" => intval($totalFiltered),
        "data" => $data,
    );

    echo json_encode($json_data);


   }




}