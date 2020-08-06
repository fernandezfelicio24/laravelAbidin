<?php

namespace App\Http\Controllers;

use App\Artikel;
use App\kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BarangController extends Controller
{

 function dashboard(){
    return view('dashboard');
    $data = DB::table('tb_artikel')->get();
    return view('dashboard',['tb_artikel'=>$data]);
}

function postingan(){
    return view('postingan');
}

function notifications(){
    return view('notifications');
}
function blog(){
    return view('blog');
}
function about(){
    return view('about');
}
function login(){
    return view('login');
}
public function artikel($id){
    $artikelku =\App\Artikel::find($id);
    return view('artikel',['artikelku' =>$artikelku]);
}

public function datablog(Request $req){
  if ($req->has('cari')) {
    $dataportal = \App\Artikel::where('judul','LIKE','%'.$req->cari.'%')->get();
}else{
    $dataportal = \App\Artikel::orderBy('created_at', 'desc')->paginate();
}
return view('blog',['dataportal' => $dataportal]);
}

function user(){
    return view('user');
}




public function ambildata(Request $req){
    if ($req->has('cari')) {
    $dataportal = \App\Artikel::where('judul','LIKE','%'.$req->cari.'%')->get();
}else{
    $dataportal = \App\Artikel::orderBy('created_at', 'desc')->paginate();
}
    return view('dashboard',['dataportal' => $dataportal]);
}

public function insert(Request $request){

    $this->validate($request, [
        'gambar' => 'required|file|image|mimes:png|max:2048',
        'isi'=> 'required' ,'deskripsi'=>'required', 'kategori'=> 'required','judul'=>'required','kategori1'=>'required'
    ]);

          // menyimpan data file yang diupload ke variabel $file

    $file = $request->file('gambar');

    $nama_file = time()."_".$file->getClientOriginalName();



    $tujuan_upload = 'data_file';
    $file->move($tujuan_upload,$nama_file);

    Artikel::create([
        'gambar' => $nama_file,
        'isi' =>$request->isi,
        'kategori' => $request->kategori,
        'deskripsi' => $request->deskripsi,
        'judul' => $request->judul,
        'id_kategori'=>$request->kategori1
    ]);



    return redirect('/dashboard');
}

function hapus($id){
    DB::table('tb_artikel')->where('id',$id)->delete();
    return redirect('/dashboard');
}



public function edit($id){
    $editku =\App\Artikel::find($id);
    //    dd($editku);
    return view('edit',['editku' =>$editku]);
}

public function update(Request $request, $id){

    $dataupdate = \App\Artikel::find($id);
    $dataupdate->update($request->all());

    if ($request->hasFile('gambar')) {
        $request->file('gambar')->move('data_file',$request->file('gambar')->getClientOriginalName());
        $dataupdate->   gambar=$request->file('gambar')->getClientOriginalName();
        $dataupdate->save();

    }
    return redirect('/dashboard/');

}


public function kategori($id){
   // $cari =\App\kategori::find($id);
   // dd($id);
    // $artikelku =\App\Artikel::find($id);
//   $cari = DB::table('tb_kategori')->get();
   //$user = $cari->find($id);
    //dd($user);



}

public function viewkategori($id){
 $dataportal = db::table('tb_kategori')
 ->join('tb_artikel',
  'tb_kategori.idkategori',
  '=',
  'tb_artikel.id_kategori')
 ->where('tb_kategori.idkategori',$id)
 ->get();
 return view('blog',['dataportal'=>$dataportal]);
}



}
