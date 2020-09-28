<?php

namespace App\Console\Commands;

use App\Company;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class CheckExpireDate extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'check:expire';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This will check companies expire date!';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $expDate = Company::where('id',1)->first()->expire_date;
        $expDate = strtotime($expDate);
        if (time() >= $expDate ){
            $company = Company::find(1);
            $company->status = 0;
            $company->save();
//            DB::table('companies')->where('expire_date',$action_date)->update(['status' => 0]);
        }
    }
}
