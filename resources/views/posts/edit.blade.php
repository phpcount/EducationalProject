@extends('layouts.layout', ['title'=>"Редактировать пост №{$post->post_id}"])

@section('content')
    <form action="{{ route('post.update', ['id'=>$post->post_id]) }}" class="" method="post" enctype="multipart/form-data">
        @method('PATCH')
        <h3>Редактировать пост</h3>
        @include('posts.parts.form')
        <input type="submit" value="Редактировать пост" class="btn btn-outline-success">
    </form>
@endsection
