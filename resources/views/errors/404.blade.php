@extends('layouts.layout', ['title' => 'Ошибка! Страница не найдена'])


@section('content')
    <div class="card">
            <h1 class="card-header card-center">Ошибка 404.</h1>
    </div>
    <a href="{{ route('home') }}" class="btn btn-outline-primary">{{ __('Вернуться на главную страницу') }}</a>
@endsection
