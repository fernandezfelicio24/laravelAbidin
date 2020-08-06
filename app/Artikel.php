<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    protected $table= 'tb_artikel';
    protected $fillable = ['judul','isi','deskripsi','kategori','gambar','id_kategori'];
    //public $timestamps = false;
}

