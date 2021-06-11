@extends('dashboard.app')

@section("title") Create Episode @endsection

@section("head")
@endsection

@section('content')

    @component("component.breadcrumb",["data"=>[




    ]])
        @slot("last") Add Episode @endslot
    @endcomponent

    <div class="row">

        <div class="col-12">

            @component("component.card")
                @slot('title') Add Episode for <b>{{ $post->name }}</b> @endslot
                @slot('button')

                @endslot
                @slot('body')

                        <form method="post" action="{{ route('episode.store') }}">
                            <div class="form-inline">
                                @csrf
                                <input type="hidden" name="post_id" value="{{ $post->id }}">
                                <input type="number" name="number" class="form-control mr-2" placeholder="Episode Number">
                                <input type="text" name="title" class="form-control mr-2" placeholder="Title">
                                <button class="btn btn-primary">Add Episode</button>
                            </div>
                        </form>

                        <hr>

                        <table class="table mt-3 table-hover table-bordered">
                            <thead>
                            <tr>
                                <th>Episode Number</th>
                                <th>Title</th>
                                <th>Control</th>
                                <th>Created At</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach(\App\Episode::where("post_id",$post->id)->latest()->get() as $e)
                                <tr>
                                    <td>{{ $e->number }}</td>
                                    <td>{{ $e->title }}</td>

                                    <td>
                                        <form action="{{ route('episode.destroy',$e->id) }}" class="d-inline-block" method="post">
                                            @csrf
                                            @method("delete")
                                            <button class="btn btn-outline-danger btn-sm">
                                                <i class="feather-trash-2 fa-fw"></i>
                                            </button>
                                        </form>

                                    </td>
                                    <td>
                                        {{ $e->created_at }}
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                        <a href="{{ route("upload-movie-download-link",$post->id) }}" class="btn btn-primary btn-lg float-right">
                            Next Step
                        </a>

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
@section("foot")

@endsection
