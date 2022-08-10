@extends('pages.litcatkum.main')

@section('title', ' | Penelitian Catatan Hukum')

@push('css')
  <link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
@endpush

@section('header')
  <h1 class="page-header">Penelitian Catatan Hukum</h1>
@endsection

@section('subcontent')
  <div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
      <div class="row">
        <div class="col-md-4 col-lg-5 col-xl-3 col-xs-12">
          <div class="form-inline">
            <a href="{{ route('penelitiancatatanhukum.tambah') }}" class="btn btn-sm btn-primary"><i
                class="fas fa-plus"></i> Tambah</a>
          </div>
        </div>
        <div class="col-md-8 col-lg-7 col-xl-9 col-xs-12">
          <form action="{{ route('penelitiancatatanhukum') }}" method="GET" id="frm-cari">
            <div class="form-inline pull-right">
              <div class="input-group">
                <input type="text" class="form-control cari" name="cari" placeholder="Cari"
                  aria-label="Sizing example input" autocomplete="off" aria-describedby="basic-addon2"
                  value="{{ $cari }}">
                <div class="input-group-append">
                  <span class="input-group-text" id="basic-addon2"><i class="fa fa-search"></i></span>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>

    </div>
    <div class="panel-body">
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>No.</th>
              <th>Nama</th>
              <th>Pangkat</th>
              <th>NRP</th>
              <th>Jabatan</th>
              <th>Satuan Kerja</th>
              <th>No. LP</th>
              <th>Tahun LP</th>
              <th>Jenis Pelanggaran</th>
              <th>No. PSH</th>
              <th>No. SKHD</th>
              <th>Hukuman</th>
              <th>No. PRS</th>
              <th>Hasil</th>
              <th>File</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            @foreach ($data as $index => $row)
              <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $row->litcatkum_nama }}</td>
                <td>{{ $row->litcatkum_pangkat }}</td>
                <td>{{ $row->litcatkum_nrp }}</td>
                <td>{{ $row->litcatkum_jabatan }}</td>
                <td>{{ $row->litcatkum_satuan_kerja }}</td>
                <td>{{ $row->litcatkum_nomor_lp }}</td>
                <td>{{ $row->litcatkum_tahun_lp }}</td>
                <td>{{ $row->litcatkum_jenis_pelanggaran }}</td>
                <td>{{ $row->litcatkum_nomor_psh }}</td>
                <td>{{ $row->litcatkum_nomor_skhd }}</td>
                <td>{{ $row->litcatkum_hukuman }}</td>
                <td>{{ $row->litcatkum_nomor_prs }}</td>
                <td>{{ $row->litcatkum_hasil }}</td>
                <td>
                  @if ($row->litcatkum_skhd)
                    <a href="{{ url($row->litcatkum_skhd) }}" target="_blank" class="btn btn-xs btn-success">
                      File SKHD</a>
                  @endif
                  <br>
                  <br>
                  @if ($row->litcatkum_rps)
                    <a href="{{ url($row->litcatkum_rps) }}" target="_blank" class="btn btn-xs btn-success">
                      File RPS</a>
                  @endif
                </td>
                <td class="pull-right">
                  <a href="/penelitiancatatanhukum/edit/{{ $row->litcatkum_id }}" id='btn-del'
                    class='btn btn-grey btn-xs m-r-3'><i class='fas fa-edit'></i> Edit Data</a>
                  <a href="javascript:;" onclick="hapus('{{ $row->litcatkum_id }}')" id='btn-del'
                    class='btn btn-danger btn-xs'><i class='fas fa-trash'></i> Hapus</a>
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
    <div class="panel-footer form-inline">
      <div class="col-md-6 col-lg-10 col-xl-10 col-xs-12">
        {{ $data->links() }}
      </div>
      <div class="col-md-6 col-lg-2 col-xl-2 col-xs-12">
        <label class="pull-right">Jumlah Data : {{ $data->total() }}</label>
      </div>
      This page took {{ microtime(true) - LARAVEL_START }} seconds to render
    </div>
  </div>
@endsection

@push('scripts')
  <script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
  <script>
    $(".cari").change(function() {
      $("#frm-cari").submit();
    });

    function hapus(id, nama) {
      swal({
        title: 'Hapus Data',
        text: 'Anda akan menghapus bantuan hukum Penelitian Catatan Hukum : ' + nama,
        icon: 'warning',
        buttons: {
          cancel: {
            text: 'Batal',
            value: null,
            visible: true,
            className: 'btn btn-default',
            closeModal: true,
          },
          confirm: {
            text: 'Ya',
            value: true,
            visible: true,
            className: 'btn btn-danger',
            closeModal: true
          }
        }
      }).then(function(isConfirm) {
        if (isConfirm) {
          $.ajaxSetup({
            headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
          });
          $.ajax({
            url: "/penelitiancatatanhukum/hapus/" + id,
            type: "POST",
            data: {
              "_method": 'DELETE',
            },
            success: function(data) {
              swal({
                title: data['swal_judul'],
                text: data['swal_pesan'],
                icon: data['swal_tipe'],

              }).then(function() {
                location.reload(true)
              });
            },
            error: function(xhr, ajaxOptions, thrownError) {
              swal("Hapus data", xhr.status, "error");
            }
          })
        }
      });
    }
  </script>
@endpush
