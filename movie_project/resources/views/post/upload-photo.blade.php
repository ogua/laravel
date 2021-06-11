@extends('dashboard.app')

@section("title") Upload Photo @endsection

@section("head")
    <link rel="stylesheet" href="{{ asset('dashboard/vendor/jquery-image-uploader-preview-and-delete/dist/image-uploader.min.css') }}">
@endsection

@section('content')

    @component("component.breadcrumb",["data"=>[




    ]])
        @slot("last") Test @endslot
    @endcomponent

    <div class="row">

        <div class="col-12">

            @component("component.card")
                @slot('title') Upload Photo for <b>{{ $post->name }}</b> @endslot
                @slot('button')

                @endslot
                @slot('body')
                        <p>Uploaded Photo [{{ $post->moviePhoto->count() }}]</p>


                        <div class="mb-3 d-flex" style="width:100%;overflow: scroll;">

                        @forelse($post->moviePhoto as $mp)

                        <div class="position-relative d-inline-block mr-2" >

                            <img src="{{ asset('storage/photo/'.$mp->location) }}" class="rounded" style="height: 150px" alt="">
                            <form action="{{ route('photo.destroy',$mp->id) }}" method="post" class="position-absolute" style="bottom: 5px;right: 5px;z-index: 1">
                                @csrf
                                @method("delete")
                                <button class="btn btn-danger btn-sm">
                                    <i class="feather-trash-2"></i>
                                </button>
                            </form>

                        </div>

                        @empty
                            <p>Not Upload Yet</p>
                        @endforelse
                    </div>

                    <form action="{{ route("photo.store") }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="post_id" value="{{ $post->id }}">
                        <div class="form-group">
                            <div class="input-images mb-3"></div>
                            @error("images")
                            <small class="text-danger font-weight-bold">{{ $message }}</small>
                            @enderror
                            @error("images.*")
                            <small class="text-danger font-weight-bold">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="{{ route('post.edit',$post->id) }}" class="btn btn-primary btn-lg ">Back to Post</a>
                            <button class="btn btn-primary btn-lg">Upload And Next</button>
                        </div>

                    </form>



                @endslot
            @endcomponent

        </div>

    </div>
@endsection
@section("foot")
    <script  src="{{ asset('dashboard/vendor/jquery-image-uploader-preview-and-delete/dist/image-uploader.min.js') }}"></script>
    <script>
        $('.input-images').imageUploader();
    </script>
@endsection
