@extends('dashboard.app')

@section("title") Test Page @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Quality @endslot
    @endcomponent

    <div class="row">

        <div class="col-md-6">

            @component("component.card")
                @slot('title') Quality Manager @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <form action="{{ route('quality.store') }}" method="post">
                        @csrf
                        <div class="form-inline">
                            <input type="text" class="form-control mr-2" name="title" placeholder="New Quality">
                            <button class="btn btn-primary">Add</button>
                        </div>

                    </form>

                        <hr>

                    @include("quality.list")

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
