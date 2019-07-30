@extends('layouts.main')

@section('content')

<div class="margin-header">
    <center> <h3>Заявки на участие</h3>
    <table>
        <th>Имя </th>
        <th>Фамилия</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Образование</th>

       @if(\App\Role::isSuperAdmin())
        <th>UTM</th>
        <th>Ip</th>
        <th>Действие</th>
@endif
        @foreach($entrys as $entry)
        <tr>
            <td>
                {{$entry->name}}
            </td>

            <td>
                {{$entry->sname}}
            </td>
            <td>
                {{$entry->email}}
            </td>
            <td>
                {{$entry->phone}}
            </td>
            <td>
                {{$entry->education}}
            </td>
            @if(\App\Role::isSuperAdmin())
            <td>
                {{$entry->utm}}
            </td>
            <td>
                    {{$entry->ip}}
                </td>
                <td class="denger">
                    <a href="/delete/{{$entry->id}}">Удалить</a>
                </td>
@endif



        </tr>
            @endforeach
    </table>
    </center>

</div>

    @endsection