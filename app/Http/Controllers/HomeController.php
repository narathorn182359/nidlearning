<?php


namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Auth;
use Illuminate\Support\Facades\DB;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
      
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $user_id = Auth::user()->id;
        $user = User::find($user_id);
        $permissions =   $user->getRoleNames();
       //dd( $permissions); 
     
         if($permissions->count() > 0){

            if( $permissions[0] == 'admin'){
             return   redirect('adminhome');
            }
            return redirect('/');
         }
          
      

         return  redirect('/');
    }

    public function profile()
    {
        $users =  DB::table('users')
        ->where('id',Auth::user()->id)
        ->first();

        $user_detail =  DB::table('users_detail')
        ->where('Code_Staff', $users->username)
        ->first();
        $data =  array('user_detail'=>$user_detail);
        return view('profile',$data);
    }
    public function viewtest($id){


            $answer_pretest = DB::table('answer_pretest')
            ->where('id_user',Auth::user()->username)
            ->where('id_subs',$id)
            ->get();

            $answer_posttest = DB::table('answer_posttest')
            ->where('id_user',Auth::user()->username)
            ->where('id_subs',$id)
            ->get();

        $data =  array(

              'answer_pretest' => $answer_pretest,
              'answer_posttest' => $answer_posttest,
              'id' => $id
              
            );
        return view('viewtest',$data);
    }

    public function welcome()
    {
        return view('welcome');
    }

    public function service()
    {
        return view('service');
    }


    public function contect()
    {
        return view('contect');
    }


    public function about()
    {
        return view('about');
    }


    public function skill()
    {
        $class = DB::table('subject')
       
       ->where('skill_status',1)
       ->get();

       //dd($class);
       

        $data =  array(
            'class'=>$class
          );

        return view('skill',$data);
    }

    public function class()
    {
     
       $userdetail = DB::table('users_detail')
       ->where('Code_Staff',Auth::user()->username)
       ->first();

       $position = DB::table('position')
       ->where('name_posi',$userdetail->Position)
       ->first();

        
       $class = DB::table('subject')
       ->leftjoin('set_learning','subject.id_sub','set_learning.id_vichar')
       ->leftjoin('set_brand_learnning','set_learning.id_vichar','set_brand_learnning.id_vichar_b')
       ->where('id_position',$position->id)
       ->where('brand',$userdetail->JGStatus)
       ->get();

      // dd($class);
       
       
       
       
        $data =  array(
            'class'=>$class
        
        );






        return view('class',$data);
    }
    
    public  function noti(Request $request){

        $userdetail = DB::table('users_detail')
       ->where('Code_Staff',Auth::user()->username)
       ->first();

       $position = DB::table('position')
       ->where('name_posi',$userdetail->Position)
       ->first();

        
        $class = DB::table('subject')
       ->leftjoin('set_learning','subject.id_sub','set_learning.id_vichar')
       ->leftjoin('set_brand_learnning','set_learning.id_vichar','set_brand_learnning.id_vichar_b')
       ->where('id_position',$position->id)
       ->where('brand',$userdetail->JGStatus)
       ->count();




        return   response()->json($class);
     }

}
