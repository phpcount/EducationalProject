@extends('layouts.layout', ['title'=>"Пост №{$post->post_id}. {$post->title}"])

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
              <div class="card-header"><h2>{{ $post->title }}</h2></div>
              <div class="card-body">
                <div class="card-image card-img__max" style="background-image: url({{  $post->img ?? asset('img/default.jpg') }})"></div>

                <div class="card-date">Пост создан: <b>{{ $post->created_at->diffForHumans() }}</b>
                    <span style="text-align: right; float: right;"  class="card-author">Автор: <b>{{ $post->name }}</b></span>
                </div>
                  <hr>
                  <div class="card-description"><p class="text-block">{{ $post->description }}</p></div>
                  <div class="card-btn">
                      <a href="{{ route('home') }}" class="btn btn-outline-primary">На главную</a>
                      @auth
                          @if(Auth::user()->id == $post->author_id)
                      <a href="{{ route('post.edit', ['id'=>$post->post_id]) }}" class="btn btn-outline-success">Редактировать</a>
                      <form action="{{ route('post.destroy', ['id'=>$post->post_id]) }}" method="post" onsubmit="if(confirm('Удалить пост?')){ return true; } else { return false; }">
                          @csrf
                          @method('DELETE')
                          <input type="submit" class="btn btn-outline-danger" value="Удалить">
                      </form>
                          @endif
                      @endauth
                  </div>

              </div>
          </div>
        </div>
    </div>
@endsection
