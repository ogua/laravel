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
        @foreach($categories as $category)

            <tr>
                <td>{{ $category->id }}</td>
                <td>{{ $category->title }}</td>
                <td>
                    <a href="{{ route('category.edit',$category->id) }}" class="btn btn-outline-info btn-sm">
                        <i class="feather-edit fa-fw"></i>
                    </a>
                </td>
                <td>{{ $category->created_at }}</td>
            </tr>

        @endforeach
    </tbody>
</table>
