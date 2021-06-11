<?php

namespace App\Http\Controllers;

use App\Photo;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PhotoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id)
    {
        $post = Post::find($id);
        return view("post.upload-photo",compact('post'));
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
           "post_id" => "required",
           "images" => "required",
           "images.*" => "mimes:jpeg,png,jpg|max:1024"
        ]);

        foreach ($request->file("images") as $img){
            $dir="public/photo";
            $newName = uniqid()."_"."photo.".$img->getClientOriginalExtension();
            $img->storeAs($dir,$newName);

            $photo = new Photo();
            $photo->post_id = $request->post_id;
            $photo->location = $newName;
            $photo->save();
        }

        $post = Post::find($request->post_id);

//        return $post->category_id;

        if($post->category_id == 1){
            return redirect()->route("upload-movie-download-link",$post->id)->with("toast","post photo added");

        }else{
            return redirect()->route("create-episode",$post->id)->with("toast","post photo added");

        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function show(Photo $photo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function edit(Photo $photo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Photo $photo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Photo $photo)
    {
        Storage::delete("public/photo/".$photo->location);
        $photo->delete();

        return redirect()->back();
    }
}
