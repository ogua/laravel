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
                            <th>Img</th>
                            <th>Information</th>
                            <th class="w-25">Excerpt</th>
                            <th>Quality & Genre</th>
                            <th>Control</th>
                            <th>Created At</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach($posts as $p)
                                <tr>
                                    <td>{{ $p->id }}</td>
                                    <td>
                                        <img src="{{ asset('storage/movie_photo/'.$p->photo) }}" style="height: 50px" class="rounded shadow-sm" alt="">
                                    </td>
                                    <td>
                                        {{ $p->name }}
                                        <br>
                                        <i class="feather-layers"></i>
                                        <small class="text-black-50 mr-2">{{ $p->category->title }}</small>
                                        @if($p->user->photo)
                                        <img src="{{ asset('storage/profile/'.$p->user->photo) }}" class="rounded-circle" style="width: 20px" alt="">
                                        @else
                                            <img src="{{ asset('dashboard/images/profile_default.png') }}" class="rounded-circle" style="width: 20px" alt="">
                                        @endif
                                        <small class="text-black-50">{{ $p->user->name }}</small>
                                    </td>
                                    <td>
                                        <small>{{ $p->excerpt }}</small>
                                    </td>
                                    <td>
                                        <i class="feather-target"></i>
                                        <small>{{ $p->quality->title }}</small>
                                        <br>
                                        <div>
                                            @foreach($p->genre as $g)
                                                <span class="badge badge-primary">{{ $g->title }}</span>
                                            @endforeach
                                        </div>
                                    </td>
                                    <td>
                                        <a href="{{ route('post.edit',$p->id) }}" class="btn btn-outline-secondary btn-sm">
                                            <i class="feather-edit"></i>
                                        </a>
                                        <form action="{{ route('post.destroy',$p->id) }}" class="d-inline-block" method="post">
                                            @csrf
                                            @method("delete")
                                            <button class="btn btn-outline-danger btn-sm">
                                                <i class="feather-trash-2"></i>
                                            </button>
                                        </form>
                                    </td>
                                    <td>
                                        <i class="feather-calendar"></i>
                                        <small class="text-black-50">{{ $p->created_at->format("d M Y") }}</small>
                                        <br>
                                        <i class="feather-clock"></i>
                                        <small class="text-black-50">{{ $p->created_at->format("h : i") }}</small>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    {{ $posts->links() }}

                @endslot
            @endcomponent

        </div>

    </div>
@endsection
