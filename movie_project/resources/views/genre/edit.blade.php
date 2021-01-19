@extends('dashboard.app')

@section("title") Test Page @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Edit Genre @endslot
    @endcomponent

    <div class="row">

        <div class="col-md-6">

            @component("component.card")
                @slot('title') Edit Genre @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <form action="{{ route('genre.update',$genre->id) }}" method="post">
                        @csrf
                        @method("put")
                        <div class="form-inline">
                            <input type="text" class="form-control mr-2" name="title" value="{{ $genre->title }}" placeholder="New Genre">
                            <button class="btn btn-primary">Update</button>
                        </div>

                    </form>

                    <hr>

                    @include("genre.list")

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
