<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
class GroupLearController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
              $posi = $request->position;

        for($count = 0; $count < collect($posi)->count(); $count++)
             {

                DB::table('set_learning')->where('id_vichar',$request->id_vichar)->delete();


              $data = array(
            'id_position' => $posi[$count],
            'id_vichar' => $request->id_vichar,
            'checked'=> 'checked',
            'status' => true
          );

                 $insert_schedule[] = $data;
               }


               if(isset($insert_schedule)){
                DB::table('set_learning')->insert(
                    $insert_schedule
                );
               }else{
                DB::table('set_learning')->where('id_vichar',$request->id_vichar)->delete();
               }



            return redirect('grouplear/'.$request->id_vichar);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $i = 0;      
    
      
        
        $subject = DB::table('subject')
        ->where('id_sub',$id)
        ->first();

        $position = DB::table('position')
        ->leftJoin('set_learning', 'position.id', '=', 'set_learning.id_position')
        ->where('id_vichar',$id)
        ->get();

        $position_count = DB::table('position')
        ->leftJoin('set_learning', 'position.id', '=', 'set_learning.id_position')
        ->where('id_vichar',$id)
        ->count();


        $position_2 = DB::table('position')->get();



        foreach($position_2 as $item){

                     $get_data = DB::table('set_learning')
                     ->where('id_vichar',$id)
                     ->where('id_position', $item->id)
                     ->first();

                     if(isset($get_data)){
                        $data_f = array(
                            'id' => $item->id,
                            'name_posi' => $item->name_posi,
                            'id_vichar'=>  $get_data->id_vichar,
                            'id_position' =>  $get_data->id_position,
                            'checked' =>  $get_data->checked,
                            'created_at'=> $item->created_at,
                            'updated_at' => $item->updated_at
                            );

                     }else{
                       $data_f = array(
                        'id' => $item->id,
                        'name_posi' => $item->name_posi,
                        'id_vichar'=> '-',
                        'id_position' => '-',
                        'checked' => '',
                        'created_at'=> $item->created_at,
                        'updated_at' => $item->updated_at
                        );

                 }






                    $insert_schedule[]= $data_f;

                   }

                   if(isset($insert_schedule)){
                    $data = array(
                      
                        'subject' => $subject,
                        'position' => $insert_schedule,

          );
                   }else{
                    $data = array(
                       
                        'subject' => $subject,
                        'position_2' => $position_2,

          );
                   }

                  // dd($insert_schedule);

               /*     $sNewCars = array_map("unserialize",array_unique(array_map("serialize",$insert_schedule)));
 */
                   //dd($sNewCars);


        return view('admin.grouplear.add', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

      
        $subject = DB::table('subject')
        ->where('id_sub',$id)
        ->first();
        $data = array(
                    
                      'subject' => $subject
        );
        return view('admin.grouplear.index', $data);


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }



   
    public function add_brand($id,$idd)
    {

      
        $brand = DB::table('users_detail')->select('JGStatus')->get();

        $a=array();
        foreach($brand as  $i){
            array_push($a, $i->JGStatus);
        }

        $brand_r   = array_unique( $a );
        $array = $a;
        $unique = array();
        foreach($array as $v){
          isset($k[$v]) || ($k[$v]=1) && $unique[] = $v;
          }
          //dd($unique);
          $i=0;
          $brand_check = DB::table('set_brand_learnning')->get();
             foreach($unique as $item)
             {
                $get_data = DB::table('set_brand_learnning')
                ->where('id_vichar_b',$idd)
                ->where('id_position_b', $id)
                ->where('brand',$unique[$i])
                ->first();
                if(isset($get_data)){
                    $data_f = array(
                        'id_set_brand' => $get_data->id_set_brand,
                        'id_vichar_b' => $get_data->id_vichar_b,
                        'id_position_b'=>  $get_data->id_position_b,
                        'brand' =>  $get_data->brand,
                        'checked' =>  $get_data->checked,

                        );

                 }else{
                   $data_f = array(
                    'id_set_brand' => '',
                    'id_vichar_b' => '',
                    'id_position_b'=>  '',
                    'brand' =>  $item,
                    'checked' =>  '',

                    );

                }
                $i++;
                $insert_schedule[]= $data_f;
             }
     if(isset($insert_schedule)){
    $data =  array(
        'brand_r2' =>   $insert_schedule,
        'id'   => $id,
        'idd' => $idd
        );
   }else{
    $data =  array(
       
        'brand_r' =>   $unique,
        'id'   => $id,
        'idd' => $idd
    );

   }


        return view('admin.setbrand',$data);

    }


    public function save_brand_set(Request $request)
    {

        $brand = $request->brand;

        for($count = 0; $count < collect($brand)->count(); $count++)
             {

                DB::table('set_brand_learnning')->where('id_vichar_b',$request->id_vichar)->delete();


              $data = array(
            'brand' => $brand[$count],
            'id_position_b' => $request->id_position,
            'id_vichar_b' => $request->id_vichar,
            'checked'=> 'checked',
            'status' => true
          );

                 $insert_schedule[] = $data;
               }
             if(isset($insert_schedule)){
                DB::table('set_brand_learnning')->insert(
                    $insert_schedule
                );
               }else{
                DB::table('set_brand_learnning')->where('id_vichar_b',$request->id_vichar)->delete();
               }




        return redirect('set_brand/'.$request->id_position.'/'.$request->id_vichar);
    }


}
