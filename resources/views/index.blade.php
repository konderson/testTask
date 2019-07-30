@extends('layouts.main')

@section('content')

<div class="container margin-header">

    <div class="row">

        <div class="col-md-6">
            <p>{{$content->text}}</p>
        </div>
        <div class="col-md-6">

            <div class="gallery">
                <a href="https://c1.staticflickr.com/9/8148/29324593462_abebaddc38_k.jpg" data-fancybox="images">
                    <img src="https://c1.staticflickr.com/9/8148/29324593462_f890687b7a_m.jpg" />
                </a>

            </div>
        </div>
    </div>

</div>

    @endsection

<!-- Add fancyBox -->

<script type="text/javascript">
    $(document).ready(function() {
        $(".fancybox").fancybox();
    });
</script>