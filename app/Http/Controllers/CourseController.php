<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use Illuminate\Support\Str;

class CourseController extends Controller
{
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
                <a href='javascript:void(0)'class='btn btn-warning  btn-xs  editcourse' data-id=".$post->id_co." >แก้ไข</a>   
                <a href='javascript:void(0)' class='btn btn-danger  btn-xs  deletecourse' data-id=".$post->id_co." >ลบ</a>
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



     public function geteditcourse($id){

        $data =  DB::table('course')
        ->where('id_co',$id)
        ->first();


       return response()->json($data);
     }

     public function savecourse(Request $request){
  
        if($request->id == '0'){

            DB::table('course')->insert([
                'name_co' => $request->name_co,
                'created_by'=>  Auth::user()->username,
                'created_at'=>  Carbon::now(),
            ]);

            
        }else{

            DB::table('course')
            ->where('id_co',$request->id)
            ->update([

                'name_co' => $request->name_co,
                'created_by'=>  Auth::user()->username,
                'created_at'=>  Carbon::now(),

                ]);

        }

       


        return response()->json("200");

    }



       public function deletecourse(Request $request){

           DB::table('course')
           ->where('id_co',$request->id)
           ->delete();


           return  response()->json("200");

       }
}
