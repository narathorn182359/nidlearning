<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use Excel;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function __construct(){
        
        $this->middleware('auth');

    }
    
    public function  getuser(Request $request){


        return view('admin.user');
    }

    public function datauser(Request $request){
        $columns = array(
            0 => 'Name_Thai',
           
          );
    
        $totalData =  DB::table('users_detail')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');
    
        if (empty($request->input('search.value'))) {

            $posts = DB::table('users_detail')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();
    
        } else {
    
            $search = $request->input('search.value');
            $posts = DB::table('users_detail')
                ->orWhere('Name_Thai', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();
    
            $totalFiltered = DB::table('users_detail')
                ->orWhere('Name_Thai', 'LIKE', "%{$search}%")
                ->count();
    
        }
    
        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
               
                $nestedData['Name_Thai'] = $post->Name_Thai;
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
