<?php

namespace App\Http\Controllers;

use App\BantuanHukum;
use App\LensaKegiatan;
use App\Litcatkum;
use App\PendapatSaran;
use App\Peraturan;
use App\PeraturanJenis;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;

class HomeController extends Controller
{
  //
  public function index()
  {
    return view('frontend.pages.home');
  }

  public function konsultasihukum()
  {
    return view('frontend.pages.konsultasihukum.index');
  }

  public function bantuanhukum()
  {
    return view('frontend.pages.bantuanhukum.home');
  }

  public function bantuanhukum_list($jenis, Request $req)
  {
    $bantuanhukum = BantuanHukum::with(['proses' => function ($q) {
      $q->orderBy('created_at', 'desc');
    }])->where(function ($query) use ($req) {
      $query->where('bantuan_hukum_judul', 'like', '%' . $req->cari . '%')->orWhere('bantuan_hukum_laporan_nomor', 'like', '%' . $req->cari . '%');
    })->where('bantuan_hukum_jenis', $jenis)->paginate(10);
    $bantuanhukum->appends([
      'cari' => $req->cari,
    ]);

    switch ($jenis) {
      case 'praperadilan':
        $jenis_ = "Pra Peradilan";
        break;
      case 'pidana':
        $jenis_ = "Pidana";
        break;
      case 'perdata':
        $jenis_ = "Perdata";
        break;
      case 'agama':
        $jenis_ = "Agama";
        break;
      case 'ptun':
        $jenis_ = "PTUN";
        break;
    }
    return view('frontend.pages.bantuanhukum.list', [
      'cari' => $req->cari,
      'jenis' => $jenis,
      'jenis_' => $jenis_,
      'i' => ($req->input('page', 1) - 1) * 10,
      'data' => $bantuanhukum,
    ]);
  }

  public function bantuanhukum_download(Request $req)
  {
    try {
      if ($req->kode == '70121132') {
        $data = BantuanHukum::where('bantuan_hukum_id', $req->id)->first();
        $headers = array(
          'Content-Type: application/pdf',
        );

        return Response::download($data->bantuan_hukum_file, $data->bantuan_hukum_judul . '.pdf', $headers);
      } else {
        return abort(403);
      }
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Bantuan Hukum",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function litcatkum_rps(Request $req)
  {
    try {
      if ($req->kode == '70121132') {
        $data = Litcatkum::where('litcatkum_id', $req->id)->first();
        $headers = array(
          'Content-Type: application/pdf',
        );

        return Response::download($data->litcatkum_rps, $data->litcatkum_rps . '_rps.pdf', $headers);
      } else {
        return abort(403);
      }
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Penelitian Catatan Hukum (RPS)",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function litcatkum_skhd(Request $req)
  {
    try {
      if ($req->kode == '70121132') {
        $data = Litcatkum::where('litcatkum_id', $req->id)->first();
        $headers = array(
          'Content-Type: application/pdf',
        );

        return Response::download($data->litcatkum_skhd, $data->litcatkum_nama . '_skhd.pdf', $headers);
      } else {
        return abort(403);
      }
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Penelitian Catatan Hukum (SKHD)",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function bantuanhukum_tampil($jenis, $id)
  {
    try {
      $bantuanhukum = BantuanHukum::with(['proses' => function ($q) {
        $q->orderBy('created_at', 'asc');
      }])->where('bantuan_hukum_id', $id)->where('bantuan_hukum_jenis', $jenis)->first();

      switch ($jenis) {
        case 'praperadilan':
          $jenis_ = "Pra Peradilan";
          break;
        case 'pidana':
          $jenis_ = "Pidana";
          break;
        case 'perdata':
          $jenis_ = "Perdata";
          break;
        case 'agama':
          $jenis_ = "Agama";
          break;
        case 'ptun':
          $jenis_ = "PTUN";
          break;
      }
      return view('frontend.pages.bantuanhukum.tampil', [
        'data' => $bantuanhukum,
        'jenis_' => $jenis_,
        'jenis' => $jenis,
      ]);
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Bantuan Hukum<br><small>" . ucFirst($jenis) . "</small>",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function peraturan_download($id)
  {
    try {
      $data = Peraturan::findOrFail($id);
      $zip_file = $data->peraturan_file;
      return response()->download($zip_file);
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Peraturan<br><small>" . $id . "</small>",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function peraturan()
  {
    $data = PeraturanJenis::orderBy('peraturan_jenis_nama', 'asc')->get();
    return view('frontend.pages.peraturan.home', [
      'data' => $data,
    ]);
  }

  public function peraturan_list(Request $req, $jenis)
  {
    $peraturan_jenis = PeraturanJenis::findOrFail($jenis);
    $peraturan = Peraturan::where('peraturan_jenis_id', $jenis)->where('peraturan_judul', 'like', '%' . $req->cari . '%')->paginate(10);
    $peraturan->appends([
      'cari' => $req->cari,
      'jenis' => $jenis]);
    return view('frontend.pages.peraturan.list', [
      'data' => $peraturan,
      'cari' => $req->cari,
      'i' => ($req->input('page', 1) - 1) * 10,
      'jenis' => $peraturan_jenis->peraturan_jenis_nama,
      'jenis_id' => $peraturan_jenis->peraturan_jenis_id,
    ]);
  }

  public function peraturan_tampil($jenis, $id)
  {
    try {
      $peraturan_jenis = PeraturanJenis::findOrFail($jenis);
      $peraturan = Peraturan::findOrFail($id);
      return view('frontend.pages.peraturan.tampil', [
        'data' => $peraturan,
        'jenis' => $peraturan_jenis->peraturan_jenis_nama,
        'jenis_id' => $jenis,
      ]);
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Peraturan<br><small>" . ucFirst($jenis) . "</small>",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function lensakegiatan_download($id)
  {
    try {
      $data = LensaKegiatan::findOrFail($id);
      $zip_file = $data->lensa_kegiatan_file;
      return response()->download($zip_file);
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Lensa Kegiatan<br><small>" . $id . "</small>",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function lensakegiatan(Request $req)
  {
    $lensakegiatan = LensaKegiatan::orderBy('lensa_kegiatan_tanggal', 'desc')->where('lensa_kegiatan_judul', 'like', '%' . $req->cari . '%')->paginate(10);
    $lensakegiatan->appends([
      'cari' => $req->cari]);
    return view('frontend.pages.lensakegiatan.list', [
      'cari' => $req->cari,
      'i' => ($req->input('page', 1) - 1) * 10,
      'data' => $lensakegiatan,
    ]);
  }

  public function lensakegiatan_tampil($id)
  {
    try {
      $lensakegiatan = LensaKegiatan::findOrFail($id);
      return view('frontend.pages.lensakegiatan.tampil', [
        'data' => $lensakegiatan,
      ]);
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Lensa Kegiatan",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function pendapatsaran(Request $req)
  {
    $pendapatsaranhukum = PendapatSaran::with(['proses' => function ($q) {
      $q->orderBy('created_at', 'desc');
    }])->where(function ($query) use ($req) {
      $query->where('pendapat_saran_judul', 'like', '%' . $req->cari . '%')->orWhere('pendapat_saran_laporan_nomor', 'like', '%' . $req->cari . '%');
    })->paginate(10);
    $pendapatsaranhukum->appends([
      'cari' => $req->cari,
    ]);
    return view('frontend.pages.pendapatsaranhukum.list', [
      'cari' => $req->cari,
      'i' => ($req->input('page', 1) - 1) * 10,
      'data' => $pendapatsaranhukum,
    ]);
  }

  public function pendapatsaran_tampil($id)
  {
    try {
      $pendapatsaranhukum = PendapatSaran::with(['proses' => function ($q) {
        $q->orderBy('created_at', 'asc');
      }])->where('pendapat_saran_id', $id)->first();
      return view('frontend.pages.pendapatsaranhukum.tampil', [
        'data' => $pendapatsaranhukum,
      ]);
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Pendapat & Saran Hukum",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function pendapatsaran_download(Request $req)
  {
    try {
      if ($req->kode == '70121132') {
        $pendapatsaranhukum = PendapatSaran::where('pendapat_saran_id', $req->id)->first();
        $headers = array(
          'Content-Type: application/pdf',
        );

        return Response::download($pendapatsaranhukum->pendapat_saran_file, $pendapatsaranhukum->pendapat_saran_judul . '.pdf', $headers);
      } else {
        return abort(403);
      }
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Pendapat & Saran Hukum",
        'pesan' => $e->getMessage(),
      ]);
    }
  }

  public function litcatkum(Request $req)
  {
    $litcatkum = Litcatkum::where('litcatkum_nama', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_pangkat', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_nrp', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_jabatan', 'like', '%' . $req->cari . '%')->orWhere('litcatkum_satuan_kerja', 'like', '%' . $req->cari . '%')->orderBy('litcatkum_nama', 'asc')->paginate(10);
    $litcatkum->appends([
      'cari' => $req->cari]);
    return view('frontend.pages.litcatkum.list', [
      'cari' => $req->cari,
      'i' => ($req->input('page', 1) - 1) * 10,
      'data' => $litcatkum,
    ]);
  }

  public function litcatkum_tampil($id)
  {
    try {
      $litcatkum = Litcatkum::findOrFail($id);
      return view('frontend.pages.litcatkum.tampil', [
        'data' => $litcatkum,
      ]);
    } catch (\Exception $e) {
      return view('frontend.pages.eror', [
        'header' => "Penelitian Catatan Hukum",
        'pesan' => $e->getMessage(),
      ]);
    }
  }
}
