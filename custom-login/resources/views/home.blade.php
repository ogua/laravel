<h1>this is home</h1>


<form action="{{ route('logout') }}" method="post">
    @csrf
    <button>logout</button>
</form>
