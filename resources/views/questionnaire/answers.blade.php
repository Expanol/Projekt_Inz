@extends('layouts.app')

@section('content')

    <div class="container">


    @if($quest !== false && $questionnaire == false)
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Ankieta</th>
                    <th scope="col"> </th>
                </tr>
                </thead>
                <tbody>
        @foreach($quest as $q)
            <tr>
                <th scope="row">{{ $q->id }}</th>
                <td>{{ $q->title }}</td>
                <td>
                    <form action="#" method="POST">
                        @csrf
                @if($isStudent)
                    <input class="form-control" type="password" name="hash" placeholder="haslo do odszyfrowania odpowiedzi" required>
                @endif
                        <input type="hidden" name="question_id" value="{{ $q->id }}">
                        <button type="submit" class="btn btn-block btn-info">POKAŻ</button>
                    </form>
                </td>
            </tr>

        @endforeach
        </tbody>
    </table>
    @endif


        @if($quest == false && $questionnaire !== false)
            <h3>Ankieta: {{ $questionnaire['ans'] }} -
            <b>Funkcja skrótu @if($questionnaire['is_correct']) poprawna @else niepoprawna @endif </b>
            </h3>
        <ul>
            @if(!$questionnaire['is_correct'])
             <b>Była przeprowadzana ingerencja w Twoje odpowiedzi.</b>
            @endif

            @if($questionnaire['data'] && $questionnaire['is_correct'] )
            @foreach($questionnaire['data'] as $q)
                <li>{{ $q['question'] }}
                    <ul>
                        <li>{{ $q['answer'] }}</li>
                    </ul>
                </li>
            @endforeach
            @endif
        </ul>
        @endif

    </div>
@endsection
