<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
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

        $user = Auth::user();

//        if ($user->is_student === 1) {
//            $filledQuestionnaire = DB::select(DB::raw(
//                "SELECT a.answers, q.title, q.data FROM user_answers a JOIN questionnaires q ON q.id = a.questionnaire_id WHERE a.user_id = ".$user->id
//            ));
//
//            $availableQuestionnaire  = DB::select(DB::raw(
//                "SELECT a.answers, q.title, q.data FROM questionnaires q LEFT JOIN user_answers a ON q.id = a.questionnaire_id WHERE a.answers IS NULL AND q.group_id = ".$user->group_id
//            ));
//
//            dd($filledQuestionnaire, $availableQuestionnaire);
//        }

        $data = [
            'isStudent' => Auth::user()->is_student
        ];
        return view('home', $data);
    }
}
