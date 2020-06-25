@extends('layouts.layout', ['title'=>"Главная страница"])

@section('content')
    @php
        $count_posts = count($posts);
    @endphp
    @if(isset($_GET['search']))
        <div class="container text-center center-block mt-5">
            <div class="row">
                <div class="col" >
                    @if($count_posts>0 and !empty($_GET['search']))

                        <h4>Результаты поиска по запросу "{{ $_GET['search'] }}"</h4>
                        <p class="lead">Всего найдено {{ $count_posts }} пост@if($count_posts>1 and $count_posts<5){{ "а" }}@elseif($count_posts>1){{ "ов" }}@endif</p>
                    @else
                                <!-- analog <?=htmlspecialchars($_GET['search'], ENT_QUOTES)?> -->
                        <h4>По запросу "{{ $_GET['search'] }}" ничего не найдено...</h4>
                        <a href="{{ route('post.index') }}" class="nav-link">Отобразить все посты</a>
                        <?php $count_posts = 0; ?>
                    @endif
                </div>
            </div>
        </div>
    @endif


@includeWhen($count_posts>0, 'posts.parts.card')

    @if(!isset($_GET['search']))
        {{ $posts->links() }}
    @endif
@endsection
