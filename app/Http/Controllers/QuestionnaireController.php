<?php

namespace App\Http\Controllers;


use App\Http\Cryption;
use Illuminate\Encryption\Encrypter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class QuestionnaireController extends Controller
{
    public function available()
    {
        $user = Auth::user();
        $questionnaire = [];
        $availableQuestionnaire  = DB::select(DB::raw(
                "SELECT a.answers, q.id, q.title, q.data FROM questionnaires q LEFT JOIN user_answers a ON q.id = a.questionnaire_id WHERE a.answers IS NULL AND q.group_id = ".$user->group_id
            ));


        foreach ($availableQuestionnaire as $item) {
            $questionnaire[] = [
               'id' => $item->id,
              'title' => $item->title,
              'questions' => json_decode($item->data)
            ];
        }

        return view('questionnaire/list', ['questions' => $questionnaire]);
    }

    public function filled()
    {
        return view('questionnaire/filled');
    }

    public function answers(Request $request)
    {
        $user = Auth::user();
        $data['quest'] = false;
        $data['questionnaire'] = false;
        $data['isStudent'] = $user->is_student;

        if ($request->method() == "POST") {

            $isCorrect = true;
            $answersList = null;
            if (Auth::user()->is_student) {
                $res  = DB::select(DB::raw("
                SELECT
                    ua.answers as ans,
                    q.title
                FROM user_answers ua
                JOIN questionnaires q ON q.id = ua.questionnaire_id
                WHERE ua.user_id = " . $user->getAuthIdentifier() . "
                AND q.id = ". $request->input("question_id")
                ));

                $answersJSON =  (new Cryption())->decryption($res[0]->ans,$request->input("hash"));
                $answerHASH = hash('sha512', $answersJSON.$user->email);
                $res2 = DB::select(DB::raw(
                     "SELECT
                       hash, hash_own, answers
                     FROM questionnaire_answers
                     WHERE hash = '$answerHASH'"
                      ));

               $isCorrect = isset($res2[0]->hash) && hash("sha512",$res2[0]->answers) == $res2[0] -> hash_own;
                $answersList = json_decode($answersJSON, true);

            } else {
                $res  = DB::select(DB::raw(
                "SELECT
                ua.answers as ans,
                q.title,
                ua.hash_own
                FROM questionnaire_answers ua
                JOIN questionnaires q ON q.id = ua.questionaire_id
                WHERE ua.questionaire_id = " . $request->input("question_id")
                ));
                $isCorrect = hash("sha512",$res[0]->ans) == $res[0] -> hash_own;
                $answersList = json_decode($res[0]->ans, true);

            }


            $data['questionnaire'] = [
                'ans' => $res[0]->title,
                'is_correct' => $isCorrect,
                'data' => $answersList
            ];
        } else {

           if (Auth::user()->is_student) {
               $sql = "SELECT
                        q.id,
                        q.title
                        FROM questionnaires q
                        LEFT JOIN user_answers ua
                        ON ua.questionnaire_id = q.id
                        WHERE user_id = 1";
               $res = DB::select(DB::raw($sql));
           } else {
               $sql = "
                    SELECT
                    q.id,
                    q.title
                    FROM questionnaires q
                    LEFT JOIN questionnaire_answers qa
                    ON qa.questionaire_id = q.id";

               $res = DB::select(DB::raw($sql));
           }

          $data['quest'] = $res;
        }

        return view('questionnaire/answers', $data);
    }

    public function save(Request $request)
    {
        $questionnaireId = $request->input("questionnaire");
        $encryptionKey = $request->input("hash_key");

        $answers = [];

        foreach ($request->input("answer") as $answer) {
            $answers[] = [
                "question" => key($answer),
                "answer" => current($answer)
            ];
        }

        $encryption = new Cryption();
        $user = Auth::user();


        $string = json_encode($answers);
        $str = $encryption->encryption($string, $encryptionKey);

        DB::table("user_answers")->insert([
            'user_id' => $user->getAuthIdentifier(),
            'questionnaire_id' => $questionnaireId,
            'answers' => $str,
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table("questionnaire_answers")->insert([
            'questionaire_id' => $questionnaireId,
            'answers' => $string,
            'created_at' => date('Y-m-d H:i:s'),
            'hash' => hash('sha512', $string.$user->email),
            'hash_own' => hash('sha512', $string)
       ]);



        return redirect()->route('questionnaire.answers');
    }



}
