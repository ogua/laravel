<table class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>#</th>
        <th>Category Title</th>
        <th>Control</th>
        <th>Created At</th>
    </tr>
    </thead>
    <tbody>
        @foreach($genres as $genre)

            <tr>
                <td>{{ $genre->id }}</td>
                <td>{{ $genre->title }}</td>
                <td>
                    <a href="{{ route('genre.edit',$genre->id) }}" class="btn btn-outline-info btn-sm">
                        <i class="feather-edit fa-fw"></i>
                    </a>
                </td>
                <td>{{ $genre->created_at }}</td>
            </tr>

        @endforeach
    </tbody>
</table>
