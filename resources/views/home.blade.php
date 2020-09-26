@extends('layouts.app')

@section('content')
<div class="container">
    <div class="list-group">
        @if($isStudent)
        <a href="{{ route('questionnaire.list') }}" class="list-group-item list-group-item-action">Dostępne ankiety do wypełnienia</a>
        <a href="{{ route('questionnaire.answers') }}" class="list-group-item list-group-item-action">Wypełnione ankiety</a>
        @else
        <a href="{{ route('questionnaire.answers') }}" class="list-group-item list-group-item-action">Ankiety</a>
        @endif
    </div>
</div>
@endsection
