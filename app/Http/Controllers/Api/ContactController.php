<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use Validator;

class ContactController extends Controller
{
    public function store(Request $request) {
        // dd($request->all());

        // $validator = \Validator::make($request->all(), [
        //     'first_name' => 'required',
        //     'last_name' => 'required',
        //     'last_name' => 'required',
        //     'description'=> 'require'
        // ]);

        // if ($validator->fails())
        // {
        //     return response()->json(['errors'=>$validator->errors()->all()]);
        // }

        // dd('hi');
        
        // if ($contact->fails())
        // {
        //     return response()->json(['errors'=>$contact->errors()->all()]);
        // }


        $contact = new Contact();
        $contact->first_name  = $request->first_name;
        $contact->last_name  = $request->last_name;
        $contact->last_name  = $request->email;
        $contact->description  = $request->description;
        $contact->save();


        return response()->json(['success'=>'Record is successfully added']);
        
    }
}
