<?php

namespace App\Http\Controllers;

use App\Company;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function setCompanyInfo(Request $request)
    {
        $this->validate($request,[
            'company_name' => 'required',
        ]);
        $countInfo = Company::count();
        if ($countInfo > 0){
            $info = Company::find(1);
            $info->name = $request->company_name;
            $info->save();
        }else{
            $info = new Company();
            $info->name = $request->company_name;
            $info->save();
        }
        return back()->withMessage('Company Name Saved Successfully');
    }
}
