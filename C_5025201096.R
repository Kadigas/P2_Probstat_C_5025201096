#Nomor 1
#a
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
stDev <- sd(x-y)
print(stDev)

#b
t.test(x,y,paired = TRUE)

#c
#Didapat p-value = 6.003e-05, maka H0 "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas ????"
#ditolak sehingga H1 diterima

#2
#a
#Setuju karena kesimpulan dari uji z menunjukkan rata-rata 23.500 menolak H0 "mobil dikemudikan rata-rata tidak lebih dari 20.000 kilometer per tahun." 
#sehingga mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun

#b
library(BSDA)
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, alternative = "less", mu = 20000)
#Berdasarkan output yang dihasilkan, diperoleh nilai Zhitung adalah 8.9744, p-value adalah 1, serta selang atas kepercayaan rata rata berada pada nilai 24141.49.

#c
#Diketahui P(Z > 8.97) = 1 - P(Z < 8.97)
#<=> 1-1
#<=> 0
#maka H0 ditolak sehingga kesimpulannya adalah mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.

#3
#a
# H0 = rata-rata saham di Bandung tidak berbeda dengan rata-rata saham di Bali
# H1 = rata-rata saham di Bandung berbeda dengan rata-rata saham di Bali

#b
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, n.y = 27, alternative = "greater", 
          mu = 0, var.equal = TRUE, conf.level = 0.90)

#c
install.packages("mosaic")
library(mosaic)
plotDist(dist ='t', df = 2, col="magenta")

#d
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

#e
#Dari hasil t-test didapatkan p-value < a. Maka null hypotesis / H0 ditolak.

#f
#Kesimpulannya rata-rata saham di Bandung berbeda dengan rata-rata saham di Bali.