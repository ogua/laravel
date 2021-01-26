@extends('dashboard.app')

@section("title") Test Page @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[




    ]])
        @slot("last") Post List @endslot
    @endcomponent

    <div class="row">

        <div class="col-12">

            @component("component.card")
                @slot('title') Post List @endslot
                @slot('button')

                @endslot
                @slot('body')

                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Category</th>
                            <th>Control</th>
                            <th>Created At</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach($posts as $p)
                                <tr>
                                    <td>{{ $p->id }}</td>
                                    <td>{{ $p->name }}</td>
                                    <td>{{ $p->description }}</td>
                                    <td>{{ $p->category_id }}</td>
                                    <td>
                                        <form action="{{ route('post.destroy',$p->id) }}" method="post">
                                            @csrf
                                            @method("delete")
                                            <button class="btn btn-outline-danger btn-sm">
                                                <i class="feather-trash-2"></i>
                                            </button>
                                        </form>
                                    </td>
                                    <td>{{ $p->created_at }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
