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

    public function countrySelect(Request $request)
    {
        $this->validate($request,[
            'selected_countries' => 'required|min:1'
        ]);
        $company = Company::find(1);
        if ($request->has('selected_countries')) {
            $company->countries()->sync($request->selected_countries);
        }else{
            $company->countries()->sync(array());
        }
        return back()->withMessage('Country Selected Successfully');
    }
}
