<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ABIDINNEWS - {{$artikelku->judul}}</title>

  <!-- Bootstrap core CSS -->
  <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/css/modern-business.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"></link>


</head>

<body>

  <!-- Navbar -->
 @include('Layout.include.blog.navbar')
 <!-- Navbar akhir -->
    <br>
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">{{$artikelku->judul}}</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Blog Home 2</li>
      </ol>

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Preview Image -->
          <img height="1400" width="750" class="img-fluid rounded" src="{{ url('/data_file/'.$artikelku->gambar) }}  " alt="$artikelku->judul ">

          <hr>

          <!-- Date/Time -->
          <p>Posted on {{$artikelku->updated_at}} <small>by
          <a href="/blog">Abidinnews</a>
        </small></p>

          <hr>

          <!-- Post Content -->
          <div class="card">
            <div class="card-body" style="text-align: justify;">
              {!!$artikelku->isi!!}
            </div>
          </div>

          

          <!-- Comments Form -->
          
          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header">Leave a Comment:</h5>
            <div class="card-body">
              <div id="disqus_thread"></div>
              <script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/

var disqus_config = function () {
this.page.url = "http://localhost/belajarhtml/disqus.php";;  // ganti dengan nama halaman yg ingin diberi disqus
this.page.identifier = "1"; // ganti dengan angka unik pastikan tidak duplikat dengan halaman lain
};

(function() { // DON'T EDIT BELOW THIS LINE
  var d = document, s = d.createElement('script');
  s.src = '//alvinadji.disqus.com/embed.js';
  s.setAttribute('data-timestamp', +new Date());
  (d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>


</div>
</div>
<!-- footer -->
       @include('Layout.include.blog.footer')
       <!-- akhir footer -->
</div>



<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
