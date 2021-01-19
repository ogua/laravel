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
        @foreach($qualities as $quality)

            <tr>
                <td>{{ $quality->id }}</td>
                <td>{{ $quality->title }}</td>
                <td>
                    <a href="{{ route('quality.edit',$quality->id) }}" class="btn btn-outline-info btn-sm">
                        <i class="feather-edit fa-fw"></i>
                    </a>
                </td>
                <td>{{ $quality->created_at }}</td>
            </tr>

        @endforeach
    </tbody>
</table>
