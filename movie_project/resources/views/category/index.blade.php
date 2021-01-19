@extends('dashboard.app')

@section("title") Test Page @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Category @endslot
    @endcomponent

    <div class="row">

        <div class="col-md-6">

            @component("component.card")
                @slot('title') Category Manager @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <form action="{{ route('category.store') }}" method="post">
                        @csrf
                        <div class="form-inline">
                            <input type="text" class="form-control mr-2" name="title" placeholder="New Category">
                            <button class="btn btn-primary">Add</button>
                        </div>

                    </form>

                        <hr>

                    @include("category.list")

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
