<?php

namespace App\Http\Controllers;

use App\LensaKegiatan;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class LensakegiatanController extends Controller
{
  //
  public function index(Request $req)
  {
    $lensakegiatan = LensaKegiatan::where('lensa_kegiatan_judul', 'like', '%' . $req->cari . '%')->orWhere('lensa_kegiatan_satuan_kerja', 'like', '%' . $req->cari . '%')->orderBy('lensa_kegiatan_tanggal', 'desc')->paginate(10);
    $lensakegiatan->appends(['cari' => $req->cari]);
    return view('pages.lensakegiatan.index', [
      'data' => $lensakegiatan,
      'i' => ($req->input('page', 1) - 1) * 10,
      'cari' => $req->cari,
    ]);
  }

  public function tambah()
  {
    return view('pages.lensakegiatan.form')
      ->with('back', Str::contains(url()->previous(), ['datalensakegiatan/tambah', 'datalensakegiatan/edit']) ? '/datalensakegiatan' : url()->previous())
      ->with('satuanKerja', ['Polda', 'Polresta Mataram', 'Polresta Lobar', 'Polresta Loteng', 'Polresta Lotim', 'Polresta Lotara', 'Polresta Sumbawa', 'Polresta Sumbawa Barat', 'Polresta Dompu', 'Polresta Kab. Bima', 'Polresta Kota Bima'])
      ->with('aksi', 'Tambah');
  }

  public function do_tambah(Request $req)
  {
    $req->validate(
      [
        'lensa_kegiatan_judul' => 'required',
        'lensa_kegiatan_file' => 'required|mimes:pdf',
        'lensa_kegiatan_tanggal' => 'required',
        'lensa_kegiatan_satuan_kerja' => 'required',
      ], [
        'lensa_kegiatan_judul.required' => 'Judul tidak boleh kosong',
        'lensa_kegiatan_file.required' => 'File tidak boleh kosong',
        'lensa_kegiatan_file.mimes' => 'File harus berbentuk pdf',
        'lensa_kegiatan_tanggal.required' => 'Tanggal tidak boleh kosong',
        'lensa_kegiatan_satuan_kerja.required' => 'Satuan Kerja tidak boleh kosong',
      ]
    );
    try
    {
      $file = $req->file('lensa_kegiatan_file');

      $ext = $file->getClientOriginalExtension();
      $nama_file = $req->get('lensa_kegiatan_judul') . Str::random() . "." . $ext;
      $file->move(public_path('upload/lensakegiatan'), $nama_file);

      $lensakegiatan = new LensaKegiatan();
      $lensakegiatan->lensa_kegiatan_judul = $req->get('lensa_kegiatan_judul');
      $lensakegiatan->lensa_kegiatan_satuan_kerja = $req->get('lensa_kegiatan_satuan_kerja');
      $lensakegiatan->lensa_kegiatan_tanggal = Carbon::parse($req->get('lensa_kegiatan_tanggal'))->format('Y-m-d');
      $lensakegiatan->lensa_kegiatan_file = 'public/upload/lensakegiatan/' . $nama_file;
      $lensakegiatan->operator = Auth::user()->pengguna_nama;
      $lensakegiatan->save();

      return redirect($req->get('redirect') ? $req->get('redirect') : 'datalensakegiatan')
        ->with('swal_pesan', 'Berhasil menambah data lensa kegiatan ' . $req->get('lensa_kegiatan_judul'))
        ->with('swal_judul', 'Tambah data')
        ->with('swal_tipe', 'success');
    } catch (\Exception $e) {
      return redirect($req->get('redirect') ? $req->get('redirect') : 'datalensakegiatan')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Tambah data')
        ->with('swal_tipe', 'error');
    }
  }

  public function hapus($id)
  {
    try {
      $lensakegiatan = LensaKegiatan::findOrFail($id);
      unlink($lensakegiatan->lensa_kegiatan_file);
      $lensakegiatan->delete();
      return response()->json([
        'swal_pesan' => 'Berhasil menghapus data lensa kegiatan ' . $lensakegiatan->lensa_kegiatan_judul,
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
