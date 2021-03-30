<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\DB;
class VideoController extends Controller
{
    public function __construct()
    {
        $this->middleware(['role:admin']);
        $this->middleware('auth');
      
    }

    public function indexvideo(){

       $video    =   DB::table('video')->get();
       $data =  array(
           'video' => $video,
       );



        return view('admin.video',$data);
     }



     function upload(Request $request)
    {
       
     $rules = array(
        'filename' => 'file|mimes:mp4,flv,wmv,avi,mov,qt',
     );

     $error = Validator::make($request->all(), $rules);

     if($error->fails())
     {
      return response()->json(['errors' => $error->errors()->all()]);
     }

     $image = $request->file('file');

     $new_name = rand() . '.' . $image->getClientOriginalExtension();

           DB::table('video')->insert([
            'subject_name' =>$request->subject_name,
            'episode' => $request->episode,
            'video_name' => $new_name
           ]);

     $image->move(public_path('video'), $new_name);
     $output = array(
         'success' => 'Video uploaded successfully',
         'image'  => $new_name
        );

        return response()->json($output);
    }



    function  delete_video(Request $request){

        $video =  DB::table('video')
        ->where('id_vi',$request->id)
        ->first();
        unlink(public_path('/video/'.$video->video_name));
        
        DB::table('video')
        ->where('id_vi',$request->id)
        ->delete();


    }
}
