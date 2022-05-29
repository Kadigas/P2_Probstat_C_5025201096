# P2_Probstat_C_5025201096

### Nama: Andhika Ditya Bagaskara D.
### NRP: 5025201096
### Kelas: Probstat C

### Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

<img src="/Screenshots/table1.png">

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

#### a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

```R
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
stDev <- sd(x-y)
print(stDev)
```

<img src="/Screenshots/1a.png">

#### b. carilah nilai t (p-value)

```R
t.test(x,y,paired = TRUE)
```

<img src="/Screenshots/1b.png">

#### c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

Didapat p-value = 6.003e-05 mendekati 0, maka H0 "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas A" ditolak sehingga H1 diterima

### Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

```R
library(BSDA)
```

#### a. Apakah Anda setuju dengan klaim tersebut?

Setuju karena kesimpulan dari uji z menunjukkan rata-rata 23.500 menolak H0 "mobil dikemudikan rata-rata tidak lebih dari 20.000 kilometer per tahun."  sehingga mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun

#### b. Jelaskan maksud dari output yang dihasilkan!

```R
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, alternative = "less", mu = 20000)
```
#### c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

Diketahui:

P(Z > 8.97) = 1 - P(Z < 8.97)

<=> 1-1

<=> 0

maka H0 ditolak sehingga kesimpulannya adalah mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.


### Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut:

<img src="/Screenshots/table3.png">

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

#### A. H0 dan H1
H0 = rata-rata saham di Bandung tidak berbeda dengan rata-rata saham di Bali

H1 = rata-rata saham di Bandung berbeda dengan rata-rata saham di Bali

#### B. Hitung Sampel Statistik

```R
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, n.y = 27, alternative = "greater", 
          mu = 0, var.equal = TRUE, conf.level = 0.95)
```
<img src="/Screenshots/3b.png">

#### C. Lakukan Uji Statistik (df =2)

```R
install.packages("mosaic")
library(mosaic)
plotDist(dist ='t', df = 2, col="magenta")
```
<img src="/Screenshots/3c.png">

#### D. Nilai Kritikal

```R
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```
<img src="/Screenshots/3d.png">

#### E. Keputusan
Dari hasil t-test didapatkan p-value < a. Maka H0 ditolak dan terima H1.

#### F. Kesimpulan
Kesimpulannya rata-rata saham di Bandung berbeda dengan rata-rata saham di Bali.

### Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika :
##### diketahui dataset https://intip.in/datasetprobstat1
##### H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
Maka Kerjakan atau Carilah:
#### A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
#### B. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
#### C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
#### D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
#### E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.
#### F. Visualisasikan data dengan ggplot2

### Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:
#### a. Buatlah plot sederhana untuk visualisasi data
#### b. Lakukan uji ANOVA dua arah
#### c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
#### d. Lakukan uji Tukey
#### e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
