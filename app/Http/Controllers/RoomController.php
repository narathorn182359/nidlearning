<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Crypt;

class RoomController extends Controller
{
      
    public function __construct(){
        
        $this->middleware('auth');

    }

    public  function  room($id){
        
        $expre = DB::table('examination')
        ->where('id_ecourse',$id)
        ->where('e_status','1')
        ->first();

        $expost = DB::table('examination')
        ->where('id_ecourse',$id)
        ->where('e_status','3')
        ->first();
        $subject = DB::table('subject')->where('id_sub',$id)->first();
        $subject_examination = DB::table('subject_examination')->where('id_sub',$id)->get();
        
        $expre =  json_decode($expre->json_exam);
        foreach( array_rand($expre, 3) as $k ) {
            $result[] = $expre[$k];
          }

          $expost_en =  json_decode($expost->json_exam);
          foreach( array_rand($expost_en, 5) as $k ) {
              $result_en[] = $expost_en[$k];
            }
        $data =  array(
            'id_sub' => $id,
            'expre'=> $result,
            'expost'=>$result_en,
            'expre_detail' => $subject,
            'subject_examination' => $subject_examination
           );
        //dd($expre);
       
        return view('room.room',$data);
    }

    public function showetest($id){

        $subject_examination = DB::table('subject_examination')
        ->where('id_sexa',$id)
        ->first();
        $subject_examination_array =  json_decode($subject_examination->json_sub);

        foreach(array_rand($subject_examination_array, 5) as $k ) {
            $result[] = $subject_examination_array[$k];
          }
          $output = '';
          $i = 0;
          $j = 0;
          $x = 1;
          foreach ($result as $a) {
          $output_criterion = '';
          $criterions_arr =    $a->select;
        
          foreach ($criterions_arr as $c) {
          $output_criterion .= ' 
              <div class="form-check">
                  <input class="form-check-input position-static" type="radio" name="blankRadio'.$j.'"
                      id="b'.$x.'" value="'.$c->id.'" aria-label="..."  required>
                  <label for="b'.$x.'">'.$c->a.'</label>
                 
              </div>';
           
              $i++;
              if($i == 4){
                $j++;
                $i = 0;
              }
              $x++;
          }
         
          $output .= '<div class="form-group"><label for="">'.$a->section.'</label> </div>' 
          .'<div class="form-group">'.$output_criterion.'<input type="hidden" name="check[]" value="'.Crypt::encryptString($a->answer).'"></div>';
          }




          return response()->json([
              'id_sexa'=>$id,
              'html' =>$output
                 ]);
        
     }



     public function savetest (Request $request){

        //สอบย่อย
           $check = $request->answer;
           $i = 0;
           $sum = 0;
            foreach(  $request->ans  as   $items ){
               
                if($items['ans']  == Crypt::decryptString($check[$i]['sec'])){
                     $sum++;
                    }
                         
                $i++;
            }
            $msg;
            $save;
            if(   $sum   >= (count($request->ans)/2)){
                $msg = 'pass';
                $save = 'ผ่าน';
            }else{
                $msg = 'no';
                $save = 'ไม่ผ่าน';
            }
            DB::table('answer_exam')->insert([
                'id_user' => Auth::user()->username,
                'id_subs' => $request->id_sub,
                'id_exass' => $request->id_sexa,
                'score' => $sum,
                'formscore' => count($request->ans),
                'remark' => $save,
                'created_by'=>  Auth::user()->username,
                'created_at'=>  Carbon::now(),

            ]);


         return   response()->json([
             'status'=>'200',
             'ans' => $msg,
             'score' => $sum,
             'count' => count($request->ans)
         
         ]);
     }


     public function savepretest(Request $request){

         //สอบก่อนเรียน
        $check = $request->answer;
        $i = 0;
        $sum = 0;
         foreach(  $request->ans  as   $items ){
            
             if($items['ans']  == Crypt::decryptString($check[$i]['sec'])){
                  $sum++;
                 }
                      
             $i++;
         }
         $msg;
         $save;
         if(   $sum   >= (count($request->ans)/2)){
             $msg = 'pass';
             $save = 'ผ่าน';
         }else{
             $msg = 'no';
             $save = 'ไม่ผ่าน';
         }
         DB::table('answer_pretest')->insert([
             'id_user' => Auth::user()->username,
             'id_subs' => $request->id_sub,
             'score' => $sum,
             'formscore' => count($request->ans),
             'remark' => $save,
             'created_by'=>  Auth::user()->username,
             'created_at'=>  Carbon::now(),

         ]);
        return   response()->json([
            'status'=>'200',
            'ans' => $msg,
            'score' => $sum,
            'count' => count($request->ans)
        
        ]);
     }

     public function saveprepost(Request $request){

        //หลังสอบ
       $check = $request->answer;
       $i = 0;
       $sum = 0;
        foreach(  $request->ans  as   $items ){
           
            if($items['ans']  == Crypt::decryptString($check[$i]['sec'])){
                 $sum++;
                }
                     
            $i++;
        }
        $msg;
        $save;
        if(   $sum   >= (count($request->ans)/2)){
            $msg = 'pass';
            $save = 'ผ่าน';
        }else{
            $msg = 'no';
            $save = 'ไม่ผ่าน';
        }
        DB::table('answer_posttest')->insert([
            'id_user' => Auth::user()->username,
            'id_subs' => $request->id_sub,
            'score' => $sum,
            'formscore' => count($request->ans),
            'remark' => $save,
            'created_by'=>  Auth::user()->username,
            'created_at'=>  Carbon::now(),

        ]);

       return   response()->json([
           'status'=>'200',
           'ans' => $msg,
           'score' => $sum,
           'count' => count($request->ans)
       
       ]);
    }

    public function   detailreport($id){

      $data =  DB::table('answer_exam')
      ->where('id_user',Auth::user()->username)
      ->where('id_exass',$id)
      ->get();


      return response()->json($data);
    }


    public function showreport(Request $request,$id){

        $columns = array(
            0 => 'name_title',
            1 => 'name_title',
            2 => 'name_title',
          );
    
        $totalData =  DB::table('subject_examination')
        ->where('id_sub',$id)->count();
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
                $nestedData['id'] = $post->id_sexa;
                $nestedData['name_title'] = $post->name_title;
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
