<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
class HomeController extends Controller
{
    public function getAllArticles(){
        $articles = Article::all();
        //dd($articles)
        return view('home',compact('articles'));
    }
    public function listTruTinhSongs()
    {
        $id = Category::where('ten_tloai','like', '%Consectetur exercitationem%')->value('ma_tloai');
        //dd($id);

        $articles= Article::where('ma_tloai','=', $id)->get();
        //dd($abc);

        //return view('articles.list',  compact('articles'));
        return view('home',compact('articles'));
    }

}
