@extends('dashboard.app')

@section("title") Test Page @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Edit Category @endslot
    @endcomponent

    <div class="row">

        <div class="col-md-6">

            @component("component.card")
                @slot('title') Edit Category @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <form action="{{ route('category.update',$category->id) }}" method="post">
                        @csrf
                        @method("put")
                        <div class="form-inline">
                            <input type="text" class="form-control mr-2" name="title" value="{{ $category->title }}" placeholder="New Category">
                            <button class="btn btn-primary">Update</button>
                        </div>

                    </form>

                    <hr>

                    @include("category.list")

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
