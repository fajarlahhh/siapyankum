@extends('frontend.layouts.default', ['paceTop' => true, 'bodyExtraClass' => 'bg-white'])

@section('title', ' | Bantuan Hukum')

@php
$warna = ['grey', 'purple', 'indigo', 'primary', 'info', 'yellow', 'warning', 'pink', 'danger', 'success', 'green', 'lime'];
@endphp

@section('content')
  <h4 class="text-center text-light">
    <small class=" text-light">Bantuan Hukum</small><br>{{ $jenis_ }}
  </h4>
  <br>
  <div class="note note-warning m-b-15" style="padding: 0px !important">
    <table class="table">
      <tbody>
        <tr>
          <th width="105">No. Laporan</th>
          <td width="5">:</td>
          <td>{{ $data->bantuan_hukum_laporan_nomor }}</td>
        </tr>
        <tr>
          <th>Tanggal</th>
          <td>:</td>
          <td>{{ \Carbon\Carbon::parse($data->bantuan_hukum_tanggal)->isoFormat('LL') }}</td>
        </tr>
        <tr>
          <th>Judul</th>
          <td>:</td>
          <td>{{ $data->bantuan_hukum_judul }}</td>
        </tr>
        <tr>
          <th>Deskripsi</th>
          <td>:</td>
          <td>{{ $data->bantuan_hukum_keterangan }}</td>
        </tr>
        <tr>
          <th>File</th>
          <td>:</td>
          <td>
            @if (auth()->check())
              @if ($data->bantuan_hukum_file)
                <a href="{{ url($data->bantuan_hukum_file) }}" target="_blank" class="btn btn-xs btn-success">Download
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
  <div class="note note-warning m-b-15">
    <h5>Status : {{ $data->proses->last()->bantuan_hukum_proses_status }}</h5>
    <label>{{ $data->proses->last()->bantuan_hukum_proses_deskripsi }}</label>
  </div>
  <div class="text-center">
    <a href="/frontend/bantuanhukum/{{ $jenis }}" class="text-center btn btn-inverse">Kembali</a>
  </div>
@endsection
