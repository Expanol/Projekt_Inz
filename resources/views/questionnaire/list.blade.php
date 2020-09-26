@extends('layouts.app')

@section('content')


    <div class="container">
    @if(empty($questions))
        <h3>Brak dostępnych ankiet do do uzupełnienia</h3>
    @else



    @foreach ($questions as $questionsSet)
                <form action="save" method="post">
                    @csrf

                    <h3>{{ $questionsSet['title'] }}</h3>

        <form action="{{route('questionnaire.save')}}" method="POST">

            <input type="hidden" name="questionnaire" value="{{$questionsSet['id']}}">
        @foreach($questionsSet['questions'] as $q)

            <h5>{{ $q->question }}</h5>

            @if($q->type == 'radio')


                @foreach($q->answers as $ans)

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="answer[][{{$q->question}}]" id="inlineRadio{{$ans}}" value="{{$ans}}" required>
                    <label class="form-check-label" for="inlineRadio{{$ans}}">{{$ans}}</label>
                </div>

                @endforeach
            @endif

            @if($q->type == 'textarea')

                    <div class="form-group">
                        <textarea name="answer[][{{$q->question}}]" class="form-control"  rows="3" required></textarea>
                    </div>
            @endif


        @endforeach
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="">Klucz szyfrujący odpowiedzi</span>
                </div>
                <input type="password" name="hash_key" class="form-control" required>
                <button type="submit" class="btn btn-primary">Zapisz odpowiedzi</button>

            </div>
        </form>
    @endforeach


    @endif
    </div>
@endsection
