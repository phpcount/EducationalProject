<div class="form-group">
    <label for="title">Заголовок</label>
    <input type="text" class="form-control" name="title" value="{{ old('title') ?? $post->title ?? null }}" required>
</div>
<div class="form-group">
    <label for="title">Текст статьи</label>
    <textarea rows="10" class="form-control" name="description" required>{{ old('description') ?? $post->description ?? null }}</textarea>
</div>
<div class="form-group">
    <p>Выберите изображение для загрузки</p>
    <input type="file" name="img">
</div>
{{ csrf_field() }}
