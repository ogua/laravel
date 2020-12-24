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

<div class="m-5">
    {!! DNS1D::getBarcodeSVG('4445645656', 'C128',4,40) !!}
    <br>
    <br>
    <br>
    {!! DNS2D::getBarcodeHTML('https://www.google.com/', 'QRCODE')  !!}
    <br>
    <br>
    @php
        echo '<img src="data:image/png,' . DNS1D::getBarcodePNG('4', 'C39+') . '" alt="barcode"   />';
    @endphp
</div>
</body>
</html>
