<?php

namespace App\Http\Controllers;

use App\Custom;
use App\Genre;
use App\Post;
use App\PostGenre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("post.index");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("post.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            "name" => "required",
            "original_name" => "required",
            "release_year" => "required|integer|min:2011",
            "category" => "required|exists:categories,id",
            "quality" => "required|exists:qualities,id",
            "genre" => "required",
            "genre.*" => "exists:genres,id",
            "director" => "nullable",
            "actors" => "nullable",
            "trailer" => "nullable|url",
            "description" => "required",
            "photo" => "required|mimetypes:image/jpeg,image/png|max:512",
        ]);

        $dir="public/movie_photo";
        $file = $request->file("photo");
        $newName = uniqid()."_"."movie_photo.".$file->getClientOriginalExtension();
        $request->file("photo")->storeAs($dir,$newName);

        $post = new Post();
        $post->name = $request->name;
        $post->original_name = $request->original_name;
        $post->release_year = $request->release_year;
        $post->category_id = $request->category;
        $post->quality_id = $request->quality;
        $post->director = $request->director;
        $post->actors = $request->actors;
        $post->trailer = $request->trailer;
        $post->description = $request->description;
        $post->photo = $newName;
        $post->slug = Custom::makeSlug($request->title);
        $post->excerpt = Custom::makeExcerpt($request->discripiton);
        $post->user_id = Auth::id();
        $post->save();

        foreach ($request->genre as $g){
            $pg = new PostGenre();
            $pg->post_id = $post->id;
            $pg->genre_id = $g;
            $pg->save();
        }

        return redirect()->route("upload-post-photo",$post->id)->with("toast","New Post Added");




//        return $request;

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}
