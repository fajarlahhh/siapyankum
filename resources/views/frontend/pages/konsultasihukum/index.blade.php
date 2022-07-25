@extends('frontend.layouts.default', ['paceTop' => true, 'bodyExtraClass' => 'bg-white'])

@section('title', ' | Konsultasi Hukum')

@php
$warna = ['grey', 'purple', 'indigo', 'primary', 'info', 'yellow', 'warning', 'pink', 'danger', 'success', 'green', 'lime'];
@endphp

@section('content')
  <h4 class="text-center text-light">Konsultasi Hukum</h4>
  <br>

  <div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <div class="panel-body">
      <table>
        <tr>
          <th><img src="/assets/img/logo/mail.png" height="50   "></th>
          <th> : </th>
          <th class="f-s-20"><a href="mailto:bidkum.ntb@polri.go.id">bidkum.ntb@polri.go.id</a></th>
        </tr>
        <tr>
          <th><img src="/assets/img/logo/whatsapp.png" height="60"></th>
          <th> : </th>
          <th class="f-s-20"><a href="https://wa.me/081999963939" class=" text-success">081999963939</a></th>
        </tr>
      </table>
    </div>
  </div>
  <div class="text-center">
    <a href="/frontend/" class="text-center btn btn-inverse">Kembali</a>
  </div>
@endsection

@push('scripts')
  <script>
    $("#basic-addon2").click(function() {
      $("#frm-cari").submit();
    });
  </script>
@endpush
