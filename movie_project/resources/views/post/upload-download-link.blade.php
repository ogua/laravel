@extends('dashboard.app')

@section("title") Create Download Link @endsection

@section("head")
@endsection

@section('content')

    @component("component.breadcrumb",["data"=>[




    ]])
        @slot("last") Add Download @endslot
    @endcomponent

    <div class="row">

        <div class="col-12">

            @component("component.card")
                @slot('title') Add Download <b>{{ $post->name }}</b> @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <form method="post" action="{{ route('download.store') }}">
                        <div class="form-inline">
                            @csrf
                            <input type="hidden" name="post_id" value="{{ $post->id }}">
                            <input type="text" name="link" class="form-control mr-2" placeholder="Download Link">
                            <input type="text" name="file_size" class="form-control mr-2" placeholder="File Size">
                            @if($post->category_id == 2)
                                <select name="episode_id" class="form-control custom-select mr-2" id="">
                                    @foreach(\App\Episode::where("post_id",$post->id)->latest()->get() as $e)
                                        <option value="{{ $e->id }}">Episode - {{ $e->number }}</option>
                                    @endforeach
                                </select>
                            @endif
                            <select name="server_id" id="" class="form-control custom-select mr-2">
                                @foreach(\App\Server::latest()->get() as $s)
                                    <option value="{{ $s->id }}">{{ $s->name }}</option>
                                @endforeach
                            </select>
                            <button class="btn btn-primary">Add Download</button>
                        </div>
                    </form>

                    @if($post->category_id == 1)

                        <table class="table mt-3 table-hover table-bordered">
                            <thead>
                            <tr>
                                <th>Link</th>
                                <th>File Size</th>
                                <th>Server</th>
                                <th>Control</th>
                                <th>Created At</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach(\App\Download::where("post_id",$post->id)->latest()->get() as $d)
                                    <tr>
                                        <td>{{ $d->link }}</td>
                                        <td>{{ $d->file_size }}</td>
                                        <td>
                                            <img class="server_icon" src="{{ asset('storage/server_icon/'.$d->server->icon) }}" alt="">
                                            {{ $d->server->name }}
                                        </td>
                                        <td>
                                            <form action="{{ route('download.destroy',$d->id) }}" method="post">
                                                @csrf
                                                @method("delete")
                                                <button class="btn btn-outline-danger btn-sm">
                                                    <i class="feather-trash-2"></i>
                                                </button>
                                            </form>
                                        </td>
                                        <td>
                                            {{ $d->created_at }}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>


                    @else

                            <table class="table mt-3 table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th>Episode Number</th>
                                    <th>Link</th>
                                    <th>File Size</th>
                                    <th>Server</th>
                                    <th>Control</th>
                                    <th>Created At</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach(\App\Download::where("post_id",$post->id)->latest()->get() as $d)
                                    <tr>
                                        <td>{{ $d->episode->number }}</td>
                                        <td>{{ $d->link }}</td>
                                        <td>{{ $d->file_size }}</td>
                                        <td>
                                            <img class="server_icon" src="{{ asset('storage/server_icon/'.$d->server->icon) }}" alt="">
                                            {{ $d->server->name }}
                                        </td>
                                        <td>
                                            <form action="{{ route('download.destroy',$d->id) }}" method="post">
                                                @csrf
                                                @method("delete")
                                                <button class="btn btn-outline-danger btn-sm">
                                                    <i class="feather-trash-2"></i>
                                                </button>
                                            </form>
                                        </td>
                                        <td>
                                            {{ $d->created_at }}
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>

                    @endif

                    <div class="d-flex justify-content-between">
                        <a href="{{ route('upload-post-photo',$post->id) }}" class="btn btn-primary btn-lg">Add Photo</a>
                        <a href="{{ route('post.index') }}" class="btn btn-primary btn-lg">Finish Upload</a>
                    </div>

                    @endslot
            @endcomponent

        </div>

    </div>
@endsection
@section("foot")

@endsection
