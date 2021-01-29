@extends('dashboard.app')

@section("title") Edit Quality @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Edit Quality @endslot
    @endcomponent

    <div class="row">

        <div class="col-md-6">

            @component("component.card")
                @slot('title') Edit Quality @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <form action="{{ route('quality.update',$quality->id) }}" method="post">
                        @csrf
                        @method("put")
                        <div class="form-inline">
                            <input type="text" class="form-control mr-2" name="title" value="{{ $quality->title }}" placeholder="New Quality">
                            <button class="btn btn-primary">Update</button>
                        </div>

                    </form>
                        @error("title")
                        <small class="text-danger font-weight-bold">{{ $message }}</small>
                        @enderror

                    <hr>

                    @include("quality.list")

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
