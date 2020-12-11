<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-12 col-md-6">
                <div class="card my-5">
                    <div class="card-body">
                        <h3>Add New Item</h3>
                        <hr>
                        @if(session('status'))
                            <p class="alert alert-success">{!! session('status') !!}</p>
                            @endif

                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li class="mb-0">{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <form action="{{ route('form.store') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="" class="@error('name') text-danger @enderror">Item Name</label>
                                <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}">
                                @error('name')
                                <small class="text-danger font-weight-bold">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="form-row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="">Price ( MMK )</label>
                                        <input type="number" name="price" class="form-control @error('price') is-invalid @enderror" value="{{ old('price') }}">
                                        @error('price')
                                        <small class="text-danger font-weight-bold">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="">Stock ( piece )</label>
                                        <input type="number" name="stock" class="form-control @error('stock') is-invalid @enderror" value="{{ old('stock') }}">
                                        @error('stock')
                                        <small class="text-danger font-weight-bold">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <button class="btn btn-primary">Save Item</button>
                        </form>
                    </div>
                </div>
            </div>
            @auth
                <div class="col-12 col-md-6">
                    <div class="card my-5">
                        <div class="card-body">
                            {{ Auth::user() }}
                            <br><br>
                            <form action="{{ route('logout') }}" method="post">
                                @csrf
                                <button class="btn btn-outline-primary">Log Out</button>
                            </form>
                        </div>
                    </div>
                </div>
            @endauth
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        @include("request-response.list")
                    </div>
                </div>

            </div>
        </div>
    </div>

</body>
</html>
