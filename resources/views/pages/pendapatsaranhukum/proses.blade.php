@extends('pages.pendapatsaranhukum.main')

@section('title', ' | Proses Pendapat & Saran Hukum')

@push('css')
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Pendapat & Saran Hukum</li>
	<li class="breadcrumb-item active">{{ $aksi }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Pendapat & Saran Hukum <small>{{ $aksi }} Data</small></h1>
@endsection

@section('subcontent')
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
		<!-- begin panel-heading -->
		<div class="panel-heading">
			<div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            </div>
			<h4 class="panel-title">Form</h4>
		</div>
		<form action="{{ route('pendapatsaranhukum.'.strtolower($aksi)) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
			@csrf
			<div class="panel-body">
                @if ($data->proses->count() == 3 && $data->proses[2]->pendapat_saran_proses_status == "PSH SELESAI DIKIRIM")
                <div class="note note-primary m-b-15">
                    <input type="hidden" name="redirect" value="{{ $back }}">
                    <input type="hidden" name="pendapat_saran_id" value="{{ $data->pendapat_saran_id }}" required>
                    <div class="form-group">
                        <label class="control-label">No. Laporan</label>
                        <input class="form-control" type="text" name="pendapat_saran_laporan_nomor" value="{{ $data->pendapat_saran_laporan_nomor }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" readonly />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tanggal</label>
                        <input class="form-control" type="text" name="pendapat_saran_tanggal" value="{{ date('d F Y', strtotime($data->pendapat_saran_tanggal)) }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" readonly />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Judul</label>
                        <textarea class="textarea form-control" name="pendapat_saran_judul" rows="12" readonly>{{ $data->pendapat_saran_judul }}
                        </textarea>
                    </div>
                </div>
                @else
				<div class="row">
					<div class="col-md-4">
                        <div class="note note-primary m-b-15">
                            <input type="hidden" name="redirect" value="{{ $back }}">
                            <input type="hidden" name="pendapat_saran_id" value="{{ $data->pendapat_saran_id }}" required>
                            <div class="form-group">
                                <label class="control-label">No. Laporan</label>
                                <input class="form-control" type="text" name="pendapat_saran_laporan_nomor" value="{{ $data->pendapat_saran_laporan_nomor }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" readonly />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tanggal</label>
                                <input class="form-control" type="text" name="pendapat_saran_tanggal" value="{{ date('d F Y', strtotime($data->pendapat_saran_tanggal)) }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" readonly />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Judul</label>
                                <textarea class="textarea form-control" name="pendapat_saran_judul" rows="12" readonly>{{ $data->pendapat_saran_judul }}
                                </textarea>
                            </div>
                        </div>
					</div>
					<div class="col-md-8">
                        <div class="form-group">
                            <label class="control-label">Status</label>
                            <select class="form-control selectpicker" style="width : 100%" name="pendapat_saran_proses_status" id="pendapat_saran_proses_status" data-style="btn-info" data-width="100%">
                                <option value="LAPORAN MASUK">LAPORAN MASUK</option>
                                <option value="MASIH DALAM PROSES">MASIH DALAM PROSES</option>
                                <option value="PSH SELESAI DIKIRIM">PSH SELESAI DIKIRIM</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Tanggal</label>
                            <input type="text" readonly required class="form-control" id="datepicker1" name="pendapat_saran_proses_tanggal" value="{{ date('d F Y', strtotime($aksi == 'Edit'? $data->pendapat_saran_proses_tanggal: (old('pendapat_saran_proses_tanggal')? old('pendapat_saran_proses_tanggal'): now()))) }}"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Detail</label>
                            <textarea class="textarea form-control" id="wysihtml5" name="pendapat_saran_proses_deskripsi" placeholder="Enter text ..." rows="12">
                                {{ $aksi == 'Edit'? $data->pendapat_saran_proses_deskripsi: old('pendapat_saran_proses_deskripsi') }}
                            </textarea>
                        </div>
					</div>
                </div>
                @endif
                <hr>
                <h4>History</h4>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Tanggal</th>
                                <th>Status</th>
                                <th>Detail</th>
                                <th class="width-90"></th>
                            </tr>
                            @php
                                $i = 0;
                                $jumlah = $data->proses->count();
                            @endphp
                            @foreach ($data->proses as $index => $row)
                            <tr>
                                <td>{{ ++$i }}</td>
                                <td>{{ \Carbon\Carbon::parse($row->pendapat_saran_proses_tanggal)->isoFormat('LL') }}</td>
                                <td>{{ $row->pendapat_saran_proses_status }}<br><small>{{ $row->operator.', '.\Carbon\Carbon::parse($row->created_at)->isoFormat('LL') }}</small></td>
                                <td>{!! $row->pendapat_saran_proses_deskripsi !!}</td>
                                <td>
                                    @if ($i == $jumlah)
                                    <a href="javascript:;" onclick="hapus('{{ $row->pendapat_saran_id }}', '{{ $row->pendapat_saran_proses_status }}', '{{ $data->pendapat_saran_laporan_nomor }}', '{{ $row->pendapat_saran_proses_tanggal }}')" id='btn-del' class='btn btn-danger btn-xs'><i class='fas fa-trash'></i></a>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </thead>
                    </table>
                </div>
			</div>
			<div class="panel-footer">
				@role('user|administrator')
                @if ($data->proses->count() < 3)
                <input type="submit" value="Simpan" class="btn btn-sm btn-success m-r-3"/>
                @endif
				@endrole
	            <a href="{{ $back }}" class="btn btn-sm btn-danger">Batal</a>
	            <div class="pull-right">
					This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
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
	<script src="/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script>
        $('#wysihtml5').wysihtml5({
            selected: 0,
            theme: 'default',
            transitionEffect:'',
            transitionSpeed: 0,
            useURLhash: false,
            showStepURLhash: false,
            toolbarSettings: {
                toolbarPosition: 'bottom'
            }
        });

		$('#datepicker1').datepicker({
			todayHighlight: true,
			format: 'dd MM yyyy',
			orientation: "bottom",
			autoclose: true
		});

		function hapus(id, status, nama) {
			swal({
				title: 'Hapus Data',
				text: 'Anda akan menghapus proses pendapat & saran hukum : ' + nama + ' dengan status : ' + status,
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
	          			url: "/pendapatsaranhukum/hapusproses/" + id + "/" + status,
	          			type: "POST",
	          			data: {
	          				"_method": 'DELETE',
	          			},
	          			success: function(data){
	          				swal({
						       	title: data['swal_judul'],
						       	text: data['swal_pesan'],
						       	icon: data['swal_tipe'],

						   	}).then(function() {
							    location.reload(true)
							});
	          			},
	          			error: function (xhr, ajaxOptions, thrownError) {
            				swal("Hapus data", xhr.status, "error");
      					}
	          		})
		      	}
		    });
		}
	</script>
@endpush
