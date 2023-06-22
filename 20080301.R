# -------------------------------------------------------------------------- ###
# Soru 1a --- 
# -------------------------------------------------------------------------- ###
https://github.com/serratimur/exam.git
# -------------------------------------------------------------------------- ###
# Soru 2a ----
# -------------------------------------------------------------------------- ###
R
Copy code
library(dplyr)

titanic %>%
  group_by(sex) %>%
  summarize(mean_fare = mean(fare))
Bu kod, veri setini cinsiyete göre gruplandırır ve her bir grup için ortalama ücreti hesaplar. Sonuç olarak, kadınlar mı yoksa erkekler mi daha fazla ödeme yaptığını gösteren bir çıktı alırız.


# -------------------------------------------------------------------------- ###
# Soru 2b ----
# -------------------------------------------------------------------------- ###
Kayıp (NA) olmayan gözlemler için cinsiyete göre yaşlara ait bir kutu grafiği çizmek için tidyverse paketindeki ggplot2 fonksiyonlarını kullanabiliriz.
  
  R
Copy code
library(tidyverse)

titanic %>%
  drop_na(age) %>%
  ggplot(aes(x = sex, y = age, fill = sex)) +
  geom_boxplot()
Bu kod, yaş değerleri eksik olan gözlemleri çıkardıktan sonra cinsiyete göre yaşlara ait bir kutu grafiği çizer. Kadınlar ve erkekler arasındaki yaş dağılımını karşılaştıran bir görselleştirme elde ederiz

# -------------------------------------------------------------------------- ###
# Soru 2c ----
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Soru 3a ----
# -------------------------------------------------------------------------- ###
Verilen x vektörü R'da tanımlanmış olsaydı:

R
x <- 10:20
x[seq(1, 5, by = 3)]

Sonucu şu şekilde olurdu:

[1] 10 13

`seq(1, 5, by = 3)` ifadesi 1'den başlayarak 5'e kadar 3'er artan bir diziyi oluşturur: 1, 4. Bu dizi, x vektörünün indeksleri olarak kullanılır. Bu nedenle, `x[seq(1, 5, by = 3)]` ifadesi, x vektörünün 1. ve 4. elemanlarını döndürür: 10 ve 13.

# -------------------------------------------------------------------------- ###
# Soru 3b ----
# -------------------------------------------------------------------------- ###
Eşleşen değerlere sahip tüm satırları ve dat1'deki ve dat2'deki tüm sütunları döndürerek bir tibble olan "dat3" adlı yeni bir tibble oluşturmak için `inner_join()` fonksiyonu
  
  R
dat3 <- inner_join(dat1, dat2)


Bu komut, dat1 ve dat2 tibbles'ının eşleşen değerlere sahip satırlarını birleştirir ve "dat3" adlı yeni bir tibble oluşturur. Oluşturulan tibble, dat1 ve dat2'deki tüm sütunları içerir.

# -------------------------------------------------------------------------- ###
# Soru 3c ----
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Soru 3d ----
# -------------------------------------------------------------------------- ###

Verilen komutlar çalıştırıldığında `myresult` değişkeni aşağıdaki gibi olur:
  
  R
mylist <- list(1:3, c(3:5, NA))
myresult <- map(mylist, ~ mean(.x, na.rm = TRUE)) %>% unlist()

print(myresult)


Çıktı:
  
  
  [1] 2.0 4.0


`mylist` adlı liste, iki eleman içerir. İlk eleman 1, 2 ve 3'ten oluşan bir vektördür, ikinci eleman ise 3, 4, 5 ve bir NA değerinden oluşan bir vektördür.

`map(mylist, ~ mean(.x, na.rm = TRUE))` ifadesi, `mylist` içindeki her bir eleman üzerinde `mean()` fonksiyonunu uygulayarak ortalama değerini hesaplar. `na.rm = TRUE` parametresi, NA değerlerini dikkate almaz.

Sonuçlar `unlist()` fonksiyonuyla tek bir vektör haline getirilir ve `myresult` değişkenine atanır. İlk elemanın ortalaması 2.0'dır ve ikinci elemanın ortalaması 4.0'dır. Bu değerler `myresult` vektöründe sırasıyla bulunurlar.
# -------------------------------------------------------------------------- ###
# Soru 3e ----
# -------------------------------------------------------------------------- ###

Z = 5(Xn - μ) / σ şeklinde tanımlanan bir durumda P(Z ≤ 1) olasılığını hesaplamak için :

R
pnorm(1, mean = 0, sd = 1/5)


Bu kod, `pnorm()` fonksiyonunu kullanarak standart normal dağılımın kümülatif dağılım fonksiyonunu hesaplar. İlk parametre olarak 1 verildiği için, P(Z ≤ 1) olasılığını elde etmek için kullanılır. `mean` parametresi μ'ün değerini, `sd` parametresi ise σ'nın değerinin tersinin (1/σ) değerini alır.

Eğer μ ve σ değerleri farklı ise, kodu buna göre  Örneğin, μ = 2 ve σ = 3 olsun:

R
pnorm(1, mean = 2, sd = 3/5)


Bu durumda, μ'ye 2 değeri atanır ve σ'nın tersi (1/σ) olan 3/5 değeri atanır.

# -------------------------------------------------------------------------- ###
# Soru 3f ----
# -------------------------------------------------------------------------- ###
Zar atışlarını taklit eden ve her bir zarın sonucunu gösteren bir fonksiyonu aşağıdaki R koduyla yazabilirsiniz:

R
simulate_dice_roll <- function() {
  dice1 <- sample(1:6, 1, replace = TRUE)  # İlk zar atışı
  dice2 <- sample(1:6, 1, replace = TRUE)  # İkinci zar atışı
  
  cat("Zar 1:", dice1, "\n")
  cat("Zar 2:", dice2, "\n")
  
  return(list(dice1, dice2))
}


Bu fonksiyon, `simulate_dice_roll()` olarak adlandırılır ve her çağrıldığında iki zarın atışını simüle eder. `sample()` fonksiyonu, 1'den 6'ya kadar olan sayılardan rastgele bir sayı seçer ve `replace = TRUE` parametresiyle tekrarlı seçim yapar.

Fonksiyonun sonucu, her bir zarın sonucunu gösteren bir liste olarak döndürülür. Fonksiyon içinde `cat()` fonksiyonu kullanılarak zar sonuçları ekrana yazdırılır.



R
result <- simulate_dice_roll()


`result` değişkeni, bir liste olarak iki zarın sonuçlarını içerecektir. Örneğin, `result[[1]]` ifadesiyle birinci zarın sonucunu alabilirsiniz.

# -------------------------------------------------------------------------- ###
# Soru 3g ----
# -------------------------------------------------------------------------- ###
 istatistiksel olarak farklı olup olmadığını test eder. `age` değişkeni ile `survived` değişkeni arasındaki ilişkiyi inceler. `data` parametresiyle `titanic` veri setini belirtirsiniz.

Bu test, varsayılan olarak iki grup arasında eşit varyans varsayımına dayanır. Eğer eşit varyans varsayımı geçerli değilse, `var.equal = FALSE` parametresini `t.test()` fonksiyonuna ekleyebilirsiniz:

R
t.test(age ~ survived, data = titanic, var.equal = FALSE)


Bu şekilde, varyansların eşit olmadığı durumu test edebilirsiniz. Test sonucunda, p değeri (p-value) elde edersiniz. Eğer p değeri anlamlı bir şekilde düşükse (genellikle 0.05'ten küçük olarak kabul edilir), yaş ortalamaları arasında istatistiksel olarak anlamlı bir fark olduğunu söyleyebilirsiniz.

# -------------------------------------------------------------------------- ###
# Soru 4a ----
# -------------------------------------------------------------------------- ###
dat2 <- dat %>%
  pivot_longer(cols = starts_with("201"), names_to = "year", values_to = "gdp") %>%
  mutate(country = factor(country))

# -------------------------------------------------------------------------- ###
# Soru 5a ----
# -------------------------------------------------------------------------- ###
library(ggplot2)

# Veri setini oluşturmak
dat <- tibble::tribble(
  ~price, ~cut,     ~depth, ~color,
  326,    "Ideal",  61.5,   "E",
  326,    "Premium",59.8,   "E",
  327,    "Good",   56.9,   "E",
  334,    "Premium",62.4,   "I",
  335,    "Good",   63.3,   "J"
)

# Grafik çizimi
ggplot(dat, aes(x = cut, y = price, color = color)) +
  geom_point() +
  labs(x = "Cut", y = "Price", color = "Color") +
  theme_minimal()
