<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class FirstController extends Controller
{
    //
    function index()
    {
        echo "Defult index run";
    }

    function mark()
    {

        return view('ravi');

    }

    function firstform()
    {
        return view("firstform");


    }

    function save()
    {
        $req = \request()->all();
        $name = $req["name"];
        $age = $req["age"];
        $sex = $req["sex"];
        $country = $req["country"];
        $phone = $req["phone"];
        $pin = $req["pin"];

        $ret = DB::table("customer")->insertGetId([
            'name' => $name,
            'age' => $age,
            'sex' => $sex,
            'country' => $country,
            'phone' => $phone,
            'pin' => $pin]);
        //return redirect("form");


        $data=[
            'id'=>$ret,
            'name' => $name,
            'age' => $age,
            'sex' => $sex,
            'country' => $country,
            'phone' => $phone,
            'pin' => $pin];

        return view("editform")->with($data);

    }
    function update()
    {
        $req = \request()->all();
        $id = $req["id"];
        $name = $req["name"];
        $age = $req["age"];
        $sex = $req["sex"];
        $country = $req["country"];
        $phone = $req["phone"];
        $pin = $req["pin"];

        $ret = DB::table("customer")->where(['id'=>$id])
            ->update([
            'name' => $name,
            'age' => $age,
            'sex' => $sex,
            'country' => $country,
            'phone' => $phone,
            'pin' => $pin]);



        //return redirect("form");

        if($ret)
        {
            $data=[
                'id'=>$id,
                'name' => $name,
                'age' => $age,
                'sex' => $sex,
                'country' => $country,
                'phone' => $phone,
                'pin' => $pin];

            return view("editform")->with($data);
        }
        else {
            return redirect('form');
        }


    }

    function profile()
    {
        $id=\request()->id;

    }
}
