<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\file;
use Illuminate\Support\Facades\Auth;
use App\Mail\MyTestEmail;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    //
    public function form(){
        return view('form');
    }
  
    public function do_form(Request $request){
       
         $request->validate([
            'qty'=>'required|numeric',
            'amount'=>'required|numeric',
            'totalAmount'=>'required',
            'taxPercentage'=>'required|in:0,5,12,18,28',
            'taxAmount'=>'required',
            'netAmount'=>'required',
            'customerName'=>'required|alpha',
            'invoiceDate'=>'required|date',
            'photo'=>'required|file|max:3072|mimes:jpg,png,pdf',
            'customerEmail'=>'required|email',
         
        ]);
      
        $data =$request->all();
        $path = 'asset/storage/images/' .$data['photo'];
        $fileName=time().$request->file('photo')->getClientOriginalName();
        $path=$request->file('photo')->storeAs('images',$fileName,'public');
        $datas["photo"]='/storage/'.$path;
        $data['photo']=$fileName;
        $email = $request->customerEmail;
        Employee::create($data);
        Mail::to($email)->send(new MyTestEmail($data));


        return redirect()->route('dashboard');
    }
    public function view(){
        $data = Employee::all();
        return view('view',compact('data'));
        // $user = Auth::id();
        // $data = Employee::where('id','=',$user)->get();
        
        return view('view',compact('data'));
    }
    public function edit($id){
        $data = Employee::find($id);
        return view('edit',compact('data'));
    }
    public function delete($id){
        Employee::find($id)->delete();
        return redirect()->route('view');
}



public function update(Request $request,$id){
        $dd =Employee::find($id);
        $request->validate([
         'photo'=>"mimes:jpeg,jpg,png,gif|max:2048",
        ]);
        $dd->qty= $request->input('qty');
        $dd->amount= $request ->input('amount');
        $dd->totalAmount=$request->input('totalAmount');
        $dd->taxPercentage=$request->input('taxPercentage');
        $dd->netAmount=$request->input('netAmount');
        $dd->customerName=$request->input('customerName');
        $dd->invoiceDate=$request->input('invoiceDate');
        $dd->customerEmail=$request->input('customerEmail');
        $dd->taxAmount=$request->input('taxAmount');
        if($request->hasFile('photo')){
         $path = 'asset/storage/images/'.$dd->photo;
         if(File::exists($path)){
             File::delete($path);
         }
         $fileName=time().$request->file('photo')->getClientOriginalName();
         $path=$request->file('photo')->storeAs('images',$fileName,'public');
         $dd['photo']='/storage/'.$path;
         $dd->photo=$fileName;
         $dd->update();
}
$dd->update();
return redirect()->route('view');
}

}
