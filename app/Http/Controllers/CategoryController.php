<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use Illuminate\Support\Str;
class CategoryController extends Controller
{
    
    public  function datacategory(Request $request){
        $columns = array(
            0 => 'name_cat',
          );

        $totalData = DB::table('category')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('category')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('category')
                ->orWhere('name_cat', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('category')
                ->orWhere('name_cat', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
           
                $nestedData['name_cat'] = $post->name_cat;
                $nestedData['options'] = "
                  
                <a href='javascript:void(0)'class='btn btn-warning  btn-xs  editcategory' data-id=".$post->id_cat." >แก้ไข</a>   
                <a href='javascript:void(0)' class='btn btn-danger  btn-xs  deletecategory' data-id=".$post->id_cat." >ลบ</a>
                
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




    public function savecategory(Request $request){
  
        if($request->id == '0'){

            DB::table('category')->insert([
                'name_cat' => $request->name_cat,
                'created_by'=>  Auth::user()->username,
                'created_at'=>  Carbon::now(),
            ]);

            
        }else{

            DB::table('category')
            ->where('id_cat',$request->id)
            ->update([
                'name_cat' => $request->name_cat,
                'created_by'=>  Auth::user()->username,
                'created_at'=>  Carbon::now(),
            ]);

        }

       


        return response()->json("200");

    }
    public function geteditcategory($id){


         $data =  DB::table('category')
         ->where('id_cat',$id)
         ->first();


        return response()->json($data);

    }

   public function  deletecategory(Request $request){

            DB::table('category')
            ->where('id_cat',$request->id)
            ->delete();

            return response()->json("200");
   } 


}
