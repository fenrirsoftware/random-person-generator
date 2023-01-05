<?php

 /*
 Öncelikle merhabalar.
 bu programda;
 sunuma hazırlanan uygulamalarda kullanılmak üzere "lorem ipsum text" olarak bilinen uygulama yapılmıştır.
 kabaca programımız sahte bir insan oluşturmakta.

 kişi görseli tamamen yapay zeka tarafından oluşturulmuş yapay bir yüzdür, web scraping kullanılarak çekildi.
 kişi isim soyisim kan grubu tarzı kişisel bilgileri de aşağıda belirttiğim apiden çektim. isimler ve diğer bilgiler için teker teker tablo açsam çok uzardı.

 tc kimlik fonksiyonu doğrulama algoritmasıyla beraber yapılan tüm tcler gerçektir.

 web scrap yaptığım kısımlarda github ve stackoverfow yardımıma koştu :)

 işin kalıtım ve class tarafı doğruyu söylemek gerekirse tamamen öylesine konuldu. kafamdaki projeyi bu altyapıya uyarlamayazdım. ama yine de şansımı denedim...

 random sayı olsun istediniz öğrenci numarası değişkeni random oluşmakta
 static değişken olarak kişi uyruğunu seçtim. api türk apisi olduğu için uyruk statik oldu.
 global değişken olarak ise scrap ile çektiğim resmi seçtim ki başka yerden ulaşmaya çalışırsam sıkıntı çıkarmasın. 
 server değişkenini de kullanıcı bilgileri arasına koydum.  orada dönen bilgiler sizin cihazınızın bilgileri.

 program ilk açıldığında bir sürü hata texti gösteriyorsa eğer lütfen "YENİLE" butonuna 1 kez tıklayınız :)

 görseller rastgele yapay zeka tarafından oluşturulduğu için bilgi ve görsel uyuşmazlıklarına  aldırış etmeyin, yenileyiniz :)

 uygulama finalde oluşturdunuz kişiyi RESİM HARİÇ dbye kaydeder.

 TCKN doğrulama kısmında resmi olmayan bir algoritma kullanmak yerine NVI API kullanacaktım lakin, orada sorgu yapmak için kişinin adı soyadı da gerekiyor. 
 bu da bizim sistemimizin karşılamayacağı bir durum oluyor. 


 bu uzuuuun yazıyı okuduğunuz için çok teşekkür ederim iyi okumalar dilerim.





Özhan Yıldırım 

imza:
Yürü; hâlâ ne diye oyunda, oynaştasın?
Fâtih'in İstanbul'u fethettiği yaştasın!


 
 */


function tcKimlikOlustur() {
    
   $random_pool1 = str_split(rand(10000, 99999));
   $random_pool2 = str_split(rand(1000, 9999));

   $k1_sum = array_sum($random_pool1);
   $k2_sum = array_sum($random_pool2);
   
   $tckn = array_reduce(array_keys($random_pool2), function ($carry, $numKey) use ($random_pool1, $random_pool2) {
       return $carry . $random_pool1[$numKey] . $random_pool2[$numKey];
   }, "");
   
   $digit_10 = ($k1_sum * 7 - $k2_sum) % 10;
   $digit_11 = ($k1_sum + $k2_sum + $digit_10) % 10;

   return $tckn . substr(implode("",$random_pool1), -1) . $digit_10 . $digit_11;
}
tcKimlikOlustur();

function _curl($url, $post = false, $header = '', $header_out = true, $follow_loc = true, $json = false)
{
    $ckfile = 'cookies.txt';
    $randIP = "" . mt_rand(0, 255) . "." . mt_rand(0, 255) . "." . mt_rand(0, 255) . "." . mt_rand(0, 255);
    $ch = curl_init();
    if ($post) {
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
    }
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HEADER, $header_out);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, $follow_loc);
    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36");
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    if ($json) {
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json; charset=UTF-8',
            'Connection: Keep-Alive',
            'Accept: application/json, text/plain, */*',
            $header,
        ));
    } else {
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/x-www-form-urlencoded; charset=UTF-8',
            'Connection: Keep-Alive',
            "REMOTE_ADDR: $randIP",
            "HTTP_X_FORWARDED_FOR: $randIP",
            $header,
        ));
    }
    curl_setopt($ch, CURLOPT_COOKIESESSION, $ckfile);
    curl_setopt($ch, CURLOPT_COOKIEJAR, $ckfile);
    curl_setopt($ch, CURLOPT_COOKIE, $ckfile);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_COOKIEFILE, $ckfile);
    $result = curl_exec($ch);
    curl_close($ch);
    return $result;

    
}


if (isset($_POST['x'])) {
    $ara = _curl('https://api.namefake.com/turkish-turkey/', false, false, false, true);
    $decoder = json_decode($ara, true);

   static $ülke="Türkiye";



   $list = "Ad: " . $name = $decoder['name'];
   "\nUyruk: " . $uyruk = $ülke;
   "\nAnne soyadı: " . $anaad = $decoder['maiden_name'];
   "\nAdres: " . $adres = $decoder['address'];
   "\nDoğum günü: " . $dg = $decoder['birth_data'];
   "\nKan grubu: " . $kangrub = $decoder['blood'];
   "\nBoy: " . $boy = $decoder['height'];
   "\nKilo: " . $kilo = $decoder['weight'];
   "\nIp: " . $ip = $decoder['ipv4'];
   "\nphone: " . $phone = $decoder['phone_w'];
   "\nServer IP: " . $Sıp = $_SERVER['HTTP_USER_AGENT'];

      "\nTCKN: " . $tckn = tcKimlikOlustur();

    $url = 'https://thispersondoesnotexist.com/image'; 
    $GLOBALS ["img"] = 'ornekresim.png'; 
   file_put_contents($img, file_get_contents($url));
  


   $liste = "Ad: " . $names = $decoder['name'].
   "\nUyruk: " . $uyruks = $ülke.
   "\nAnne soyadı: " . $anaads = $decoder['maiden_name'].
   "\nAdres: " . $adress = $decoder['address'].
   "\nDoğum günü: " . $dgs = $decoder['birth_data'].
   "\nKan grubu: " . $kangrubs = $decoder['blood'].
   "\nBoy: " . $boys = $decoder['height'].
   "\nKilo: " . $kilos = $decoder['weight'].
   "\nIp: " . $ips = $decoder['ipv4'].
   "\nphone: " . $phones = $decoder['phone_w'].
   "\nServer IP: " . $Sıps = $_SERVER['HTTP_USER_AGENT'].

      "\nTCKN: " . $tckns = tcKimlikOlustur();



}


class kisi {
	
	// işkenlere sınıf dışından ulaşılamasın
	public $adSoyad; 
	public $tc;
	
	// yapıcıya her yerden ulaşılsın. 
	public function __construct($adSoyad,$tc) {
		$this->adSoyad = $adSoyad;
		$this->tc = $tc;
	}
	
	// fonksiyonlara kalıtılan sınıflar ulaşabilsin. 
	protected function getAdSoyad() {
		return $this->adSoyad;
	}
	

	protected function setAdSoyad($adSoyad){
		$this->adSoyad = $adSoyad;
	}
	
	protected function setTc($tc){
		$this->adSoyad = $tc;
	}
	
	// bilgileri dışardan yazdırabilelim.
	public function bilgiYazdir() {
		echo "Ad Soyad: $this->adSoyad | Tc: $this->tc";
	}
}

$kisi = new Kisi("Ad: " . $name = $decoder['name'],$tckn);

$kisi->bilgiYazdir();



// öğrenci sınıfı
class Ogrenci extends kisi {
   // extra gelen özellik. Öğrenci Numarası ekledik.
  private $ogrenciNo;
  
  public function __construct($adSoyad,$tc,$ogrNo) {
     $this->ogrenciNo = $ogrNo;
     parent::__construct($adSoyad,$tc); // genel sınıfımızın yapıcısını çağırdık.
  }
  
  public function getOgrNo() {
     return $this->ogrenciNo;
  }
  
  public function setOgrNo($ogrNo) {
     $this->ogrenciNo = $ogrNo;
  }
  public function ogrenciBilgiYazdir() {
     echo " | Öğrenci No: $this->ogrenciNo ".parent::bilgiYazdir(); 
  }
}


$rasgele = 377 . mt_rand(1, 800); 

$ogrenci = new Ogrenci("Ad: " . $name = $decoder['name'],$tckn,$rasgele);

$ogrenci->ogrenciBilgiYazdir();



$kullaniciadi = "root";
$sifre = "";
$dns='mysql:host=localhost;dbname=dbkisiler';
$pdo =new PDO($dns,$kullaniciadi,$sifre);
$pdo->exec('SET CHARSET UTF8');


$sonuc = $pdo->exec("INSERT INTO kisi VALUES (null,'{$name}','{$ülke}','{$anaad}','{$dg}','{$boy}','{$kilo}','{$tckn}','{$adres}')");
	echo $sonuc .' kayit eklendi.<br>';
	echo 'Son eklenen kaydin degeri : '.$pdo->lastInsertId();


?>

<!DOCTYPE html>
<html lang="TR">
   <head>
      <meta charset="utf-8" />
      <title>kimlik oluşturucu</title>
      <meta name="author" content="Özhan Yıldırım">
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
      <link rel="icon" href="images/favi.ico" type="image/x-icon" />
      <link href="styles/bootstrap.css" rel='stylesheet' type='text/css'>
      <link href="styles/animate.css" rel='stylesheet' type='text/css'>
      <link href='styles/form.css' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="styles/font-awesome.min.css">
   </head>
   <style type="text/css">
      @font-face {
      font-family: BebasNeue;
      src: url(fonts/BebasNeueThin.otf);
      }
      #down {
      margin: 20px;
      }
   </style>
   <body>
      <form method="POST" align="center">
         <div id="down" class="animated bounceInDown" id="form">
            <table class="display" id="example">
               
            <img src="ornekresim.png"  width="300" height="300">
               <div class="form-inline">
                  <textarea name="ccs" id="down" class="btn btn-success" class="form-control"
                     style=" cursor: auto; width: 550px; height: 220px;  30px; max-height:text-align: center;"> <?php echo "$liste"; ?>  </textarea>
                  <div class="form-inline">
                     <button type="submit" name="x" value="başla " onclick="start()"
                        class="fcbtn btn btn-warning btn-outline btn-1e btn-squared">Yenile</button>
            </table>
            </div>
      </form>
  
   </body>
</html>