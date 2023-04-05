<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Participant;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{



    public function index()
    {
        return 'Welcome';
    }

}
