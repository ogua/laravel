<?php

namespace App\Http\Controllers;

use App\Server;
use Illuminate\Http\Request;

class ServerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $servers = Server::latest()->get();
        return view("server.index",compact('servers'));
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
        $request->validate([
            "name" => "required|unique:servers,name",
            "url" => "required|unique:servers,url",
            "icon" => "required|mimes:jpeg,png"
        ]);

        $dir="public/server_icon";
        $file = $request->file("icon");
        $newName = uniqid()."_"."icon.".$file->getClientOriginalExtension();
        $request->file("icon")->storeAs($dir,$newName);

        $server = new Server();
        $server->name = $request->name;
        $server->url = $request->url;
        $server->icon = $newName;
        $server->save();

        return redirect()->route("server.index")->with("toast","New Server Added");

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Server  $server
     * @return \Illuminate\Http\Response
     */
    public function show(Server $server)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Server  $server
     * @return \Illuminate\Http\Response
     */
    public function edit(Server $server)
    {
        $servers = Server::latest()->get();
        return view("server.edit",compact('servers','server'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Server  $server
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Server $server)
    {
        $request->validate([
            "name" => "required|unique:servers,name,".$server->id,
            "url" => "required|unique:servers,url,".$server->id,
            "icon" => "sometimes|mimes:jpeg,png"
        ]);

        if($request->hasFile('icon')){
            $dir="public/server_icon";
            $file = $request->file("icon");
            $newName = uniqid()."_"."icon.".$file->getClientOriginalExtension();
            $request->file("icon")->storeAs($dir,$newName);
        }


        $server->name = $request->name;
        $server->url = $request->url;
        if($request->hasFile('icon')){
            $server->icon = $newName;
        }
        $server->update();

        return redirect()->route("server.index")->with("toast","Server info Updated");

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Server  $server
     * @return \Illuminate\Http\Response
     */
    public function destroy(Server $server)
    {
        //
    }
}
