@extends('layouts.main')

@section('content')


    <div class="container margin-header">


<div class="good">
    <center><p>Спасибо что вы записались на мероприятие.На ваш Email выслано письмо.</p> </center>
</div>
        <div class="bad">
            <center><>Не удача!<br/>Повторите еще раз.</p> </center>
        </div>
        <form>
            <ul class="form-style-1">
                <li><label>ФИО <span   class="required">*</span></label><input type="text" name="name"  id="name" class="field-divided"  placeholder="Имя" /> <input type="text" name="sname" id="sname" class="field-divided" placeholder="Фамилия" /></li>
                <li>
                    <label>Email <span class="required">*</span></label>
                    <input type="email" name="email" id="email" class="field-long" />
                </li>
                <li>
                    <label>Телефон <span class="required">*</span></label>
                    <input type="text" name="phone" id="phone" class="field-long" />
                </li>
                <li>
                    <label>Образование</label>
                    <select name="educ" id="educ" class="field-select">
                        <option value="Bachelor">Bachelor</option>
                        <option value="Master">Master</option>
                        <option value="PhD">PhD</option>
                    </select>
                </li>
                <input type="hidden" name="id" id="id" value="{{$id}}">
                <input type="hidden" name="utm" id="utm" value="<?php echo isset($_SERVER['QUERY_STRING']) ? $_SERVER['QUERY_STRING'] : 'test' ;?>">
                <li>

                    <a style="color: white" class="btn btn-primary" id="send">Применить параметры</a>
                </li>

            </ul>
        </form>
    </div>
  <center>   <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLx0sYbCqOb8TBPRdmBHs5Iftvv9TPboYG" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </center>
@endsection
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
function  send() {


    var name = $("#name").val();
    var sname = $("#sname").val();
    var email = $("#email").val();
    var educ = $("#educ").val();
    var phone = $("#phone").val();
var utm=$("#utm").val();

var  id=$('#id').val();
    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        type: 'POST',
        url: '{{route('event')}}',
        data: {name: name, sname: sname, email: email, educ: educ, phone: phone,id:id,utm:'test'},

        success: function (response) {
            $(".good").css({"display":"block"})

        },
        error: function() {
          alert('badddd')
        },
    })


}


</script>


    <script type="text/javascript">
        $(document).ready(function() {

            $('#send').click(function(){

                send();




            });


        });
    </script>