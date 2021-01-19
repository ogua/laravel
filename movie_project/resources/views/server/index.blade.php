@extends('dashboard.app')

@section("title") Test Page @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Server @endslot
    @endcomponent

    <div class="row">

        <div class="col-md-12">

            @component("component.card")
                @slot('title') Server Manager @endslot
                @slot('button')

                @endslot
                @slot('body')

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('server.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-inline">
                            <input type="file" class="form-control p-1 mr-2" name="icon">
                            <input type="text" class="form-control mr-2" name="name" placeholder="Server Name">
                            <input type="text" class="form-control mr-2" name="url" placeholder="Server Url">
                            <button class="btn btn-primary">Add</button>
                        </div>

                    </form>

                        <hr>

                    @include("server.list")

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
