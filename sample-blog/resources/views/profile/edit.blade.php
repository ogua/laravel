@extends('layouts.app')

@section("head")
    <style>
        .article-thumbnail{
            margin-top: 10px;
            width: 150px;
            height: 150px;
            display: inline-block;
            border-radius: 0.25rem;
            background-size: 200%;
        }
    </style>
@endsection

@section('content')
    <div class="container">
        <div class="row ">
            <div class="col-12">

                @component("component.breadcrumb")
                    <li class="breadcrumb-item"><a href="{{ route("home") }}">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Edit Profile</li>
                @endcomponent


            </div>

            <div class="col-12 col-md-4">
                <div class="card">
                    <div class="card-header">Edit Profile</div>

                    <div class="card-body">

                        <img src="{{ asset("storage/profile/".Auth::user()->photo) }}" class="w-100 rounded" alt="">

                        <form action="{{ route("profile.update") }}" method="post" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group" >
                                <label for="photo" class="mt-3">Choose  New Photo</label>
                                <input type="file" name="photo" class="form-control p-1">
                                @error("photo")
                                <small class="font-weight-bold text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <button class="btn btn-primary w-100">
                                Update Profile Photo
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12">

                @foreach(Auth::user()->getPhoto as $img)
                    <div class="article-thumbnail shadow-sm" style="background-image:url('{{ asset("storage/article/".$img->location) }}') "></div>
                @endforeach

            </div>
        </div>
    </div>
@endsection
