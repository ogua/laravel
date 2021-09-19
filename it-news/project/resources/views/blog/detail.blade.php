@extends('blog.master')
@section('content')

    <div class="">
        <div class="py-3">

            <div class="small post-category mb-3">
                <a href="http://localhost:9090/category/apple/" rel="category tag">{{ $article->category->title }}</a>
            </div>

            <h2 class="fw-bolder">{{ $article->title }}</h2>
            <div class="my-3 feature-image-box">
                <div class="d-block d-md-flex justify-content-between align-items-center my-3">

                    <div class="">
                        @if($article->user->photo)
                            <img alt="" src="{{ asset('storage/profile/'.$article->user->photo) }}"
                                 class="avatar avatar-50 photo rounded-circle" height="30" width="30"
                            >
                        @else
                            <img alt="" src="{{ asset('dashboard/img/user-default-photo.png') }}"
                                 class="avatar avatar-30 photo rounded-circle" height="30" width="30"
                            >
                        @endif
                        <a href="#" class="ms-2">
                            {{ $article->user->name }}
                        </a>
                    </div>

                    <div class="text-primary">
                        <i class="feather-calendar"></i>
                        {{ $article->created_at->format("d M Y H:i a") }}
                    </div>
                </div>

                <p class="text-black-50" style="white-space:pre-line">
                    {{ $article->description }}
                </p>


                <div class="nav d-flex justify-content-between p-3">
                    <a href="#" class="btn btn-outline-primary page-mover rounded-circle">
                        <i class="feather-chevron-left"></i>
                    </a>

                    <a class="btn btn-outline-primary px-3 rounded-pill" href="{{ route('index') }}">
                        Read All
                    </a>

                    <a href="#" class="btn btn-outline-primary page-mover rounded-circle">
                        <i class="feather-chevron-right"></i>
                    </a>
                </div>
            </div>


        </div>

        <div class="d-block d-lg-none d-flex justify-content-center">
        </div>

    </div>

@endsection
