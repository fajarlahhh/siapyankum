@extends('frontend.layouts.default', ['paceTop' => true, 'bodyExtraClass' => 'bg-white'])

@section('title', ' | Pendapat & Saran Hukum')

@php
$warna = ['secondary ', 'purple', 'indigo', 'primary', 'info', 'yellow', 'warning', 'pink', 'danger', 'success', 'green', 'lime'];
@endphp

@section('content')
  <h4 class="text-center text-light">Pendapat & Saran Hukum</h4>
  <br>
  <div class="note note-primary m-b-15" style="padding: 0px !important;background: #8af5ff; border-color: #8af5ff; ">
    <table class="table">
      <tbody>
        <tr>
          <th width="105">No. Laporan</th>
          <td width="5">:</td>
          <td>{{ $data->pendapat_saran_laporan_nomor }}</td>
        </tr>
        <tr>
          <th>Tanggal</th>
          <td>:</td>
          <td>{{ \Carbon\Carbon::parse($data->pendapat_saran_tanggal)->isoFormat('LL') }}</td>
        </tr>
        <tr>
          <th>Judul</th>
          <td>:</td>
          <td>{{ $data->pendapat_saran_judul }}</td>
        </tr>
        <tr>
          <th>Deskripsi</th>
          <td>:</td>
          <td>{{ $data->pendapat_saran_keterangan }}</td>
        </tr>
        <tr>
          <th>File</th>
          <td>:</td>
          <td>
            @if (auth()->check())
              @if ($data->pendapat_saran_file)
                <a href="{{ url($data->pendapat_saran_file) }}" target="_blank" class="btn btn-xs btn-success">Download
                  File</a>
              @endif
            @else
              <a href="/login" class="btn btn-xs btn-success">Login to Download
                File</a>
            @endif
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="note note-{{ $warna[rand(0, 11)] }} m-b-15">
    <h5>Status : {{ $data->proses->last()->pendapat_saran_proses_status }}</h5>
    <label>{{ $data->proses->last()->pendapat_saran_proses_deskripsi }}</label>
  </div>
  <br>
  <div class="text-center">
    <a href="/frontend/pendapatsaran" class="text-center btn btn-inverse">Kembali</a>
  </div>
@endsection
