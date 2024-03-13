<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\apidata;
use App\Models\User;
use App\Models\Post;
use Illuminate\Http\Request;
use DB;
use GuzzleHttp\Promise\Create;

class UserController extends Controller
{
    //

    public function GetUserList(){
        /* $user = User::with(['post', function($query){
            return $query->where('post' ,">" , 3);
        }])->get();

        dd($user->toArray());
        return $user; */

        $user = DB::select('SELECT * from users where id in (SELECT user_id FROM posts group by user_id having count(*) >= 3)');

        dd($user);
    }

    public function GetApiData(){

        // public api endpoint
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://jsonplaceholder.typicode.com/todos/'.random_int(5, 500),
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        
        $response = json_decode($response);

        // Store api data in db
        $apidata = apidata::create([
            "userId" => $response->userId,
            "title" => $response->title,
            "completed" => $response->completed
        ]);

        dd($response);
    }
}
