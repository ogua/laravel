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

@php

    $name = "hein htet zan";
    $age = 26;
    $arr = ["apple","orange","mango","banana","lemon"];

    $myHtml = "<h1>Hello html</h1>";

@endphp

<h1>My name is {{ $name }} and {{ $age }} years old.</h1>

{!! $myHtml !!}

<script>
    console.log(@json($arr))
</script>

@if($age > 26)

    <p>you are older than me</p>

    @elseif($age == 26)

    <p>we are same</p>

    @else

    <p>You are younger than me</p>

    @endif

    @for($i=1;$i<=10;$i++)
        {{ $i }} Hello <br>
    @endfor

    <ul>
        @foreach($arr as  $key=>$a)
           <li>{{$key+1}} {{ $a }}</li>
        @endforeach
    </ul>


    @isset($ageaa)
        age par tal
        @endisset


<img src="{{ asset('css/laravel.png') }}" alt="">
</body>
</html>
