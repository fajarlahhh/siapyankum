@extends('frontend.layouts.default', ['paceTop' => true, 'bodyExtraClass' => 'bg-white'])

@section('title', ' | Peraturan')

@php
$warna = ['grey', 'purple', 'indigo', 'primary', 'info', 'yellow', 'warning', 'pink', 'danger', 'success', 'green', 'lime'];
@endphp

@section('content')
  <h4 class="text-center text-light">Peraturan</h4>
  <div class="row">
    @foreach ($data as $row)
      <a href="/frontend/peraturan/{{ $row->peraturan_jenis_id }}"
        class="col-12 col-sm-12 col-xs-12 col-md-12 col-lg-12 col-xl-12 text-center btn btn-success btn-lg mb-2"
        style="line-height: 50px;">
        <h4 class="text-light">{{ ucfirst($row->peraturan_jenis_nama) }}</h4>
      </a>
    @endforeach
  </div>
  <br>
  <div class="text-center">
    <a href="/frontend/" class="text-center btn btn-inverse">Kembali</a>
  </div>
@endsection
