<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Category;
use App\Models\Comment;
use App\Models\Contact;
use App\Models\Voucher;
use App\Models\Product;
use App\Models\Order;
use Illuminate\Support\Facades\DB;
class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = count(User::all());
        $comments = count(Comment::all());
        $categories = count(Category::all());
        $product = count(Product::all());
        $Contact = count(Contact::all());
        $order = count(Order::all());
        $voucher = count(Voucher::all());
        $totalrevenueMonth1 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',1)->whereYear('created_at',2020)->get();
        $totalrevenueMonth2 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',2)->whereYear('created_at',2020)->get();
        $totalrevenueMonth3 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',3)->whereYear('created_at',2020)->get();
        $totalrevenueMonth4 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',4)->whereYear('created_at',2020)->get();
        $totalrevenueMonth5 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',5)->whereYear('created_at',2020)->get();
        $totalrevenueMonth6 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',6)->whereYear('created_at',2020)->get();
        $totalrevenueMonth7 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',7)->whereYear('created_at',2020)->get();
        $totalrevenueMonth8 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',8)->whereYear('created_at',2020)->get();
        $totalrevenueMonth9 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',9)->whereYear('created_at',2020)->get();
        $totalrevenueMonth10 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',10)->whereYear('created_at',2020)->get();
        $totalrevenueMonth11 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',11)->whereYear('created_at',2020)->get();
        $totalrevenueMonth12 = DB::table('orders')->select(DB::raw('SUM(total_price) as doanhthu'))
        ->whereMonth('created_at',12)->whereYear('created_at',2020)->get();
        // dd($totalrevenueMonth6);
        // return view('admin.home', compact('users','comments','categories'));
        return view('admin.home',
        ['TotalUser'=>$users,
         'Totalcmt'=>$comments,
         'Totalcate'=>$categories,
         'Totalorder'=>$order,
         'Totalcontact'=>$Contact,
         'Totalproduct'=>$product,
         'Totalvoucher'=>$voucher,
         'totalrevenueMonth1'=>$totalrevenueMonth1,
         'totalrevenueMonth2'=>$totalrevenueMonth2,
         'totalrevenueMonth3'=>$totalrevenueMonth3,
         'totalrevenueMonth4'=>$totalrevenueMonth4,
         'totalrevenueMonth5'=>$totalrevenueMonth5,
         'totalrevenueMonth6'=>$totalrevenueMonth6,
         'totalrevenueMonth7'=>$totalrevenueMonth7,
         'totalrevenueMonth8'=>$totalrevenueMonth8,
         'totalrevenueMonth9'=>$totalrevenueMonth9,
         'totalrevenueMonth10'=>$totalrevenueMonth10,
         'totalrevenueMonth11'=>$totalrevenueMonth11,
         'totalrevenueMonth12'=>$totalrevenueMonth12,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
