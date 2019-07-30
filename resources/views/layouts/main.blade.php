@yield('content')

        <!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Заявка на мероприятие!</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="{{asset('css/3-col-portfolio.css')}}"/>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{asset('/css/main.css')}}"/>
    <link rel="stylesheet" href="{{asset('css/jquery.fancybox.css')}}"/>
    <script src="{{asset('js/jquery.fancybox.min.js')}}"></script>

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collpase" data-target="#navbar-collapse" >
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
            </button>
            <a href="/" class="navbar-brand">Resopnse.KG</a>
        </div><!-- Navbar header -->

        <div class='collapse navbar-collapse' id="navbar-collapse">
            @if(!\Illuminate\Support\Facades\Auth::check())

                <a  href="login" class="btn btn-info navbar-btn navbar-right">Войти</a>
            @else


                <form style="margin: 0;padding: 0;" id="logout-form" action="{{ route('logout') }}" method="POST">
                    {{ csrf_field() }}

                    <input type="submit"  class="btn btn-info navbar-btn navbar-right"  value="Выход">


                </form>
                <a href="/office"><p style="color: #98cbe8;margin-top:15px; margin-right:18px;padding: 0;" class="navbar-right">{{\Illuminate\Support\Facades\Auth::user()->name}}</p></a>

            @endif

            <ul class="nav navbar-nav">
                <li ><a href="/">Главная</a></li>
                <li ><a href="/event/a">Мероприятие A</a></li>
                <li ><a href="/event/b">Мероприятие B</a></li>

            </ul>

        </div>
    </div><!--end Container -->
</nav> <!--end navbar -->

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>

</body>

</html>