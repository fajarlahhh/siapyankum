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
            @if ($data->bantuan_hukum_file)
              <a href="javascript:;" data-toggle="modal" onclick="kode({{ $data->bantuan_hukum_id }})"
                data-target="#downloadModal" class="btn btn-xs btn-success">Download
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
  <div class="modal fade" id="downloadModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="/frontend/pendapatsaran/download" method="POST">
          <div class="modal-body">
            <div class="form-group">
              @csrf
              <label class="control-label">Kode</label>
              <input type="hidden" name="id" id="kode">
              <input type="password" name="kode" class="form-control" id="password" required>
            </div>
          </div>
          <div class="modal-footer">
            <input type="submit" class="btn btn-primary" value="Download">
          </div>
        </form>
      </div>
    </div>
  </div>
@endsection
@push('scripts')
  <script>
    function kode(id) {
      $('#kode').val(id);
    }

    function ulangi() {
      $('#password').val();
    }
  </script>
@endpush
