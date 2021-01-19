@extends('dashboard.app')

@section("title") Test Page @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Genre @endslot
    @endcomponent

    <div class="row">

        <div class="col-md-6">

            @component("component.card")
                @slot('title') Genre Manager @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <form action="{{ route('genre.store') }}" method="post">
                        @csrf
                        <div class="form-inline">
                            <input type="text" class="form-control mr-2" name="title" placeholder="New Genre">
                            <button class="btn btn-primary">Add</button>
                        </div>

                    </form>

                        <hr>

                    @include("genre.list")

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
