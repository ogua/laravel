@extends('dashboard.app')

@section("title") Test Page @endsection

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
                    <a href="" class="btn btn-sm btn-outline-danger ">
                        <i class="fas fa-trash fa-fw"></i>
                    </a>
                @endslot
                @slot('body')

{{--                    {{ $post }}--}}

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

                        <button class="btn btn-primary btn-lg float-right">Upload Now</button>

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
