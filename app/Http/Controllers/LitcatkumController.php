<?php

namespace App\Http\Controllers;

use App\Litcatkum;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class LitcatkumController extends Controller
{
  //
  public function index(Request $req)
  {
    $litcatkum = Litcatkum::where('litcatkum_nama', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_pangkat', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_nrp', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_jabatan', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_satuan_kerja', 'like', '%' . $req->cari . '%')->orderBy('litcatkum_nama', 'asc')->paginate(10);
    $litcatkum->appends([
      'cari' => $req->cari,
    ]);
    return view('pages.litcatkum.index', [
      'data' => $litcatkum,
      'i' => ($req->input('page', 1) - 1) * 10,
      'cari' => $req->cari,
    ]);
  }

  public function tambah()
  {
    return view('pages.litcatkum.form', [
      'satuanKerja' => ['Polda', 'Polresta Mataram', 'Polresta Lobar', 'Polresta Loteng', 'Polresta Lotim', 'Polresta Lotara', 'Polresta Sumbawa', 'Polresta Sumbawa Barat', 'Polresta Dompu', 'Polresta Kab. Bima', 'Polresta Kota Bima'],
      'back' => Str::contains(url()->previous(), ['litcatkum/tambah', 'litcatkum/edit', 'litcatkum/proses']) ? '/litcatkum' : url()->previous(),
      'aksi' => 'Tambah',
    ]);
  }

  public function do_tambah(Request $req)
  {
    $req->validate(
      [
        'litcatkum_nama' => 'required',
        'litcatkum_pangkat' => 'required',
        'litcatkum_nrp' => 'required',
        'litcatkum_jabatan' => 'required',
        'litcatkum_satuan_kerja' => 'required',
        'litcatkum_nomor_lp' => 'required',
        'litcatkum_tahun_lp' => 'required',
        'litcatkum_jenis_pelanggaran' => 'required',
        'litcatkum_nomor_psh' => 'required',
        'litcatkum_nomor_skhd' => 'required',
        'litcatkum_hukuman' => 'required',
        'litcatkum_nomor_prs' => 'required',
        'litcatkum_hasil' => 'required',
      ]
    );
    try {
      $litcatkum = new Litcatkum();
      $litcatkum->litcatkum_nama = $req->get('litcatkum_nama');
      $litcatkum->litcatkum_pangkat = $req->get('litcatkum_pangkat');
      $litcatkum->litcatkum_nrp = $req->get('litcatkum_nrp');
      $litcatkum->litcatkum_jabatan = $req->get('litcatkum_jabatan');
      $litcatkum->litcatkum_satuan_kerja = $req->get('litcatkum_satuan_kerja');
      $litcatkum->litcatkum_nomor_lp = $req->get('litcatkum_nomor_lp');
      $litcatkum->litcatkum_tahun_lp = $req->get('litcatkum_tahun_lp');
      $litcatkum->litcatkum_jenis_pelanggaran = $req->get('litcatkum_jenis_pelanggaran');
      $litcatkum->litcatkum_nomor_psh = $req->get('litcatkum_nomor_psh');
      $litcatkum->litcatkum_nomor_skhd = $req->get('litcatkum_nomor_skhd');
      $litcatkum->litcatkum_hukuman = $req->get('litcatkum_hukuman');
      $litcatkum->litcatkum_nomor_prs = $req->get('litcatkum_nomor_prs');
      $litcatkum->litcatkum_hasil = $req->get('litcatkum_hasil');
      $litcatkum->operator = Auth::user()->pengguna_nama;
      $litcatkum->save();

      return redirect($req->get('redirect') ? $req->get('redirect') : 'litcatkum')
        ->with('swal_pesan', 'Berhasil menambah data litcatkum ' . $req->get('litcatkum_nama'))
        ->with('swal_judul', 'Tambah data')
        ->with('swal_tipe', 'success');
    } catch (\Exception $e) {
      return redirect($req->get('redirect') ? $req->get('redirect') : 'litcatkum')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Tambah data')
        ->with('swal_tipe', 'error');
    }
  }

  public function edit($id)
  {
    try {
      return view('pages.litcatkum.form', [
        'satuanKerja' => ['Polda', 'Polresta Mataram', 'Polresta Lobar', 'Polresta Loteng', 'Polresta Lotim', 'Polresta Lotara', 'Polresta Sumbawa', 'Polresta Sumbawa Barat', 'Polresta Dompu', 'Polresta Kab. Bima', 'Polresta Kota Bima'],
        'data' => Litcatkum::findOrFail($id),
        'back' => Str::contains(url()->previous(), ['litcatkum/tambah', 'litcatkum/edit', 'litcatkum/proses']) ? '/litcatkum' : url()->previous(),
        'aksi' => 'Edit',
      ]);
    } catch (\Exception $e) {
      return redirect(url()->previous() ? url()->previous() : 'litcatkum')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Edit data')
        ->with('swal_tipe', 'error');
    }
  }

  public function do_edit(Request $req)
  {
    $req->validate(
      [
        'litcatkum_nama' => 'required',
        'litcatkum_pangkat' => 'required',
        'litcatkum_nrp' => 'required',
        'litcatkum_jabatan' => 'required',
        'litcatkum_satuan_kerja' => 'required',
        'litcatkum_nomor_lp' => 'required',
        'litcatkum_tahun_lp' => 'required',
        'litcatkum_jenis_pelanggaran' => 'required',
        'litcatkum_nomor_psh' => 'required',
        'litcatkum_nomor_skhd' => 'required',
        'litcatkum_hukuman' => 'required',
        'litcatkum_nomor_prs' => 'required',
        'litcatkum_hasil' => 'required',
      ]
    );
    try {
      $litcatkum = Litcatkum::findOrFail($req->get('litcatkum_id'));
      $litcatkum->litcatkum_nama = $req->get('litcatkum_nama');
      $litcatkum->litcatkum_pangkat = $req->get('litcatkum_pangkat');
      $litcatkum->litcatkum_nrp = $req->get('litcatkum_nrp');
      $litcatkum->litcatkum_jabatan = $req->get('litcatkum_jabatan');
      $litcatkum->litcatkum_satuan_kerja = $req->get('litcatkum_satuan_kerja');
      $litcatkum->litcatkum_nomor_lp = $req->get('litcatkum_nomor_lp');
      $litcatkum->litcatkum_tahun_lp = $req->get('litcatkum_tahun_lp');
      $litcatkum->litcatkum_jenis_pelanggaran = $req->get('litcatkum_jenis_pelanggaran');
      $litcatkum->litcatkum_nomor_psh = $req->get('litcatkum_nomor_psh');
      $litcatkum->litcatkum_nomor_skhd = $req->get('litcatkum_nomor_skhd');
      $litcatkum->litcatkum_hukuman = $req->get('litcatkum_hukuman');
      $litcatkum->litcatkum_nomor_prs = $req->get('litcatkum_nomor_prs');
      $litcatkum->litcatkum_hasil = $req->get('litcatkum_hasil');
      $litcatkum->operator = Auth::user()->pengguna_nama;
      $litcatkum->save();
      return redirect($req->get('redirect') ? $req->get('redirect') : 'litcatkum')
        ->with('swal_pesan', 'Berhasil mengedit data litcatkum ' . $req->get('litcatkum_nama'))
        ->with('swal_judul', 'Edit data')
        ->with('swal_tipe', 'success');
    } catch (\Exception $e) {
      return redirect($req->get('redirect') ? $req->get('redirect') : 'litcatkum')
        ->with('swal_pesan', $e->getMessage())
        ->with('swal_judul', 'Edit data')
        ->with('swal_tipe', 'error');
    }
  }

  public function hapus($id)
  {
    try {
      $litcatkum = Litcatkum::findOrFail($id);
      $litcatkum->delete();
      return response()->json([
        'swal_pesan' => 'Berhasil menghapus data Penelitian Catatan Hukum ',
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
