@extends('pages.bantuanhukum.main')

@section('title', ' | ' . $aksi . 'Penelitian Catatan Hukum')

@push('css')
  <link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
  <link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
  <link href="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" />
@endpush

@section('page')
  <li class="breadcrumb-item active">{{ $aksi }} Data</li>
@endsection

@section('header')
  <h1 class="page-header">Penelitian Catatan Hukum <small>{{ $aksi }} Data</small></h1>
@endsection

@section('subcontent')
  <div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
      <div class="panel-heading-btn">
        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i
            class="fa fa-expand"></i></a>
      </div>
      <h4 class="panel-title">Form</h4>
    </div>
    <form action="{{ route('penelitiancatatanhukum.' . strtolower($aksi)) }}" method="post"
      data-parsley-validate="true" data-parsley-errors-messages-disabled="">
      @method(strtolower($aksi) == 'tambah' ? 'POST' : 'PUT')
      @csrf
      <div class="panel-body">
        <input type="hidden" name="redirect" value="{{ $back }}">
        @if ($aksi == 'Edit')
          <input type="hidden" name="litcatkum_id" value="{{ $data->litcatkum_id }}">
        @endif
        <div class="form-group">
          <label class="control-label">Nama</label>
          <input class="form-control" type="text" name="litcatkum_nama"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_nama : old('litcatkum_nama') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">Pangkat</label>
          <input class="form-control" type="text" name="litcatkum_pangkat"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_pangkat : old('litcatkum_pangkat') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">No. NRP</label>
          <input class="form-control" type="text" name="litcatkum_nrp"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_nrp : old('litcatkum_nrp') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">Jabatan</label>
          <input class="form-control" type="text" name="litcatkum_jabatan"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_jabatan : old('litcatkum_jabatan') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">Satuan Kerja</label>
          <select class="form-control selectpicker" name="litcatkum_satuan_kerja" data-live-search="true"
            data-style="btn-info" data-width="100%">
            @foreach ($satuanKerja as $row)
              <option value="{{ $row }}" {{ old('litcatkum_satuan_kerja') == $row ? 'selected' : '' }}>
                {{ $row }}</option>
            @endforeach
          </select>
        </div>
        <div class="form-group">
          <label class="control-label">No. LP</label>
          <input class="form-control" type="text" name="litcatkum_nomor_lp"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_nomor_lp : old('litcatkum_nomor_lp') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">Tahun LP</label>
          <input class="form-control" type="text" name="litcatkum_tahun_lp"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_tahun_lp : old('litcatkum_tahun_lp') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">Jenis Pelanggaran</label>
          <input class="form-control" type="text" name="litcatkum_jenis_pelanggaran"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_jenis_pelanggaran : old('litcatkum_jenis_pelanggaran') }}"
            required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">No. PSH</label>
          <input class="form-control" type="text" name="litcatkum_nomor_psh"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_nomor_psh : old('litcatkum_nomor_psh') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">No. SKHD</label>
          <input class="form-control" type="text" name="litcatkum_nomor_skhd"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_nomor_skhd : old('litcatkum_nomor_skhd') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">Hukuman</label>
          <input class="form-control" type="text" name="litcatkum_hukuman"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_hukuman : old('litcatkum_hukuman') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">No. PRS</label>
          <input class="form-control" type="text" name="litcatkum_nomor_prs"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_nomor_prs : old('litcatkum_nomor_prs') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
        <div class="form-group">
          <label class="control-label">Hasil</label>
          <input class="form-control" type="text" name="litcatkum_hasil"
            value="{{ $aksi == 'Edit' ? $data->litcatkum_hasil : old('litcatkum_hasil') }}" required
            data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" />
        </div>
      </div>
      <div class="panel-footer">
        @role('user|administrator')
          <input type="submit" value="Simpan" class="btn btn-sm btn-success m-r-3" />
        @endrole
        <a href="{{ $back }}" class="btn btn-sm btn-danger">Batal</a>
        <div class="pull-right">
          This page took {{ microtime(true) - LARAVEL_START }} seconds to render
        </div>
      </div>
    </form>
  </div>
  @if ($errors->any())
    <div class="alert alert-danger">
      <ul>
        @foreach ($errors->all() as $error)
          <li>{{ $error }}</li>
        @endforeach
      </ul>
    </div>
  @endif
@endsection

@push('scripts')
  <script src="/assets/plugins/parsleyjs/dist/parsley.js"></script>
  <script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
@endpush
