<?php

namespace App\Http\Controllers;

use App\BantuanHukum;
use App\BantuanHukumProses;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class PraperadilanController extends Controller
{
  //
  public function index(Request $req)
  {
    $praperadilan = BantuanHukum::with(['proses' => function ($q) {
      $q->orderBy('created_at', 'desc');
    }])->where(function ($query) use ($req) {
      $query->where('bantuan_hukum_judul', 'like', '%' . $req->cari . '%')->orWhere('bantuan_hukum_laporan_nomor', 'like', '%' . $req->cari . '%')->orWhere('bantuan_hukum_satuan_kerja', 'like', '%' . $req->cari . '%');
    })->where('bantuan_hukum_jenis', 'praperadilan')->paginate(10);
    $praperadilan->appends([
      'cari' => $req->cari,
    ]);
    return view('pages.bantuanhukum.praperadilan.index', [
      'data' => $praperadilan,
      'i' => ($req->input('page', 1) - 1) * 10,
      'cari' => $req->cari,
    ]);
  }

  public function tambah()
  {
    return view('pages.bantuanhukum.praperadilan.form', [
      'satuanKerja' => ['Polda', 'Polresta Mataram', 'Polresta Lobar', 'Polresta Loteng', 'Polresta Lotim', 'Polresta Lotara', 'Polresta Sumbawa', 'Polresta Sumbawa Barat', 'Polresta Dompu', 'Polresta Kab. Bima', 'Polresta Kota Bima'],
      'back' => Str::contains(url()->previous(), ['praperadilan/tambah', 'praperadilan/edit', 'praperadilan/proses']) ? '/praperadilan' : url()->previous(),
      'aksi' => 'Tambah',
    ]);
  }

  public function do_tambah(Request $req)
  {
    $req->validate(
      [
        'bantuan_hukum_judul' => 'required',
        'bantuan_hukum_tanggal' => 'required',
        'bantuan_hukum_laporan_nomor' => 'required',
        'bantuan_hukum_proses_deskripsi' => 'required',
        'bantuan_hukum_satuan_kerja' => 'required',
        'bantuan_hukum_file' => 'required',
      ], [
        'bantuan_hukum_judul.required' => 'Judul tidak boleh kosong',
        'bantuan_hukum_tanggal.required' => 'Tanggal tidak boleh kosong',
        'bantuan_hukum_laporan_nomor.required' => 'Nomor tidak boleh kosong',
        'bantuan_hukum_proses_deskripsi.required' => 'Detail Proses tidak boleh kosong',
        'bantuan_hukum_satuan_kerja.required' => 'Satuan Kerja tidak boleh kosong',
        'bantuan_hukum_file.required' => 'File tidak boleh kosong',
      ]
    );
    try {
      $file = $req->file('bantuan_hukum_file');

      $ext = $file->getClientOriginalExtension();
      $nama_file = "BH" . date('Ymd') . Str::random() . "." . $ext;
      $file->move(public_path('upload/bh'), $nama_file);
      $data = new BantuanHukum();
      $data->bantuan_hukum_judul = $req->get('bantuan_hukum_judul');
      $data->bantuan_hukum_tanggal = Carbon::parse($req->get('bantuan_hukum_tanggal'))->format('Y-m-d');
      $data->bantuan_hukum_laporan_nomor = $req->get('bantuan_hukum_laporan_nomor');
      $data->bantuan_hukum_keterangan = $req->get('bantuan_hukum_keterangan');
      $data->bantuan_hukum_satuan_kerja = $req->get('bantuan_hukum_satuan_kerja');
      $data->bantuan_hukum_file = 'public/upload/bh/' . $nama_file;
      $data->bantuan_hukum_jenis = 'praperadilan';
      $data->operator = Auth::user()->pengguna_nama;
      $data->save();

      $proses = new BantuanHukumProses();
      $proses->bantuan_hukum_id = $data->bantuan_hukum_id;
      $proses->bantuan_hukum_proses_status = $req->get('bantuan_hukum_proses_status');
      $proses->bantuan_hukum_proses_deskripsi = $req->get('bantuan_hukum_proses_deskripsi');
      $proses->bantuan_hukum_proses_tanggal = Carbon::parse($req->get('bantuan_hukum_tanggal'))->format('Y-m-d');
      $proses->operator = Auth::user()->pengguna_nama;
      $proses->save();

      return redirect($req->get('redirect') ? $req->get('redirect') : 'praperadilan')
        ->with('swal_pesan', 'Berhasil menambah data bantuan hukum pra peradilan ' . $req->get('bantuan_hukum_judul'))
        ->with('swal_judul', 'Tambah data')
        ->with('swal_tipe', 'success');
    } catch (\Exception $e) {
      return redirect($req->get('redirect') ? $req->get('redirect') : 'praperadilan')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Tambah data')
        ->with('swal_tipe', 'error');
    }
  }

  public function edit($id)
  {
    try {
      return view('pages.bantuanhukum.praperadilan.form', [
        'data' => BantuanHukum::findOrFail($id),
        'back' => Str::contains(url()->previous(), ['praperadilan/tambah', 'praperadilan/edit', 'praperadilan/proses']) ? '/praperadilan' : url()->previous(),
        'aksi' => 'Edit',
        'satuanKerja' => ['Polda', 'Polresta Mataram', 'Polresta Lobar', 'Polresta Loteng', 'Polresta Lotim', 'Polresta Lotara', 'Polresta Sumbawa', 'Polresta Sumbawa Barat', 'Polresta Dompu', 'Polresta Kab. Bima', 'Polresta Kota Bima'],
      ]);
    } catch (\Exception $e) {
      return redirect(url()->previous() ? url()->previous() : 'praperadilan')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Edit data')
        ->with('swal_tipe', 'error');
    }
  }

  public function do_edit(Request $req)
  {
    $req->validate(
      [
        'bantuan_hukum_judul' => 'required',
        'bantuan_hukum_tanggal' => 'required',
        'bantuan_hukum_laporan_nomor' => 'required',
        'bantuan_hukum_satuan_kerja' => 'required',
      ], [
        'bantuan_hukum_judul.required' => 'Judul tidak boleh kosong',
        'bantuan_hukum_tanggal.required' => 'Tanggal tidak boleh kosong',
        'bantuan_hukum_laporan_nomor.required' => 'Nomor tidak boleh kosong',
        'bantuan_hukum_satuan_kerja.required' => 'Satuan Kerja tidak boleh kosong',
      ]
    );
    try {
      $file = $req->file('bantuan_hukum_file');
      if ($file) {
        $ext = $file->getClientOriginalExtension();
        $nama_file = "BH" . date('Ymd') . Str::random() . "." . $ext;
        $file->move(public_path('upload/bh'), $nama_file);
      }
      $data = BantuanHukum::findOrFail($req->get('bantuan_hukum_id'));
      $data->bantuan_hukum_judul = $req->get('bantuan_hukum_judul');
      $data->bantuan_hukum_tanggal = Carbon::parse($req->get('bantuan_hukum_tanggal'))->format('Y-m-d');
      $data->bantuan_hukum_laporan_nomor = $req->get('bantuan_hukum_laporan_nomor');
      $data->bantuan_hukum_keterangan = $req->get('bantuan_hukum_keterangan');
      $data->bantuan_hukum_satuan_kerja = $req->get('bantuan_hukum_satuan_kerja');
      if ($file) {
        $data->bantuan_hukum_file = 'public/upload/bh/' . $nama_file;
      }
      $data->bantuan_hukum_jenis = 'praperadilan';
      $data->operator = Auth::user()->pengguna_nama;
      $data->save();
      return redirect($req->get('redirect') ? $req->get('redirect') : 'praperadilan')
        ->with('swal_pesan', 'Berhasil mengedit data bantuan hukum pra peradilan ' . $req->get('bantuan_hukum_judul'))
        ->with('swal_judul', 'Edit data')
        ->with('swal_tipe', 'success');
    } catch (\Exception $e) {
      return redirect($req->get('redirect') ? $req->get('redirect') : 'praperadilan')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Edit data')
        ->with('swal_tipe', 'error');
    }
  }

  public function proses($id)
  {
    try {
      return view('pages.bantuanhukum.praperadilan.proses', [
        'data' => BantuanHukum::with(['proses' => function ($q) {
          $q->orderBy('created_at', 'asc');
        }])->findOrFail($id),
        'back' => Str::contains(url()->previous(), ['praperadilan/tambah', 'praperadilan/edit', 'praperadilan/proses']) ? '/praperadilan' : url()->previous(),
        'aksi' => 'Proses',
        'satuanKerja' => ['Polda', 'Polresta Mataram', 'Polresta Lobar', 'Polresta Loteng', 'Polresta Lotim', 'Polresta Lotara', 'Polresta Sumbawa', 'Polresta Sumbawa Barat', 'Polresta Dompu', 'Polresta Kab. Bima', 'Polresta Kota Bima'],
      ]);
    } catch (\Exception $e) {
      return redirect(url()->previous() ? url()->previous() : 'praperadilan')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Edit data')
        ->with('swal_tipe', 'error');
    }
  }

  public function do_proses(Request $req)
  {
    $req->validate(
      [
        'bantuan_hukum_id' => 'required',
        'bantuan_hukum_proses_status' => 'required',
        'bantuan_hukum_proses_deskripsi' => 'required',
        'bantuan_hukum_proses_tanggal' => 'required',
      ], [
        'bantuan_hukum_id.required' => 'No. Laporan tidak boleh kosong',
        'bantuan_hukum_proses_status.required' => 'Status tidak boleh kosong',
        'bantuan_hukum_proses_deskripsi.required' => 'Deskripsi tidak boleh kosong',
        'bantuan_hukum_proses_tanggal.required' => 'Tanggal tidak boleh kosong',
      ]
    );
    try {
      $proses = new BantuanHukumProses();
      $proses->bantuan_hukum_id = $req->bantuan_hukum_id;
      $proses->bantuan_hukum_proses_status = $req->get('bantuan_hukum_proses_status');
      $proses->bantuan_hukum_proses_deskripsi = $req->get('bantuan_hukum_proses_deskripsi');
      $proses->bantuan_hukum_proses_tanggal = Carbon::parse($req->get('bantuan_hukum_proses_tanggal'))->format('Y-m-d');
      $proses->operator = Auth::user()->pengguna_nama;
      $proses->save();
      return redirect($req->get('redirect') ? $req->get('redirect') : 'praperadilan')
        ->with('swal_pesan', 'Berhasil menambah data proses bantuan hukum pra peradilan ' . $req->get('bantuan_hukum_judul'))
        ->with('swal_judul', 'Proses data')
        ->with('swal_tipe', 'success');
    } catch (\Exception $e) {
      return redirect($req->get('redirect') ? $req->get('redirect') : 'praperadilan')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Proses data')
        ->with('swal_tipe', 'error');
    }
  }

  public function hapus($id)
  {
    try {
      $praperadilan = BantuanHukum::findOrFail($id);
      $praperadilan->delete();
      return response()->json([
        'swal_pesan' => 'Berhasil menghapus data bantuan hukum pra peradilan ' . $praperadilan->bantuan_hukum_laporan_nomor,
        'swal_judul' => 'Hapus data',
        'swal_tipe' => 'success',
      ]);
    } catch (\Exception $e) {
      return response()->json([
        'swal_pesan' => $e->getMessage(),
        'swal_judul' => 'Hapus data',
        'swal_tipe' => 'error',
      ]);
    }
  }

  public function hapus_proses($id, $status, $tanggal)
  {
    try {
      $praperadilan = BantuanHukumProses::where('bantuan_hukum_id', $id)->where('bantuan_hukum_proses_status', $status)->where('bantuan_hukum_proses_tanggal', $tanggal)->delete();
      $data = BantuanHukum::findOrFail($id);
      return response()->json([
        'swal_pesan' => 'Berhasil menghapus data proses bantuan hukum pra peradilan ' . $data->bantuan_hukum_laporan_nomor . ' dengan status ' . $status,
        'swal_judul' => 'Hapus data',
        'swal_tipe' => 'success',
      ]);
    } catch (\Exception $e) {
      return response()->json([
        'swal_pesan' => $e->getMessage(),
        'swal_judul' => 'Hapus data',
        'swal_tipe' => 'error',
      ]);
    }
  }
}
