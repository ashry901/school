<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Image;
use App\Models\Product;
use App\Models\Tag;
use DB;

class CategoryController extends Controller
{
    public function productsBySlug($slug)
    {
        $data=[];
        $data['category'] = Category::where('slug', $slug)->first();

        // return $data['category']->products;

        if($data['category'])
            $data['products'] = $data['category']->products;

        //Product::find(22)->images[0]->photo;

        return view('front.products', $data);
    }
}
