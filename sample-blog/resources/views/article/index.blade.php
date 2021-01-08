@extends('layouts.app')

@section("head")
    <style>
        .article-thumbnail{
            margin-top: 10px;
            width: 50px;
            height: 50px;
            display: inline-block;
            border-radius: 0.25rem;
            background-size: 200%;
        }
    </style>
@endsection
@section('content')

    {{ dd($articles->getQueryLog()) }}
    <div class="container">
        <div class="row ">
            <div class="col-12">

                @component("component.breadcrumb")
                    <li class="breadcrumb-item"><a href="{{ route("home") }}">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Article</li>
                @endcomponent

                <div class="card">
                    <div class="card-header">Article List</div>

                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="">
                                {{ $articles->links() }}
                            </div>
                            <div class="">
                                <form action="{{ route('article.search') }}" method="post">
                                    @csrf
                                    <div class="form-inline mb-3">
                                        <input type="text" class="form-control mr-2" name="search">
                                        <button class="btn btn-primary">Search</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        @if(session('status'))
                            <p class="alert alert-danger">
                                {!! session('status') !!}
                            </p>
                        @endif

                        @if(session('updateStatus'))
                            <p class="alert alert-success">
                                {!! session('updateStatus') !!}
                            </p>
                        @endif
                        <table class="table table-bordered table-responsive">

                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Owner</th>
                                <th>Control</th>
                                <th class="text-nowrap">Created At</th>
                            </tr>
                            </thead>
                            <tbody>


                            @foreach($articles as $article)
                                <tr>
                                    <td>{{ $article->id }}</td>
                                    <td>{{ substr($article->title,0,50) }} .....</td>
                                    <td>
                                        {{ substr($article->description,0,80) }} .....
                                        <br>
                                        @foreach($article->getPhotos as $img)
                                            <div class="article-thumbnail shadow-sm" style="background-image:url('{{ asset("storage/article/".$img->location) }}') "></div>
                                        @endforeach
                                    </td>
                                    <td class="text-nowrap">
                                       @isset($article->getUser)
                                           {{ $article->getUser->name }}
                                           @else
                                           Unknow
                                        @endisset
                                    </td>
                                    <td class="text-nowrap">
                                        <a href="{{ route("article.show",$article->id) }}" class="btn btn-primary">
                                            Detail
                                        </a>
                                        <a href="{{ route("article.edit",$article->id) }}" class="btn btn-secondary">
                                            Edit
                                        </a>
                                        <form action="{{ route("article.destroy",$article->id) }}" class="d-inline-block" method="post">
                                            @csrf
                                            @method("delete")
                                            <button type="submit"  class="btn btn-danger">Delete</button>

                                        </form>
                                    </td>
                                    <td class="text-nowrap">
                                        <small>
                                            {{ $article->created_at->format("d M Y") }}
                                            <br>
                                            {{ $article->created_at->format("h:i a") }}
                                        </small>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
