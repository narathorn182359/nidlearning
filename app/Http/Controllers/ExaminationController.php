<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use Excel;
use Illuminate\Support\Str;

class ExaminationController extends Controller
{
    public function __construct(){

        $this->middleware(['role:admin']);
        $this->middleware('auth');
         }


    public function examination($id){
        $expre =  DB::table('examination')
        ->where('e_status',1)
        ->where('id_ecourse',$id)
        ->get();
        if($expre->count() != 0){
            $expre_arr =  json_decode($expre[0]->json_exam);
        }else{
            $expre_arr = [];
        }
        

        $exbe =  DB::table('examination')
        ->where('e_status',2)
        ->where('id_ecourse',$id)
        ->get();
        if($exbe->count() != 0){
            $exbe_arr =  json_decode($exbe[0]->json_exam);
        }else{
            $exbe_arr = [];
        }
        
       

        $expost =  DB::table('examination')
        ->where('e_status',3)
        ->where('id_ecourse',$id)
        ->get();
        if($expost->count()!= 0){
            $expost_arr =  json_decode($expost[0]->json_exam);
        }else{
            $expost_arr = [];
        }
        
       

     
        $data = array(
            'id' =>  $id,
            'expre_arr' =>  $expre_arr,
            'exbe_arr'   => $exbe_arr,
            'expost_arr' => $expost_arr

        );
         //dd($data);
        return view('admin.examination.index',$data);
    }



    public function  saveexpre(Request $request){

          if($request->e_status == '1'){

    
        $expre_count =  DB::table('examination')
        ->where('e_status',$request->e_status)
        ->where('id_ecourse',$request->id)
        ->count();

            if( $expre_count > 0){
                $expre_first =  DB::table('examination')
                ->where('e_status',$request->e_status)
                ->where('id_ecourse',$request->id)
                ->first();

              

                $exam_array = array(
                    'section'=>$request->question,
                    'select' =>  array( array(
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
                    'answer'=>$request->answer_pass,
                    'active'=>$request->active,
                    'e_status'=>$request->e_status,
                    'created_at'=>Carbon::now(),
                    'updated_at'=>Carbon::now()
                  );

                   $exam_endcode = json_decode($expre_first->json_exam);
                  
                   array_push($exam_endcode,$exam_array);
                  $exam_json = json_encode($exam_endcode);
                 
                DB::table('examination')
                ->where('id_e',$expre_first->id_e)
                ->update([
                    'id_ecourse' => $request->id,
                    'json_exam' =>  $exam_json,
                    'e_status' =>   $request->e_status,
                    'updated_by'=>  Auth::user()->username,
                    'updated_at'=>  Carbon::now(),
                ]);

             


            }else{

                $exam_array = array(
                    'section'=>$request->question,
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
                    ) 
                    ),
                    'answer'=>$request->pass,
                    'active'=>$request->active,
                    'e_status'=>$request->e_status,
                    'created_at'=>Carbon::now(),
                    'updated_at'=>Carbon::now()
                  );
                  $data_b[]  = $exam_array;
                $exam_json = json_encode($data_b);
                
                DB::table('examination')
                ->insert([
                    'id_ecourse' => $request->id,
                    'json_exam' =>  $exam_json,
                    'e_status' =>   $request->e_status,
                    'created_by'=>  Auth::user()->username,
                    'created_at'=>  Carbon::now(),
                ]);
            }



     
    }else if($request->e_status == '2'){

        $expre_count =  DB::table('examination')
        ->where('e_status',$request->e_status)
        ->where('id_ecourse',$request->id)
        ->count();

            if( $expre_count > 0){
                $expre_first =  DB::table('examination')
                ->where('e_status',$request->e_status)
                ->where('id_ecourse',$request->id)
                ->first();

              

                $exam_array = array(
                    'section'=>$request->question,
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
                    )) ,
                    'answer'=>$request->answer_pass,
                    'active'=>$request->active,
                    'e_status'=>$request->e_status,
                    'created_at'=>Carbon::now(),
                    'updated_at'=>Carbon::now()
                  );

                   $exam_endcode = json_decode($expre_first->json_exam);
                  
                   array_push($exam_endcode,$exam_array);
                  $exam_json = json_encode($exam_endcode);
                 
                DB::table('examination')
                ->where('id_e',$expre_first->id_e)
                ->update([
                    'id_ecourse' => $request->id,
                    'json_exam' =>  $exam_json,
                    'e_status' =>   $request->e_status,
                    'updated_by'=>  Auth::user()->username,
                    'updated_at'=>  Carbon::now(),
                ]);

             


            }else{

                $exam_array = array(
                    'section'=>$request->question,
                    'select' =>  array(array(
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
                    'answer'=>$request->pass,
                    'active'=>$request->active,
                    'e_status'=>$request->e_status,
                    'created_at'=>Carbon::now(),
                    'updated_at'=>Carbon::now()
                  );
                  $data_b[]  = $exam_array;
                $exam_json = json_encode($data_b);
                
                DB::table('examination')
                ->insert([
                    'id_ecourse' => $request->id,
                    'json_exam' =>  $exam_json,
                    'e_status' =>   $request->e_status,
                    'created_by'=>  Auth::user()->username,
                    'created_at'=>  Carbon::now(),
                ]);
            }
    }else{

        $expre_count =  DB::table('examination')
        ->where('e_status',$request->e_status)
        ->where('id_ecourse',$request->id)
        ->count();

            if( $expre_count > 0){
                $expre_first =  DB::table('examination')
                ->where('e_status',$request->e_status)
                ->where('id_ecourse',$request->id)
                ->first();

              

                $exam_array = array(
                    'section'=>$request->question,
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
                    'answer'=>$request->answer_pass,
                    'active'=>$request->active,
                    'e_status'=>$request->e_status,
                    'created_at'=>Carbon::now(),
                    'updated_at'=>Carbon::now()
                  );

                   $exam_endcode = json_decode($expre_first->json_exam);
                  
                   array_push($exam_endcode,$exam_array);
                  $exam_json = json_encode($exam_endcode);
                 
                DB::table('examination')
                ->where('id_e',$expre_first->id_e)
                ->update([
                    'id_ecourse' => $request->id,
                    'json_exam' =>  $exam_json,
                    'e_status' =>   $request->e_status,
                    'updated_by'=>  Auth::user()->username,
                    'updated_at'=>  Carbon::now(),
                ]);
            }else{

                $exam_array = array(
                    'section'=>$request->question,
                    'select' =>array( array(
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
                    'answer'=>$request->pass,
                    'active'=>$request->active,
                    'e_status'=>$request->e_status,
                    'created_at'=>Carbon::now(),
                    'updated_at'=>Carbon::now()
                  );
                  $data_b[]  = $exam_array;
                $exam_json = json_encode($data_b);
                
                DB::table('examination')
                ->insert([
                    'id_ecourse' => $request->id,
                    'json_exam' =>  $exam_json,
                    'e_status' =>   $request->e_status,
                    'created_by'=>  Auth::user()->username,
                    'created_at'=>  Carbon::now(),
                ]);
            }
    }

        return response()->json(200);
    }


    public function dowloadexcel(){
        $data[] = array(
            'e_status' => '',
            'question' => '',
            'answer_1' => '',
            'answer_2' => '',
            'answer_3' => '',
            'answer_4' => '',
            'answer_pass' => '',
        );



        return Excel::create('ไฟล์ดาวโหลด', function ($excel) use ($data) {
            $excel->sheet('mySheet', function ($sheet) use ($data) {
                $sheet->fromArray($data);
            });
        })->download('xlsx');


    }

    public function  saveexpreforexcel(Request $request){

        $request->validate([
            'file' => 'required'
        ]);
        $path = $request->file('file')->getRealPath();
        $data = Excel::load($path)->get();
        if($data->count()> 0){
            foreach ($data as $key => $value) {
                if($value->e_status == '1'){
                    $expre_count =  DB::table('examination')
                    ->where('e_status',$value->e_status)
                    ->where('id_ecourse',$request->id)
                    ->count();
              
                        if( $expre_count > 0){
                            $expre_first =  DB::table('examination')
                            ->where('e_status',$value->e_status)
                            ->where('id_ecourse',$request->id)
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
              
                               $exam_endcode = json_decode($expre_first->json_exam);
                              
                               array_push($exam_endcode,$exam_array);
                              $exam_json = json_encode($exam_endcode);
                             
                            DB::table('examination')
                            ->where('id_e',$expre_first->id_e)
                            ->update([
                                'id_ecourse' => $request->id,
                                'json_exam' =>  $exam_json,
                                'e_status' =>   $value->e_status,
                                'updated_by'=>  Auth::user()->username,
                                'updated_at'=>  Carbon::now(),
                            ]);
              
                         
              
              
                        }else{
              
                            $exam_array = array(
                                'section'=>$value->question,
                                'select' => array(
                                    array(
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
                                    ) 
                                ),
                                'answer'=>$value->answer_pass,
                                'active'=>$request->active,
                                'e_status'=>$value->e_status,
                                'created_at'=>Carbon::now(),
                                'updated_at'=>Carbon::now()
                              );
                              $data_b[]  = $exam_array;
                            $exam_json = json_encode($data_b);
                            
                            DB::table('examination')
                            ->insert([
                                'id_ecourse' => $request->id,
                                'json_exam' =>  $exam_json,
                                'e_status' =>   $value->e_status,
                                'created_by'=>  Auth::user()->username,
                                'created_at'=>  Carbon::now(),
                            ]);
                        }
              
              
              
                 
                }else if($value->e_status == '2'){
              
                    $expre_count =  DB::table('examination')
                    ->where('e_status',$value->e_status)
                    ->where('id_ecourse',$request->id)
                    ->count();
              
                        if( $expre_count > 0){
                            $expre_first =  DB::table('examination')
                            ->where('e_status',$value->e_status)
                            ->where('id_ecourse',$request->id)
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
                                ) 
                            ),
                                'answer'=>$value->answer_pass,
                                'active'=>$request->active,
                                'e_status'=>$value->e_status,
                                'created_at'=>Carbon::now(),
                                'updated_at'=>Carbon::now()
                              );
              
                               $exam_endcode = json_decode($expre_first->json_exam);
                              
                               array_push($exam_endcode,$exam_array);
                              $exam_json = json_encode($exam_endcode);
                             
                            DB::table('examination')
                            ->where('id_e',$expre_first->id_e)
                            ->update([
                                'id_ecourse' => $request->id,
                                'json_exam' =>  $exam_json,
                                'e_status' =>   $value->e_status,
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
                            
                            DB::table('examination')
                            ->insert([
                                'id_ecourse' => $request->id,
                                'json_exam' =>  $exam_json,
                                'e_status' =>   $value->e_status,
                                'created_by'=>  Auth::user()->username,
                                'created_at'=>  Carbon::now(),
                            ]);
                        }
                      }
                      else{
              
                    $expre_count =  DB::table('examination')
                    ->where('e_status',$value->e_status)
                    ->where('id_ecourse',$request->id)
                    ->count();
                        if( $expre_count > 0){
                            $expre_first =  DB::table('examination')
                            ->where('e_status',$value->e_status)
                            ->where('id_ecourse',$request->id)
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
              
                               $exam_endcode = json_decode($expre_first->json_exam);
                              
                               array_push($exam_endcode,$exam_array);
                              $exam_json = json_encode($exam_endcode);
                             
                            DB::table('examination')
                            ->where('id_e',$expre_first->id_e)
                            ->update([
                                'id_ecourse' => $request->id,
                                'json_exam' =>  $exam_json,
                                'e_status' =>   $value->e_status,
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
                                'updated_by'=>Carbon::now(),
                                'updated_at'=>Carbon::now()
                              );
                              $data_b[]  = $exam_array;
                            $exam_json = json_encode($data_b);
                            
                            DB::table('examination')
                            ->insert([
                                'id_ecourse' => $request->id,
                                'json_exam' =>  $exam_json,
                                'e_status' =>   $value->e_status,
                                'created_by'=>  Auth::user()->username,
                                'created_at'=>  Carbon::now(),
                            ]);
                        }
                }


            }
        }

      

      return back()->with('success', 'Insert Record successfully.');
  }





      public function deleteallpre(Request $request)
      {

        DB::table('examination')
        ->where('id_ecourse',$request->id)
        ->where('e_status','1')
        ->delete();
         return  response()->json('200');

      }

      public function deleteallbe(Request $request)
      {

        DB::table('examination')
        ->where('id_ecourse',$request->id)
        ->where('e_status','2')
        ->delete();
         return  response()->json('200');

      }

      public function deletepost(Request $request)
      {

        DB::table('examination')
        ->where('id_ecourse',$request->id)
        ->where('e_status','3')
        ->delete();
         return  response()->json('200');

      }


      public function geteditsexa($id){

        $data =  DB::table('subject_examination')
        ->first();

        return  response()->json($data);
      }

     
}
