<div class="row">
    @foreach($posts as $post)
        <div class="col-6">
            <div class="card">
                <div class="card-header"><h2>{{ $post->short_title }}</h2></div>
                <div class="card-body">
                    <div class="card-image" style="background-image: url({{  $post->img ?? asset('img/default.jpg') }})"></div>
                    <div class="card-author">Автор: <b>{{ $post->name }}</b></div>
                    <a href="{{ route('post.show', ['id' => $post->post_id])}}" class="btn btn-outline-primary">Посмотреть пост</a>
                </div>
            </div>
        </div>
    @endforeach
</div>
