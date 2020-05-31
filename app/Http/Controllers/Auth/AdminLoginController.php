<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
//Adicionado
use Illuminate\Support\Facades\Auth;

class AdminLoginController extends Controller
{
    
    public function __construct(){
        $this->middleware('guest:admin');
    }

    public function login( Request $request ){
        // return true;
        $this->validate($request, [
            'email' => 'required|string',
            'password' => 'required',
        ]);

        $credentials = [ 
            'email' => $request->email,
            'password' => $request->password
        ];

        $authOK = Auth::guard('admin')->attempt($credentials, $request->remember);

        if ($authOK) {
            return redirect()->intended(route('admin.dashboard'));
            // return redirect()->intended(route('homeadmin'));
        }
        else{
            return redirect()->back()->withInputs($request->only('email','remember'));
        }

        // $this->guard()->attempt(
        //     $this->credentials($request), $request->filled('remember')
        // );

        // if ( $this->attemptLogin($request)) {
        //     return $this->sendLoginResponse($request);
        // }




    }

    public function index( Request $request ){
        return view('auth.admin-login');
    }
}
