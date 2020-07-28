#### Carregando bibliotecas ####

#install.packages('dplyr')
library('dplyr')

#install.packages("tidyr")
library('tidyr')

#install.packages("data.table")
library('data.table')

#install.packages('stringr')
library('stringr')

#install.packages('Amelia')
library('Amelia')

# install.packages("tidyverse")
library(tidyverse)

# install.packages("lubridate")
library(lubridate)

# install.packages("ggplot2")
library(ggplot2)

#library(xlsx)

library(rJava)

#install.packages("read.dbc")

library(read.dbc)

#install.packages("forcats")

#library(forcats)

library("foreign")

#install.packages("foreign")

#install.packages("openxlsx")

library("openxlsx")

library(RColorBrewer)

##############Salvando dados################

write.csv(BR_apac_trat_2015_2018, "C:/Users/lemos/Downloads/BR_apac_trat_2015_2018.csv")

write.csv(BR_APAC_trat_2015_un, "C:/Users/lemos/Downloads/BR_APAC_trat_2015_un.csv")

write.csv(BR_APAC_trat_2016_un, "C:/Users/lemos/Downloads/BR_APAC_trat_2016_un.csv")

write.csv(BR_APAC_trat_2017_un, "C:/Users/lemos/Downloads/BR_APAC_trat_2017_un.csv")

write.csv(BR_APAC_trat_2018_un, "C:/Users/lemos/Downloads/BR_APAC_trat_2018_un.csv")


##### Carregando arquivos ####

## AC - 2019 # MS

AC_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1901.dbc")
AC_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1902.dbc")
AC_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1903.dbc")
AC_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1904.dbc")
AC_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1905.dbc")
AC_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1906.dbc")
AC_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1907.dbc")
AC_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1908.dbc")
AC_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1909.dbc")
AC_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1910.dbc")
AC_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1911.dbc")
AC_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1912.dbc")

## AC - 2019 # Mikael

AC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1901.dbc")
AC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1902.dbc")
AC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1903.dbc")
AC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1904.dbc")
AC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1905.dbc")
AC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1906.dbc")
AC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1907.dbc")
AC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1908.dbc")
AC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1909.dbc")
AC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1910.dbc")
AC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1911.dbc")
AC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1912.dbc")

## AC - 2019 # Mikael - pen drive

AC_APAC_med_01 <- read.dbc("D:/AC_APAC_med/AMAC1901.dbc")
AC_APAC_med_02 <- read.dbc("D:/AC_APAC_med/AMAC1902.dbc")
AC_APAC_med_03 <- read.dbc("D:/AC_APAC_med/AMAC1903.dbc")
AC_APAC_med_04 <- read.dbc("D:/AC_APAC_med/AMAC1904.dbc")
AC_APAC_med_05 <- read.dbc("D:/AC_APAC_med/AMAC1905.dbc")
AC_APAC_med_06 <- read.dbc("D:/AC_APAC_med/AMAC1906.dbc")
AC_APAC_med_07 <- read.dbc("D:/AC_APAC_med/AMAC1907.dbc")
AC_APAC_med_08 <- read.dbc("D:/AC_APAC_med/AMAC1908.dbc")
AC_APAC_med_09 <- read.dbc("D:/AC_APAC_med/AMAC1909.dbc")
AC_APAC_med_10 <- read.dbc("D:/AC_APAC_med/AMAC1910.dbc")
AC_APAC_med_11 <- read.dbc("D:/AC_APAC_med/AMAC1911.dbc")
AC_APAC_med_12 <- read.dbc("D:/AC_APAC_med/AMAC1912.dbc")

AC_APAC_med <- do.call("rbind", list(AC_APAC_med_01, AC_APAC_med_02, AC_APAC_med_03, AC_APAC_med_04, AC_APAC_med_05,AC_APAC_med_06, AC_APAC_med_07, AC_APAC_med_08, AC_APAC_med_09, AC_APAC_med_10, AC_APAC_med_11, AC_APAC_med_12))


AC_APAC_med$UF <- "AC"

## AL - 2019 - MS

AL_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1901.dbc")
AL_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1902.dbc")
AL_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1903.dbc")
AL_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1904.dbc")
AL_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1905.dbc")
AL_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1906.dbc")
AL_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1908.dbc")
AL_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1909.dbc")
AL_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1910.dbc")
AL_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1911.dbc")
#AL_APAC_med_12<- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1912.dbc")

# AL - 2019 - Mikael

AL_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1901.dbc")
AL_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1902.dbc")
AL_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1903.dbc")
AL_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1904.dbc")
AL_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1905.dbc")
AL_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1906.dbc")
AL_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1908.dbc")
AL_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1909.dbc")
AL_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1910.dbc")
AL_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1911.dbc")
AL_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1912.dbc")

# AL - 2019 - Mikael - pen drive

AL_APAC_med_01 <- read.dbc("D:/AL_APAC_med/AMAL1901.dbc")
AL_APAC_med_02 <- read.dbc("D:/AL_APAC_med/AMAL1902.dbc")
AL_APAC_med_03 <- read.dbc("D:/AL_APAC_med/AMAL1903.dbc")
AL_APAC_med_04 <- read.dbc("D:/AL_APAC_med/AMAL1904.dbc")
AL_APAC_med_05 <- read.dbc("D:/AL_APAC_med/AMAL1905.dbc")
AL_APAC_med_06 <- read.dbc("D:/AL_APAC_med/AMAL1906.dbc")
AL_APAC_med_08 <- read.dbc("D:/AL_APAC_med/AMAL1908.dbc")
AL_APAC_med_09 <- read.dbc("D:/AL_APAC_med/AMAL1909.dbc")
AL_APAC_med_10 <- read.dbc("D:/AL_APAC_med/AMAL1910.dbc")
AL_APAC_med_11 <- read.dbc("D:/AL_APAC_med/AMAL1911.dbc")
#AL_APAC_med_12 <- read.dbc("D:/AL_APAC_med/AMAL1912.dbc")


AL_APAL_med <- do.call("rbind", list(AL_APAC_med_01, AL_APAC_med_02, AL_APAC_med_03, AL_APAC_med_04, AL_APAC_med_05,AL_APAC_med_06, AL_APAC_med_08,AL_APAC_med_09, AL_APAC_med_10, AL_APAC_med_11, AL_APAC_med_12 ))

AL_APAL_med$UF <- "AL"

## AM - 2019 - MS

AM_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1901.dbc")
AM_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1902.dbc")
AM_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1903.dbc")
AM_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1904.dbc")
AM_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1905.dbc")
AM_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1906.dbc")
AM_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1907.dbc")
AM_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1908.dbc")
AM_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1909.dbc")
AM_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1910.dbc")
AM_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1911.dbc")
#AM_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1912.dbc")

## AM - 2019 - Mikael

AM_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1901.dbc")
AM_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1902.dbc")
AM_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1903.dbc")
AM_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1904.dbc")
AM_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1905.dbc")
AM_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1906.dbc")
AM_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1907.dbc")
AM_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1908.dbc")
AM_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1909.dbc")
AM_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1910.dbc")
AM_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1911.dbc")
AM_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1912.dbc")

## AM - 2019 - Mikael - pen drive

AM_APAC_med_01 <- read.dbc("D:/AM_APAC_med/AMAM1901.dbc")
AM_APAC_med_02 <- read.dbc("D:/AM_APAC_med/AMAM1902.dbc")
AM_APAC_med_03 <- read.dbc("D:/AM_APAC_med/AMAM1903.dbc")
AM_APAC_med_04 <- read.dbc("D:/AM_APAC_med/AMAM1904.dbc")
AM_APAC_med_05 <- read.dbc("D:/AM_APAC_med/AMAM1905.dbc")
AM_APAC_med_06 <- read.dbc("D:/AM_APAC_med/AMAM1906.dbc")
AM_APAC_med_07 <- read.dbc("D:/AM_APAC_med/AMAM1907.dbc")
AM_APAC_med_08 <- read.dbc("D:/AM_APAC_med/AMAM1908.dbc")
AM_APAC_med_09 <- read.dbc("D:/AM_APAC_med/AMAM1909.dbc")
AM_APAC_med_10 <- read.dbc("D:/AM_APAC_med/AMAM1910.dbc")
AM_APAC_med_11 <- read.dbc("D:/AM_APAC_med/AMAM1911.dbc")
#AM_APAC_med_12 <- read.dbc("D:/AM_APAC_med/AMAM1912.dbc")


AM_APAL_med <- do.call("rbind", list(AM_APAC_med_01, AM_APAC_med_02, AM_APAC_med_03, AM_APAC_med_04, AM_APAC_med_05,AM_APAC_med_06, AM_APAC_med_07, AM_APAC_med_08, AM_APAC_med_09, AM_APAC_med_10, AM_APAC_med_11, AM_APAC_med_12))

AM_APAL_med$UF <- "AM"

## AP - 2019 - MS

AP_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1901.dbc")
AP_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1902.dbc")
AP_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1903.dbc")
AP_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1904.dbc")
AP_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1905.dbc")
AP_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1906.dbc")
AP_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1907.dbc")
AP_APAC_med_08  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1908.dbc")
AP_APAC_med_09  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1909.dbc")
AP_APAC_med_10  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1910.dbc")
AP_APAC_med_11  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1911.dbc")
#AP_APAC_med_12  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1912.dbc")

## AP - 2019 - Mikael

AP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1901.dbc")
AP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1902.dbc")
AP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1903.dbc")
AP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1904.dbc")
AP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1905.dbc")
AP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1906.dbc")
AP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1907.dbc")
AP_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1908.dbc")
AP_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1909.dbc")
AP_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1910.dbc")
AP_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1911.dbc")
AP_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1912.dbc")

## AP - 2019 - Mikael - pen drive

AP_APAC_med_01 <- read.dbc("D:/AP_APAC_med/AMAP1901.dbc")
AP_APAC_med_02 <- read.dbc("D:/AP_APAC_med/AMAP1902.dbc")
AP_APAC_med_03 <- read.dbc("D:/AP_APAC_med/AMAP1903.dbc")
AP_APAC_med_04 <- read.dbc("D:/AP_APAC_med/AMAP1904.dbc")
AP_APAC_med_05 <- read.dbc("D:/AP_APAC_med/AMAP1905.dbc")
AP_APAC_med_06 <- read.dbc("D:/AP_APAC_med/AMAP1906.dbc")
AP_APAC_med_07 <- read.dbc("D:/AP_APAC_med/AMAP1907.dbc")
AP_APAC_med_08  <- read.dbc("D:/AP_APAC_med/AMAP1908.dbc")
AP_APAC_med_09  <- read.dbc("D:/AP_APAC_med/AMAP1909.dbc")
AP_APAC_med_10  <- read.dbc("D:/AP_APAC_med/AMAP1910.dbc")
AP_APAC_med_11  <- read.dbc("D:/AP_APAC_med/AMAP1911.dbc")
#AP_APAC_med_12  <- read.dbc("D:/AP_APAC_med/AMAP1912.dbc")

AP_APAL_med <- do.call("rbind", list(AP_APAC_med_01, AP_APAC_med_02, AP_APAC_med_03, AP_APAC_med_04, AP_APAC_med_05,AP_APAC_med_06, AP_APAC_med_07, AP_APAC_med_08, AP_APAC_med_09, AP_APAC_med_10, AP_APAC_med_11, AP_APAC_med_12))


AP_APAL_med$UF <- "AP"

## BA- 2019  - MS

BA_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1901.dbc")
BA_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1902.dbc")
BA_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1903.dbc")
BA_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1904.dbc")
BA_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1905.dbc")
BA_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1906.dbc")
BA_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1907.dbc")
BA_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1908.dbc")
BA_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1909.dbc")
BA_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1910.dbc")
BA_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1911.dbc")
#BA_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1912.dbc")

# BA- 2019  - Mikael

BA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1901.dbc")
BA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1902.dbc")
BA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1903.dbc")
BA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1904.dbc")
BA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1905.dbc")
BA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1906.dbc")
BA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1907.dbc")
BA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1908.dbc")
BA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1909.dbc")
BA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1910.dbc")
BA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1911.dbc")
BA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1912.dbc")

# BA- 2019  - Mikael - pen drive

BA_APAC_med_01 <- read.dbc("D:/BA_APAC_med/AMBA1901.dbc")
BA_APAC_med_02 <- read.dbc("D:/BA_APAC_med/AMBA1902.dbc")
BA_APAC_med_03 <- read.dbc("D:/BA_APAC_med/AMBA1903.dbc")
BA_APAC_med_04 <- read.dbc("D:/BA_APAC_med/AMBA1904.dbc")
BA_APAC_med_05 <- read.dbc("D:/BA_APAC_med/AMBA1905.dbc")
BA_APAC_med_06 <- read.dbc("D:/BA_APAC_med/AMBA1906.dbc")
BA_APAC_med_07 <- read.dbc("D:/BA_APAC_med/AMBA1907.dbc")
BA_APAC_med_08 <- read.dbc("D:/BA_APAC_med/AMBA1908.dbc")
BA_APAC_med_09 <- read.dbc("D:/BA_APAC_med/AMBA1909.dbc")
BA_APAC_med_10 <- read.dbc("D:/BA_APAC_med/AMBA1910.dbc")
BA_APAC_med_11 <- read.dbc("D:/BA_APAC_med/AMBA1911.dbc")
#BA_APAC_med_12 <- read.dbc("D:/BA_APAC_med/AMBA1912.dbc")

BA_APAL_med <- do.call("rbind", list(BA_APAC_med_01, BA_APAC_med_02, BA_APAC_med_03, BA_APAC_med_04, BA_APAC_med_05,BA_APAC_med_06, BA_APAC_med_07, BA_APAC_med_08,BA_APAC_med_09, BA_APAC_med_10, BA_APAC_med_11, BA_APAC_med_12 ))

BA_APAL_med$UF <- "BA"

## CE - 2019 - MS

CE_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1901.dbc")
CE_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1902.dbc")
CE_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1903.dbc")
CE_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1904.dbc")
CE_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1905.dbc")
CE_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1906.dbc")
CE_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1907.dbc")
CE_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1908.dbc")
CE_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1909.dbc")
CE_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1910.dbc")
CE_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1911.dbc")
#CE_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1912.dbc")

## CE - 2019 - Mikael

CE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1901.dbc")
CE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1902.dbc")
CE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1903.dbc")
CE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1904.dbc")
CE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1905.dbc")
CE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1906.dbc")
CE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1907.dbc")
CE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1908.dbc")
CE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1909.dbc")
CE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1910.dbc")
CE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1911.dbc")
CE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1912.dbc")

## CE - 2019 - Mikael - pen drive

CE_APAC_med_01 <- read.dbc("D:/CE_APAC_med/AMCE1901.dbc")
CE_APAC_med_02 <- read.dbc("D:/CE_APAC_med/AMCE1902.dbc")
CE_APAC_med_03 <- read.dbc("D:/CE_APAC_med/AMCE1903.dbc")
CE_APAC_med_04 <- read.dbc("D:/CE_APAC_med/AMCE1904.dbc")
CE_APAC_med_05 <- read.dbc("D:/CE_APAC_med/AMCE1905.dbc")
CE_APAC_med_06 <- read.dbc("D:/CE_APAC_med/AMCE1906.dbc")
CE_APAC_med_07 <- read.dbc("D:/CE_APAC_med/AMCE1907.dbc")
CE_APAC_med_08 <- read.dbc("D:/CE_APAC_med/AMCE1908.dbc")
CE_APAC_med_09 <- read.dbc("D:/CE_APAC_med/AMCE1909.dbc")
CE_APAC_med_10 <- read.dbc("D:/CE_APAC_med/AMCE1910.dbc")
CE_APAC_med_11 <- read.dbc("D:/CE_APAC_med/AMCE1911.dbc")
#CE_APAC_med_12 <- read.dbc("D:/CE_APAC_med/AMCE1912.dbc")


CE_APAL_med <- do.call("rbind", list(CE_APAC_med_01, CE_APAC_med_02, CE_APAC_med_03, CE_APAC_med_04, CE_APAC_med_05,CE_APAC_med_06, CE_APAC_med_07, CE_APAC_med_08, CE_APAC_med_09, CE_APAC_med_10, CE_APAC_med_11, CE_APAC_med_12))

CE_APAL_med$UF <- "CE"

## DF - 2019 - MS

DF_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1901.dbc")
DF_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1902.dbc")
DF_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1903.dbc")
DF_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1904.dbc")
DF_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1905.dbc")
DF_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1906.dbc")
DF_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1907.dbc")
DF_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1908.dbc")
DF_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1909.dbc")
DF_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1910.dbc")
DF_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1911.dbc")
#DF_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1912.dbc")

## DF - 2019 - Mikael

DF_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1901.dbc")
DF_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1902.dbc")
DF_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1903.dbc")
DF_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1904.dbc")
DF_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1905.dbc")
DF_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1906.dbc")
DF_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1907.dbc")
DF_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1908.dbc")
DF_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1909.dbc")
DF_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1910.dbc")
DF_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1911.dbc")
DF_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1912.dbc")

## DF - 2019 - Mikael - pen drive

DF_APAC_med_01 <- read.dbc("D:/DF_APAC_med/AMDF1901.dbc")
DF_APAC_med_02 <- read.dbc("D:/DF_APAC_med/AMDF1902.dbc")
DF_APAC_med_03 <- read.dbc("D:/DF_APAC_med/AMDF1903.dbc")
DF_APAC_med_04 <- read.dbc("D:/DF_APAC_med/AMDF1904.dbc")
DF_APAC_med_05 <- read.dbc("D:/DF_APAC_med/AMDF1905.dbc")
DF_APAC_med_06 <- read.dbc("D:/DF_APAC_med/AMDF1906.dbc")
DF_APAC_med_07 <- read.dbc("D:/DF_APAC_med/AMDF1907.dbc")
DF_APAC_med_08 <- read.dbc("D:/DF_APAC_med/AMDF1908.dbc")
DF_APAC_med_09 <- read.dbc("D:/DF_APAC_med/AMDF1909.dbc")
DF_APAC_med_10 <- read.dbc("D:/DF_APAC_med/AMDF1910.dbc")
DF_APAC_med_11 <- read.dbc("D:/DF_APAC_med/AMDF1911.dbc")
DF_APAC_med_12 <- read.dbc("D:/DF_APAC_med/AMDF1912.dbc")

DF_APAL_med <- do.call("rbind", list(DF_APAC_med_01, DF_APAC_med_02, DF_APAC_med_03, DF_APAC_med_04, DF_APAC_med_05,DF_APAC_med_06, DF_APAC_med_07, DF_APAC_med_08, DF_APAC_med_09, DF_APAC_med_10, DF_APAC_med_11, DF_APAC_med_12))

DF_APAL_med$UF <- "DF"

## ES - 2019 - MS

ES_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1901.dbc")
ES_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1902.dbc")
ES_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1903.dbc")
ES_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1904.dbc")
ES_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1905.dbc")
ES_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1906.dbc")
ES_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1907.dbc")
ES_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1908.dbc")
ES_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1909.dbc")
ES_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1910.dbc")
ES_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1911.dbc")
#ES_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1912.dbc")

## ES - 2019 - Mikael

ES_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1901.dbc")
ES_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1902.dbc")
ES_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1903.dbc")
ES_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1904.dbc")
ES_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1905.dbc")
ES_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1906.dbc")
ES_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1907.dbc")
ES_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1908.dbc")
ES_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1909.dbc")
ES_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1910.dbc")
ES_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1911.dbc")
ES_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1912.dbc")

## ES - 2019 - Mikael - pen drive

ES_APAC_med_01 <- read.dbc("D:/ES_APAC_med/AMES1901.dbc")
ES_APAC_med_02 <- read.dbc("D:/ES_APAC_med/AMES1902.dbc")
ES_APAC_med_03 <- read.dbc("D:/ES_APAC_med/AMES1903.dbc")
ES_APAC_med_04 <- read.dbc("D:/ES_APAC_med/AMES1904.dbc")
ES_APAC_med_05 <- read.dbc("D:/ES_APAC_med/AMES1905.dbc")
ES_APAC_med_06 <- read.dbc("D:/ES_APAC_med/AMES1906.dbc")
ES_APAC_med_07 <- read.dbc("D:/ES_APAC_med/AMES1907.dbc")
ES_APAC_med_08 <- read.dbc("D:/ES_APAC_med/AMES1908.dbc")
ES_APAC_med_09 <- read.dbc("D:/ES_APAC_med/AMES1909.dbc")
ES_APAC_med_10 <- read.dbc("D:/ES_APAC_med/AMES1910.dbc")
ES_APAC_med_11 <- read.dbc("D:/ES_APAC_med/AMES1911.dbc")
#ES_APAC_med_12 <- read.dbc("D:/ES_APAC_med/AMES1912.dbc")


ES_APAL_med <- do.call("rbind", list(ES_APAC_med_01, ES_APAC_med_02, ES_APAC_med_03, ES_APAC_med_04, ES_APAC_med_05,ES_APAC_med_06, ES_APAC_med_07, ES_APAC_med_08, ES_APAC_med_09, ES_APAC_med_10, ES_APAC_med_11, ES_APAC_med_12))

ES_APAL_med$UF <- "ES" 

## GO - 2019 - MS

GO_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1901.dbc")
GO_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1902.dbc")
GO_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1903.dbc")
GO_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1904.dbc")
GO_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1905.dbc")
GO_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1906.dbc")
GO_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1907.dbc")
GO_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1908.dbc")
GO_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1909.dbc")
GO_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1910.dbc")
GO_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1911.dbc")
#GO_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1912.dbc")

## GO - 2019 - Mikael

GO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1901.dbc")
GO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1902.dbc")
GO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1903.dbc")
GO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1904.dbc")
GO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1905.dbc")
GO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1906.dbc")
GO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1907.dbc")
GO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1908.dbc")
GO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1909.dbc")
GO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1910.dbc")
GO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1911.dbc")
GO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1912.dbc")

## GO - 2019 - Mikael - pen drive

GO_APAC_med_01 <- read.dbc("D:/GO_APAC_med/AMGO1901.dbc")
GO_APAC_med_02 <- read.dbc("D:/GO_APAC_med/AMGO1902.dbc")
GO_APAC_med_03 <- read.dbc("D:/GO_APAC_med/AMGO1903.dbc")
GO_APAC_med_04 <- read.dbc("D:/GO_APAC_med/AMGO1904.dbc")
GO_APAC_med_05 <- read.dbc("D:/GO_APAC_med/AMGO1905.dbc")
GO_APAC_med_06 <- read.dbc("D:/GO_APAC_med/AMGO1906.dbc")
GO_APAC_med_07 <- read.dbc("D:/GO_APAC_med/AMGO1907.dbc")
GO_APAC_med_08 <- read.dbc("D:/GO_APAC_med/AMGO1908.dbc")
GO_APAC_med_09 <- read.dbc("D:/GO_APAC_med/AMGO1909.dbc")
GO_APAC_med_10 <- read.dbc("D:/GO_APAC_med/AMGO1910.dbc")
GO_APAC_med_11 <- read.dbc("D:/GO_APAC_med/AMGO1911.dbc")
#GO_APAC_med_12 <- read.dbc("D:/GO_APAC_med/AMGO1912.dbc")

GO_APAL_med <- do.call("rbind", list(GO_APAC_med_01, GO_APAC_med_02, GO_APAC_med_03, GO_APAC_med_04, GO_APAC_med_05,GO_APAC_med_06, GO_APAC_med_07, GO_APAC_med_08, GO_APAC_med_09, GO_APAC_med_10, GO_APAC_med_11, GO_APAC_med_12))

GO_APAL_med$UF <- "GO"

## MA - 2019 - MS

MA_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1901.dbc")
MA_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1902.dbc")
MA_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1903.dbc")
MA_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1904.dbc")
MA_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1905.dbc")
MA_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1906.dbc")
MA_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1907.dbc")
MA_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1908.dbc")
MA_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1909.dbc")
MA_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1910.dbc")
MA_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1911.dbc")
#MA_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1912.dbc")

## MA - 2019 - Mikael

MA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1901.dbc")
MA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1902.dbc")
MA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1903.dbc")
MA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1904.dbc")
MA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1905.dbc")
MA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1906.dbc")
MA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1907.dbc")
MA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1908.dbc")
MA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1909.dbc")
MA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1910.dbc")
MA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1911.dbc")
MA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1912.dbc")

## MA - 2019 - Mikael - pen drive

MA_APAC_med_01 <- read.dbc("D:/MA_APAC_med/AMMA1901.dbc")
MA_APAC_med_02 <- read.dbc("D:/MA_APAC_med/AMMA1902.dbc")
MA_APAC_med_03 <- read.dbc("D:/MA_APAC_med/AMMA1903.dbc")
MA_APAC_med_04 <- read.dbc("D:/MA_APAC_med/AMMA1904.dbc")
MA_APAC_med_05 <- read.dbc("D:/MA_APAC_med/AMMA1905.dbc")
MA_APAC_med_06 <- read.dbc("D:/MA_APAC_med/AMMA1906.dbc")
MA_APAC_med_07 <- read.dbc("D:/MA_APAC_med/AMMA1907.dbc")
MA_APAC_med_08 <- read.dbc("D:/MA_APAC_med/AMMA1908.dbc")
MA_APAC_med_09 <- read.dbc("D:/MA_APAC_med/AMMA1909.dbc")
MA_APAC_med_10 <- read.dbc("D:/MA_APAC_med/AMMA1910.dbc")
MA_APAC_med_11 <- read.dbc("D:/MA_APAC_med/AMMA1911.dbc")
#MA_APAC_med_12 <- read.dbc("D:/MA_APAC_med/AMMA1912.dbc")

MA_APAL_med <- do.call("rbind", list(MA_APAC_med_01, MA_APAC_med_02, MA_APAC_med_03, MA_APAC_med_04, MA_APAC_med_05,MA_APAC_med_06, MA_APAC_med_07, MA_APAC_med_08, MA_APAC_med_09, MA_APAC_med_10, MA_APAC_med_11, MA_APAC_med_12))

MA_APAL_med$UF <- "MA"

## MG - 2019 - MS

MG_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1901.dbc")
MG_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1902.dbc")
MG_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1903.dbc")
MG_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1904.dbc")
MG_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1905.dbc")
MG_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1906.dbc")
MG_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1907.dbc")
MG_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1908.dbc")
MG_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1909.dbc")
MG_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1910.dbc")
MG_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1911.dbc")
#MG_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1912.dbc")

## MG - 2019 - Mikael

MG_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1901.dbc")
MG_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1902.dbc")
MG_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1903.dbc")
MG_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1904.dbc")
MG_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1905.dbc")
MG_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1906.dbc")
MG_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1907.dbc")
MG_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1908.dbc")
MG_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1909.dbc")
MG_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1910.dbc")
MG_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1911.dbc")
MG_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1912.dbc")

## MG - 2019 - Mikael - pen drive

MG_APAC_med_01 <- read.dbc("D:/MG_APAC_med/AMMG1901.dbc")
MG_APAC_med_02 <- read.dbc("D:/MG_APAC_med/AMMG1902.dbc")
MG_APAC_med_03 <- read.dbc("D:/MG_APAC_med/AMMG1903.dbc")
MG_APAC_med_04 <- read.dbc("D:/MG_APAC_med/AMMG1904.dbc")
MG_APAC_med_05 <- read.dbc("D:/MG_APAC_med/AMMG1905.dbc")
MG_APAC_med_06 <- read.dbc("D:/MG_APAC_med/AMMG1906.dbc")
MG_APAC_med_07 <- read.dbc("D:/MG_APAC_med/AMMG1907.dbc")
MG_APAC_med_08 <- read.dbc("D:/MG_APAC_med/AMMG1908.dbc")
MG_APAC_med_09 <- read.dbc("D:/MG_APAC_med/AMMG1909.dbc")
MG_APAC_med_10 <- read.dbc("D:/MG_APAC_med/AMMG1910.dbc")
MG_APAC_med_11 <- read.dbc("D:/MG_APAC_med/AMMG1911.dbc")
#MG_APAC_med_12 <- read.dbc("D:/MG_APAC_med/AMMG1912.dbc")


MG_APAL_med <- do.call("rbind", list(MG_APAC_med_01, MG_APAC_med_02, MG_APAC_med_03, MG_APAC_med_04, MG_APAC_med_05,MG_APAC_med_06, MG_APAC_med_07, MG_APAC_med_08, MG_APAC_med_09, MG_APAC_med_10, MG_APAC_med_11, MG_APAC_med_12))

MG_APAL_med$UF <- "MG" 

## MS - 2019 - MS

MS_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1901.dbc")
MS_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1902.dbc")
MS_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1903.dbc")
MS_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1904.dbc")
MS_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1905.dbc")
MS_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1906.dbc")
MS_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1907.dbc")
MS_APAC_med_08  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1908.dbc")
MS_APAC_med_09  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1909.dbc")
MS_APAC_med_10  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1910.dbc")
MS_APAC_med_11  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1911.dbc")
#MS_APAC_med_12  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1912.dbc")

## MS - 2019 - Mikael

MS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1901.dbc")
MS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1902.dbc")
MS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1903.dbc")
MS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1904.dbc")
MS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1905.dbc")
MS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1906.dbc")
MS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1907.dbc")
MS_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1908.dbc")
MS_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1909.dbc")
MS_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1910.dbc")
MS_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1911.dbc")
MS_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1912.dbc")

## MS - 2019 - Mikael pen drive

MS_APAC_med_01 <- read.dbc("D:/MS_APAC_med/AMMS1901.dbc")
MS_APAC_med_02 <- read.dbc("D:/MS_APAC_med/AMMS1902.dbc")
MS_APAC_med_03 <- read.dbc("D:/MS_APAC_med/AMMS1903.dbc")
MS_APAC_med_04 <- read.dbc("D:/MS_APAC_med/AMMS1904.dbc")
MS_APAC_med_05 <- read.dbc("D:/MS_APAC_med/AMMS1905.dbc")
MS_APAC_med_06 <- read.dbc("D:/MS_APAC_med/AMMS1906.dbc")
MS_APAC_med_07 <- read.dbc("D:/MS_APAC_med/AMMS1907.dbc")
MS_APAC_med_08  <- read.dbc("D:/MS_APAC_med/AMMS1908.dbc")
MS_APAC_med_09  <- read.dbc("D:/MS_APAC_med/AMMS1909.dbc")
MS_APAC_med_10  <- read.dbc("D:/MS_APAC_med/AMMS1910.dbc")
MS_APAC_med_11  <- read.dbc("D:/MS_APAC_med/AMMS1911.dbc")
#MS_APAC_med_12  <- read.dbc("D:/MS_APAC_med/AMMS1912.dbc")

MS_APAL_med <- do.call("rbind", list(MS_APAC_med_01, MS_APAC_med_02, MS_APAC_med_03, MS_APAC_med_04, MS_APAC_med_05,MS_APAC_med_06, MS_APAC_med_07, MS_APAC_med_08, MS_APAC_med_09, MS_APAC_med_10, MS_APAC_med_11, MS_APAC_med_12))

MS_APAL_med$UF <- "MS"

## MT - 2019  - MS

MT_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1901.dbc")
MT_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1902.dbc")
MT_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1903.dbc")
MT_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1904.dbc")
MT_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1905.dbc")
MT_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1906.dbc")
MT_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1907.dbc")
MT_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1908.dbc")
MT_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1909.dbc")
MT_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1910.dbc")
MT_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1911.dbc")
#MT_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1912.dbc")

## MT - 2019 - Mikael

MT_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1901.dbc")
MT_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1902.dbc")
MT_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1903.dbc")
MT_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1904.dbc")
MT_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1905.dbc")
MT_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1906.dbc")
MT_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1907.dbc")
MT_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1908.dbc")
MT_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1909.dbc")
MT_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1910.dbc")
MT_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1911.dbc")
MT_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1912.dbc")

## MT - 2019 - Mikael - pen drive

MT_APAC_med_01 <- read.dbc("D:/MT_APAC_med/AMMT1901.dbc")
MT_APAC_med_02 <- read.dbc("D:/MT_APAC_med/AMMT1902.dbc")
MT_APAC_med_03 <- read.dbc("D:/MT_APAC_med/AMMT1903.dbc")
MT_APAC_med_04 <- read.dbc("D:/MT_APAC_med/AMMT1904.dbc")
MT_APAC_med_05 <- read.dbc("D:/MT_APAC_med/AMMT1905.dbc")
MT_APAC_med_06 <- read.dbc("D:/MT_APAC_med/AMMT1906.dbc")
MT_APAC_med_07 <- read.dbc("D:/MT_APAC_med/AMMT1907.dbc")
MT_APAC_med_08 <- read.dbc("D:/MT_APAC_med/AMMT1908.dbc")
MT_APAC_med_09 <- read.dbc("D:/MT_APAC_med/AMMT1909.dbc")
MT_APAC_med_10 <- read.dbc("D:/MT_APAC_med/AMMT1910.dbc")
MT_APAC_med_11 <- read.dbc("D:/MT_APAC_med/AMMT1911.dbc")
#MT_APAC_med_12 <- read.dbc("D:/MT_APAC_med/AMMT1912.dbc")

MT_APAL_med <- do.call("rbind", list(MT_APAC_med_01, MT_APAC_med_02, MT_APAC_med_03, MT_APAC_med_04, MT_APAC_med_05,MT_APAC_med_06, MT_APAC_med_07, MT_APAC_med_08, MT_APAC_med_09, MT_APAC_med_10, MT_APAC_med_11, MT_APAC_med_12))

MT_APAL_med$UF <- "MT"

## PA - 2019 - MS

PA_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1901.dbc")
PA_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1902.dbc")
PA_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1903.dbc")
PA_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1905.dbc")
PA_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1906.dbc")
PA_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1907.dbc")
PA_APAC_med_08 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1908.dbc")
PA_APAC_med_09 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1909.dbc")
PA_APAC_med_10 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1910.dbc")
PA_APAC_med_11 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1911.dbc")
#PA_APAC_med_12 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1912.dbc")

## PA - 2019 - mikael 

PA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1901.dbc")
PA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1902.dbc")
PA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1903.dbc")
PA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1905.dbc")
PA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1906.dbc")
PA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1907.dbc")
PA_APAC_med_08 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1908.dbc")
PA_APAC_med_09 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1909.dbc")
PA_APAC_med_10 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1910.dbc")
PA_APAC_med_11 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1911.dbc")
PA_APAC_med_12 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1912.dbc")

## PA - 2019 - mikael - pen drive

PA_APAC_med_01 <- read.dbc("D:/PA_APAC_med/AMPA1901.dbc")
PA_APAC_med_02 <- read.dbc("D:/PA_APAC_med/AMPA1902.dbc")
PA_APAC_med_03 <- read.dbc("D:/PA_APAC_med/AMPA1903.dbc")
PA_APAC_med_05 <- read.dbc("D:/PA_APAC_med/AMPA1905.dbc")
PA_APAC_med_06 <- read.dbc("D:/PA_APAC_med/AMPA1906.dbc")
PA_APAC_med_07 <- read.dbc("D:/PA_APAC_med/AMPA1907.dbc")
PA_APAC_med_08 <-read.dbc("D:/PA_APAC_med/AMPA1908.dbc")
PA_APAC_med_09 <-read.dbc("D:/PA_APAC_med/AMPA1909.dbc")
PA_APAC_med_10 <-read.dbc("D:/PA_APAC_med/AMPA1910.dbc")
PA_APAC_med_11 <-read.dbc("D:/PA_APAC_med/AMPA1911.dbc")
#PA_APAC_med_12 <-read.dbc("D:/PA_APAC_med/AMPA1912.dbc")

PA_APAL_med <- do.call("rbind", list(PA_APAC_med_01, PA_APAC_med_02, PA_APAC_med_03, PA_APAC_med_05,PA_APAC_med_06, PA_APAC_med_07, PA_APAC_med_08, PA_APAC_med_09, PA_APAC_med_10, PA_APAC_med_11, PB_APAC_med_12))

PA_APAL_med$UF <- "PA"

## PB - 2019 - MS

PB_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1901.dbc")
PB_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1902.dbc")
PB_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1903.dbc")
PB_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1904.dbc")
PB_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1905.dbc")
PB_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1906.dbc")
PB_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1907.dbc")
PB_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1908.dbc")
PB_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1909.dbc")
PB_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1910.dbc")
PB_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1911.dbc")
#PB_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1912.dbc")

## PB - 2019 - Mikael

PB_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1901.dbc")
PB_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1902.dbc")
PB_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1903.dbc")
PB_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1904.dbc")
PB_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1905.dbc")
PB_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1906.dbc")
PB_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1907.dbc")
PB_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1908.dbc")
PB_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1909.dbc")
PB_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1910.dbc")
PB_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1911.dbc")
PB_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1912.dbc")

## PB - 2019 - Mikael - pen drive

PB_APAC_med_01 <- read.dbc("D:/PB_APAC_med/AMPB1901.dbc")
PB_APAC_med_02 <- read.dbc("D:/PB_APAC_med/AMPB1902.dbc")
PB_APAC_med_03 <- read.dbc("D:/PB_APAC_med/AMPB1903.dbc")
PB_APAC_med_04 <- read.dbc("D:/PB_APAC_med/AMPB1904.dbc")
PB_APAC_med_05 <- read.dbc("D:/PB_APAC_med/AMPB1905.dbc")
PB_APAC_med_06 <- read.dbc("D:/PB_APAC_med/AMPB1906.dbc")
PB_APAC_med_07 <- read.dbc("D:/PB_APAC_med/AMPB1907.dbc")
PB_APAC_med_08 <- read.dbc("D:/PB_APAC_med/AMPB1908.dbc")
PB_APAC_med_09 <- read.dbc("D:/PB_APAC_med/AMPB1909.dbc")
PB_APAC_med_10 <- read.dbc("D:/PB_APAC_med/AMPB1910.dbc")
PB_APAC_med_11 <- read.dbc("D:/PB_APAC_med/AMPB1911.dbc")
#PB_APAC_med_12 <- read.dbc("D:/PB_APAC_med/AMPB1912.dbc")

PB_APAL_med <- do.call("rbind", list(PB_APAC_med_01, PB_APAC_med_02, PB_APAC_med_03, PB_APAC_med_04, PB_APAC_med_05,PB_APAC_med_06, PB_APAC_med_07, PB_APAC_med_08, PB_APAC_med_09, PB_APAC_med_10, PB_APAC_med_11, PB_APAC_med_12))

PB_APAL_med$UF <- "PB"

## PE - 2019 - MS

PE_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1901.dbc")
PE_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1902.dbc")
PE_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1903.dbc")
PE_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1904.dbc")
PE_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1905.dbc")
PE_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1906.dbc")
PE_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1907.dbc")
PE_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1908.dbc")
PE_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1909.dbc")
PE_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1910.dbc")
PE_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1911.dbc")
#PE_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1912.dbc")

## PE - 2019 - Mikael

PE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1901.dbc")
PE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1902.dbc")
PE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1903.dbc")
PE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1904.dbc")
PE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1905.dbc")
PE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1906.dbc")
PE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1907.dbc")
PE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1908.dbc")
PE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1909.dbc")
PE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1910.dbc")
PE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1911.dbc")
PE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1912.dbc")

## PE - 2019 - Mikael - pen drive

PE_APAC_med_01 <- read.dbc("D:/PE_APAC_med/AMPE1901.dbc")
PE_APAC_med_02 <- read.dbc("D:/PE_APAC_med/AMPE1902.dbc")
PE_APAC_med_03 <- read.dbc("D:/PE_APAC_med/AMPE1903.dbc")
PE_APAC_med_04 <- read.dbc("D:/PE_APAC_med/AMPE1904.dbc")
PE_APAC_med_05 <- read.dbc("D:/PE_APAC_med/AMPE1905.dbc")
PE_APAC_med_06 <- read.dbc("D:/PE_APAC_med/AMPE1906.dbc")
PE_APAC_med_07 <- read.dbc("D:/PE_APAC_med/AMPE1907.dbc")
PE_APAC_med_08 <- read.dbc("D:/PE_APAC_med/AMPE1908.dbc")
PE_APAC_med_09 <- read.dbc("D:/PE_APAC_med/AMPE1909.dbc")
PE_APAC_med_10 <- read.dbc("D:/PE_APAC_med/AMPE1910.dbc")
PE_APAC_med_11 <- read.dbc("D:/PE_APAC_med/AMPE1911.dbc")
#PE_APAC_med_12 <- read.dbc("D:/PE_APAC_med/AMPE1912.dbc")


PE_APAL_med <- do.call("rbind", list(PE_APAC_med_01, PE_APAC_med_02, PE_APAC_med_03, PE_APAC_med_04, PE_APAC_med_05,PE_APAC_med_06, PE_APAC_med_07, PE_APAC_med_09, PE_APAC_med_10, PE_APAC_med_11, PE_APAC_med_12))

PE_APAL_med$UF <- "PE"

## PI - 2019 - MS

PI_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1901.dbc")
PI_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1902.dbc")
PI_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1903.dbc")
PI_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1904.dbc")
PI_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1905.dbc")
PI_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1906.dbc")
PI_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1907.dbc")
PI_APAC_med_08  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1908.dbc")
PI_APAC_med_09  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1909.dbc")
PI_APAC_med_10  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1910.dbc")
PI_APAC_med_11  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1911.dbc")
PI_APAC_med_12  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1912.dbc")

## PI - 2019 - Mikael

PI_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1901.dbc")
PI_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1902.dbc")
PI_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1903.dbc")
PI_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1904.dbc")
PI_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1905.dbc")
PI_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1906.dbc")
PI_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1907.dbc")
PI_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1908.dbc")
PI_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1909.dbc")
PI_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1910.dbc")
PI_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1911.dbc")
PI_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1912.dbc")

## PI - 2019 - Mikael - pen drive

PI_APAC_med_01 <- read.dbc("D:/PI_APAC_med/AMPI1901.dbc")
PI_APAC_med_02 <- read.dbc("D:/PI_APAC_med/AMPI1902.dbc")
PI_APAC_med_03 <- read.dbc("D:/PI_APAC_med/AMPI1903.dbc")
PI_APAC_med_04 <- read.dbc("D:/PI_APAC_med/AMPI1904.dbc")
PI_APAC_med_05 <- read.dbc("D:/PI_APAC_med/AMPI1905.dbc")
PI_APAC_med_06 <- read.dbc("D:/PI_APAC_med/AMPI1906.dbc")
PI_APAC_med_07 <- read.dbc("D:/PI_APAC_med/AMPI1907.dbc")
PI_APAC_med_08  <- read.dbc("D:/PI_APAC_med/AMPI1908.dbc")
PI_APAC_med_09  <- read.dbc("D:/PI_APAC_med/AMPI1909.dbc")
PI_APAC_med_10  <- read.dbc("D:/PI_APAC_med/AMPI1910.dbc")
PI_APAC_med_11  <- read.dbc("D:/PI_APAC_med/AMPI1911.dbc")
#PI_APAC_med_12  <- read.dbc("D:/PI_APAC_med/AMPI1912.dbc")

PI_APAL_med <- do.call("rbind", list(PI_APAC_med_01, PI_APAC_med_02, PI_APAC_med_03, PI_APAC_med_04, PI_APAC_med_05,PI_APAC_med_06, PI_APAC_med_07, PI_APAC_med_08, PI_APAC_med_09, PI_APAC_med_10, PI_APAC_med_11, PI_APAC_med_12))

PI_APAL_med$UF <- "PI"

#### Subdivisão 1

BR_med_01 <- do.call("rbind", list(AC_APAC_med, AP_APAL_med, AM_APAL_med, AL_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PB_APAL_med, PE_APAL_med, PI_APAL_med))

BR_med_01_CID_hepb <- filter(BR_med_01, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

BR_med_01_CID_hepb_un <- distinct(BR_med_01_CID_hepb, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_01_CID_hepb, "C:/Users/lemos/Downloads/BR_med_01_CID_hepb")

write.csv(BR_med_01_CID_hepb_un, "C:/Users/lemos/Downloads/BR_med_01_CID_hepb_un")

BR_med_01_CID_hepc <- filter(BR_med_01, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_01_CID_hepc_un <- distinct(BR_med_01_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_01_CID_hepc, "C:/Users/lemos/Downloads/BR_med_01_CID_hepc")

write.csv(BR_med_01_CID_hepc_un, "C:/Users/lemos/Downloads/BR_med_01_CID_hepc_un")


## PR - 2019 - MS

PR_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1901.dbc")
PR_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1902.dbc")
PR_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1903.dbc")
PR_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1904.dbc")
PR_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1905.dbc")
PR_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1906.dbc")
PR_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1907.dbc")
PR_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1908.dbc")
PR_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1909.dbc")
PR_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1910.dbc")
PR_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1911.dbc")
#PR_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1912.dbc")

## PR - 2019 - Mikael

PR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1901.dbc")
PR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1902.dbc")
PR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1903.dbc")
PR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1904.dbc")
PR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1905.dbc")
PR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1906.dbc")
PR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1907.dbc")
PR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1908.dbc")
PR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1909.dbc")
PR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1910.dbc")
PR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1911.dbc")
PR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1912.dbc")

## PR - 2019 - Mikael - pen drive

PR_APAC_med_01 <- read.dbc("D:/PR_APAC_med/AMPR1901.dbc")
PR_APAC_med_02 <- read.dbc("D:/PR_APAC_med/AMPR1902.dbc")
PR_APAC_med_03 <- read.dbc("D:/PR_APAC_med/AMPR1903.dbc")
PR_APAC_med_04 <- read.dbc("D:/PR_APAC_med/AMPR1904.dbc")
PR_APAC_med_05 <- read.dbc("D:/PR_APAC_med/AMPR1905.dbc")
PR_APAC_med_06 <- read.dbc("D:/PR_APAC_med/AMPR1906.dbc")
PR_APAC_med_07 <- read.dbc("D:/PR_APAC_med/AMPR1907.dbc")
PR_APAC_med_08 <- read.dbc("D:/PR_APAC_med/AMPR1908.dbc")
PR_APAC_med_09 <- read.dbc("D:/PR_APAC_med/AMPR1909.dbc")
PR_APAC_med_10 <- read.dbc("D:/PR_APAC_med/AMPR1910.dbc")
PR_APAC_med_11 <- read.dbc("D:/PR_APAC_med/AMPR1911.dbc")
PR_APAC_med_12 <- read.dbc("D:/PR_APAC_med/AMPR1912.dbc")

PR_APAL_med <- do.call("rbind", list(PR_APAC_med_01, PR_APAC_med_02, PR_APAC_med_03, PR_APAC_med_04, PR_APAC_med_05,PR_APAC_med_06, PR_APAC_med_07, PR_APAC_med_08, PR_APAC_med_09, PR_APAC_med_10, PR_APAC_med_11,PR_APAC_med_12 ))

PR_APAL_med$UF <- "PR"

## RJ - 2019  - MS

RJ_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1901.dbc")
RJ_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1902.dbc")
RJ_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1903.dbc")
RJ_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1904.dbc")
RJ_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1905.dbc")
RJ_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1906.dbc")
RJ_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1907.dbc")
RJ_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1908.dbc")
RJ_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1909.dbc")
RJ_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1910.dbc")
RJ_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1911.dbc")
#RJ_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1912.dbc")

## RJ - 2019  - Mikael

RJ_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1901.dbc")
RJ_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1902.dbc")
RJ_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1903.dbc")
RJ_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1904.dbc")
RJ_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1905.dbc")
RJ_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1906.dbc")
RJ_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1907.dbc")
RJ_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1908.dbc")
RJ_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1909.dbc")
RJ_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1910.dbc")
RJ_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1911.dbc")
RJ_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1912.dbc")

## RJ - 2019  - Mikael - pen drive

RJ_APAC_med_01 <- read.dbc("D:/RJ_APAC_med/AMRJ1901.dbc")
RJ_APAC_med_02 <- read.dbc("D:/RJ_APAC_med/AMRJ1902.dbc")
RJ_APAC_med_03 <- read.dbc("D:/RJ_APAC_med/AMRJ1903.dbc")
RJ_APAC_med_04 <- read.dbc("D:/RJ_APAC_med/AMRJ1904.dbc")
RJ_APAC_med_05 <- read.dbc("D:/RJ_APAC_med/AMRJ1905.dbc")
RJ_APAC_med_06 <- read.dbc("D:/RJ_APAC_med/AMRJ1906.dbc")
RJ_APAC_med_07 <- read.dbc("D:/RJ_APAC_med/AMRJ1907.dbc")
RJ_APAC_med_08 <- read.dbc("D:/RJ_APAC_med/AMRJ1908.dbc")
RJ_APAC_med_09 <- read.dbc("D:/RJ_APAC_med/AMRJ1909.dbc")
RJ_APAC_med_10 <- read.dbc("D:/RJ_APAC_med/AMRJ1910.dbc")
RJ_APAC_med_11 <- read.dbc("D:/RJ_APAC_med/AMRJ1911.dbc")
RJ_APAC_med_12 <- read.dbc("D:/RJ_APAC_med/AMRJ1912.dbc")

RJ_APAL_med <- do.call("rbind", list(RJ_APAC_med_01, RJ_APAC_med_02, RJ_APAC_med_03, RJ_APAC_med_04, RJ_APAC_med_05,RJ_APAC_med_06, RJ_APAC_med_07, RJ_APAC_med_08,RJ_APAC_med_09, RJ_APAC_med_10, RJ_APAC_med_11, RJ_APAC_med_12 ))

RJ_APAL_med$UF <- "RJ"

## RN - 2019 - MS

RN_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1901.dbc")
RN_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1902.dbc")
RN_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1903.dbc")
RN_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1904.dbc")
RN_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1905.dbc")
RN_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1906.dbc")
RN_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1907.dbc")
RN_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1908.dbc")
RN_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1909.dbc")
RN_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1910.dbc")
RN_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1911.dbc")
#RN_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1912.dbc")

## RN - 2019 - Mikael

RN_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1901.dbc")
RN_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1902.dbc")
RN_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1903.dbc")
RN_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1904.dbc")
RN_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1905.dbc")
RN_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1906.dbc")
RN_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1907.dbc")
RN_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1908.dbc")
RN_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1909.dbc")
RN_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1910.dbc")
RN_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1911.dbc")
RN_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1912.dbc")

## RN - 2019 - Mikael - pen drive

RN_APAC_med_01 <- read.dbc("D:/RN_APAC_med/AMRN1901.dbc")
RN_APAC_med_02 <- read.dbc("D:/RN_APAC_med/AMRN1902.dbc")
RN_APAC_med_03 <- read.dbc("D:/RN_APAC_med/AMRN1903.dbc")
RN_APAC_med_04 <- read.dbc("D:/RN_APAC_med/AMRN1904.dbc")
RN_APAC_med_05 <- read.dbc("D:/RN_APAC_med/AMRN1905.dbc")
RN_APAC_med_06 <- read.dbc("D:/RN_APAC_med/AMRN1906.dbc")
RN_APAC_med_07 <- read.dbc("D:/RN_APAC_med/AMRN1907.dbc")
RN_APAC_med_08 <- read.dbc("D:/RN_APAC_med/AMRN1908.dbc")
RN_APAC_med_09 <- read.dbc("D:/RN_APAC_med/AMRN1909.dbc")
RN_APAC_med_10 <- read.dbc("D:/RN_APAC_med/AMRN1910.dbc")
RN_APAC_med_11 <- read.dbc("D:/RN_APAC_med/AMRN1911.dbc")
RN_APAC_med_12 <- read.dbc("D:/RN_APAC_med/AMRN1912.dbc")

RN_APAL_med <- do.call("rbind", list(RN_APAC_med_01, RN_APAC_med_02, RN_APAC_med_03, RN_APAC_med_04, RN_APAC_med_05,RN_APAC_med_06, RN_APAC_med_07, RN_APAC_med_08, RN_APAC_med_09, RN_APAC_med_10, RN_APAC_med_11, RN_APAC_med_12))

RN_APAL_med$UF <- "RN"

## RO - 2019 - MS

RO_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1901.dbc")
RO_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1902.dbc")
RO_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1903.dbc")
RO_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1904.dbc")
RO_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1905.dbc")
RO_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1906.dbc")
RO_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1907.dbc")
RO_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1908.dbc")
RO_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1909.dbc")
RO_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1910.dbc")
RO_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1911.dbc")
#RO_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1912.dbc")

## RO - 2019 - Mikael

RO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1901.dbc")
RO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1902.dbc")
RO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1903.dbc")
RO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1904.dbc")
RO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1905.dbc")
RO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1906.dbc")
RO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1907.dbc")
RO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1908.dbc")
RO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1909.dbc")
RO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1910.dbc")
RO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1911.dbc")
RO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1912.dbc")

## RO - 2019 - Mikael - pen drive

RO_APAC_med_01 <- read.dbc("D:/RO_APAC_med/AMRO1901.dbc")
RO_APAC_med_02 <- read.dbc("D:/RO_APAC_med/AMRO1902.dbc")
RO_APAC_med_03 <- read.dbc("D:/RO_APAC_med/AMRO1903.dbc")
RO_APAC_med_04 <- read.dbc("D:/RO_APAC_med/AMRO1904.dbc")
RO_APAC_med_05 <- read.dbc("D:/RO_APAC_med/AMRO1905.dbc")
RO_APAC_med_06 <- read.dbc("D:/RO_APAC_med/AMRO1906.dbc")
RO_APAC_med_07 <- read.dbc("D:/RO_APAC_med/AMRO1907.dbc")
RO_APAC_med_08 <- read.dbc("D:/RO_APAC_med/AMRO1908.dbc")
#RO_APAC_med_09 <- read.dbc("D:/RO_APAC_med/AMRO1909.dbc")
RO_APAC_med_10 <- read.dbc("D:/RO_APAC_med/AMRO1910.dbc")
#RO_APAC_med_11 <- read.dbc("D:/RO_APAC_med/AMRO1911.dbc")
RO_APAC_med_12 <- read.dbc("D:/RO_APAC_med/AMRO1912.dbc")

RO_APAL_med <- do.call("rbind", list(RO_APAC_med_01, RO_APAC_med_02, RO_APAC_med_03, RO_APAC_med_04, RO_APAC_med_05,RO_APAC_med_06, RO_APAC_med_07, RO_APAC_med_08, RO_APAC_med_10 , RO_APAC_med_12))

RO_APAL_med$UF <- "RO"

## RR - 2019 - MS

RR_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1901.dbc")
RR_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1902.dbc")
RR_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1903.dbc")
RR_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1904.dbc")
RR_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1905.dbc")
RR_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1906.dbc")
RR_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1907.dbc")
RR_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1908.dbc")
RR_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1909.dbc")
RR_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1910.dbc")
RR_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1911.dbc")
#RR_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1912.dbc")

## RR - 2019 - Mikael

RR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1901.dbc")
RR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1902.dbc")
RR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1903.dbc")
RR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1904.dbc")
RR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1905.dbc")
RR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1906.dbc")
RR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1907.dbc")
RR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1908.dbc")
RR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1909.dbc")
RR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1910.dbc")
RR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1911.dbc")
RR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1912.dbc")

## RR - 2019 - Mikael - pen drive

RR_APAC_med_01 <- read.dbc("D:/RR_APAC_med/AMRR1901.dbc")
RR_APAC_med_02 <- read.dbc("D:/RR_APAC_med/AMRR1902.dbc")
RR_APAC_med_03 <- read.dbc("D:/RR_APAC_med/AMRR1903.dbc")
RR_APAC_med_04 <- read.dbc("D:/RR_APAC_med/AMRR1904.dbc")
RR_APAC_med_05 <- read.dbc("D:/RR_APAC_med/AMRR1905.dbc")
RR_APAC_med_06 <- read.dbc("D:/RR_APAC_med/AMRR1906.dbc")
RR_APAC_med_07 <- read.dbc("D:/RR_APAC_med/AMRR1907.dbc")
RR_APAC_med_08 <- read.dbc("D:/RR_APAC_med/AMRR1908.dbc")
RR_APAC_med_09 <- read.dbc("D:/RR_APAC_med/AMRR1909.dbc")
RR_APAC_med_10 <- read.dbc("D:/RR_APAC_med/AMRR1910.dbc")
RR_APAC_med_11 <- read.dbc("D:/RR_APAC_med/AMRR1911.dbc")
RR_APAC_med_12 <- read.dbc("D:/RR_APAC_med/AMRR1912.dbc")

RR_APAL_med <- do.call("rbind", list(RR_APAC_med_01, RR_APAC_med_02, RR_APAC_med_03, RR_APAC_med_04, RR_APAC_med_05,RR_APAC_med_06, RR_APAC_med_07, RR_APAC_med_08, RR_APAC_med_10, RR_APAC_med_11 ,RR_APAC_med_12 ))

RR_APAL_med$UF <- "RR"

## RS - 2019 - MS

RS_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1901.dbc")
RS_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1902.dbc")
RS_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1903.dbc")
RS_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1904.dbc")
RS_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1905.dbc")
RS_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1906.dbc")
RS_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1907.dbc")
RS_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1908.dbc")
RS_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1909.dbc")
RS_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1910.dbc")
RS_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1911.dbc")
#RS_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1912.dbc")

## RS - 2019 - Mikael

RS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1901.dbc")
RS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1902.dbc")
RS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1903.dbc")
RS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1904.dbc")
RS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1905.dbc")
RS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1906.dbc")
RS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1907.dbc")
RS_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1908.dbc")
RS_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1909.dbc")
RS_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1910.dbc")
RS_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1911.dbc")
RS_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1912.dbc")

## RS - 2019 - Mikael - pen drive

RS_APAC_med_01 <- read.dbc("D:/RS_APAC_med/AMRS1901.dbc")
RS_APAC_med_02 <- read.dbc("D:/RS_APAC_med/AMRS1902.dbc")
RS_APAC_med_03 <- read.dbc("D:/RS_APAC_med/AMRS1903.dbc")
RS_APAC_med_04 <- read.dbc("D:/RS_APAC_med/AMRS1904.dbc")
RS_APAC_med_05 <- read.dbc("D:/RS_APAC_med/AMRS1905.dbc")
RS_APAC_med_06 <- read.dbc("D:/RS_APAC_med/AMRS1906.dbc")
RS_APAC_med_07 <- read.dbc("D:/RS_APAC_med/AMRS1907.dbc")
RS_APAC_med_08 <- read.dbc("D:/RS_APAC_med/AMRS1908.dbc")
RS_APAC_med_09 <- read.dbc("D:/RS_APAC_med/AMRS1909.dbc")
RS_APAC_med_10 <- read.dbc("D:/RS_APAC_med/AMRS1910.dbc")
RS_APAC_med_11 <- read.dbc("D:/RS_APAC_med/AMRS1911.dbc")
RS_APAC_med_12 <- read.dbc("D:/RS_APAC_med/AMRS1912.dbc")

RS_APAL_med <- do.call("rbind", list(RS_APAC_med_01, RS_APAC_med_02, RS_APAC_med_03, RS_APAC_med_04, RS_APAC_med_05,RS_APAC_med_06, RS_APAC_med_07, RS_APAC_med_08, RS_APAC_med_09, RS_APAC_med_10, RS_APAC_med_11, RS_APAC_med_12))

RS_APAL_med$UF <- "RS"

## SC - 2019 - MS

SC_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1901.dbc")
SC_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1902.dbc")
SC_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1903.dbc")
SC_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1904.dbc")
SC_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1905.dbc")
SC_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1906.dbc")
SC_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1907.dbc")
SC_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1908.dbc")
SC_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1909.dbc")
SC_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1910.dbc")
SC_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1911.dbc")
#SC_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1912.dbc")

## SC - 2019 - Mikael

SC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1901.dbc")
SC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1902.dbc")
SC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1903.dbc")
SC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1904.dbc")
SC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1905.dbc")
SC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1906.dbc")
SC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1907.dbc")
SC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1908.dbc")
SC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1909.dbc")
SC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1910.dbc")
SC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1911.dbc")
SC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1912.dbc")

## SC - 2019 - Mikael - pen drive

SC_APAC_med_01 <- read.dbc("D:/SC_APAC_med/AMSC1901.dbc")
SC_APAC_med_02 <- read.dbc("D:/SC_APAC_med/AMSC1902.dbc")
SC_APAC_med_03 <- read.dbc("D:/SC_APAC_med/AMSC1903.dbc")
SC_APAC_med_04 <- read.dbc("D:/SC_APAC_med/AMSC1904.dbc")
SC_APAC_med_05 <- read.dbc("D:/SC_APAC_med/AMSC1905.dbc")
SC_APAC_med_06 <- read.dbc("D:/SC_APAC_med/AMSC1906.dbc")
SC_APAC_med_07 <- read.dbc("D:/SC_APAC_med/AMSC1907.dbc")
SC_APAC_med_08 <- read.dbc("D:/SC_APAC_med/AMSC1908.dbc")
SC_APAC_med_09 <- read.dbc("D:/SC_APAC_med/AMSC1909.dbc")
SC_APAC_med_10 <- read.dbc("D:/SC_APAC_med/AMSC1910.dbc")
SC_APAC_med_11 <- read.dbc("D:/SC_APAC_med/AMSC1911.dbc")
SC_APAC_med_12 <- read.dbc("D:/SC_APAC_med/AMSC1912.dbc")

SC_APAL_med <- do.call("rbind", list(SC_APAC_med_01, SC_APAC_med_02, SC_APAC_med_03, SC_APAC_med_04, SC_APAC_med_05,SC_APAC_med_06, SC_APAC_med_07, SC_APAC_med_08,SC_APAC_med_09, SC_APAC_med_10, SC_APAC_med_11, SC_APAC_med_12 ))

SC_APAL_med$UF <- "SC"

## SE - 2019 - MS

SE_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1901.dbc")
SE_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1902.dbc")
SE_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1903.dbc")
SE_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1904.dbc")
SE_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1905.dbc")
SE_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1906.dbc")
SE_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1908.dbc")
SE_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1909.dbc")
SE_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1910.dbc")
SE_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1910.dbc")
#SE_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1912.dbc")

## SE - 2019 - Mikael

SE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1901.dbc")
SE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1902.dbc")
SE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1903.dbc")
SE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1904.dbc")
SE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1905.dbc")
SE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1906.dbc")
SE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1908.dbc")
SE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1909.dbc")
SE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1910.dbc")
SE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1911.dbc")
SE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1912.dbc")

## SE - 2019 - Mikael - pen drive

SE_APAC_med_01 <- read.dbc("D:/SE_APAC_med/AMSE1901.dbc")
SE_APAC_med_02 <- read.dbc("D:/SE_APAC_med/AMSE1902.dbc")
SE_APAC_med_03 <- read.dbc("D:/SE_APAC_med/AMSE1903.dbc")
SE_APAC_med_04 <- read.dbc("D:/SE_APAC_med/AMSE1904.dbc")
SE_APAC_med_05 <- read.dbc("D:/SE_APAC_med/AMSE1905.dbc")
SE_APAC_med_06 <- read.dbc("D:/SE_APAC_med/AMSE1906.dbc")
SE_APAC_med_08 <- read.dbc("D:/SE_APAC_med/AMSE1908.dbc")
SE_APAC_med_09 <- read.dbc("D:/SE_APAC_med/AMSE1909.dbc")
SE_APAC_med_10 <- read.dbc("D:/SE_APAC_med/AMSE1910.dbc")
SE_APAC_med_11 <- read.dbc("D:/SE_APAC_med/AMSE1911.dbc")
SE_APAC_med_12 <- read.dbc("D:/SE_APAC_med/AMSE1912.dbc")

SE_APAL_med <- do.call("rbind", list(SE_APAC_med_01, SE_APAC_med_02, SE_APAC_med_03, SE_APAC_med_04, SE_APAC_med_05,SE_APAC_med_06, SE_APAC_med_08, SE_APAC_med_09, SE_APAC_med_10, SE_APAC_med_11, SE_APAC_med_12))

SE_APAL_med$UF <- "SE"

#### Subdivisão 2

BR_med_02 <- do.call("rbind", list(PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med))

BR_med_02_CID_hepb <- filter(BR_med_02, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

BR_med_02_CID_hepb_un <- distinct(BR_med_02_CID_hepb, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_02_CID_hepb, "C:/Users/lemos/Downloads/BR_med_02_CID_hepb")

write.csv(BR_med_02_CID_hepb_un, "C:/Users/lemos/Downloads/BR_med_02_CID_hepb_un")


BR_med_02_CID_hepc <- filter(BR_med_02, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_02_CID_hepc_un <- distinct(BR_med_02_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_02_CID_hepc, "C:/Users/lemos/Downloads/BR_med_02_CID_hepc")

write.csv(BR_med_02_CID_hepc_un, "C:/Users/lemos/Downloads/BR_med_02_CID_hepc_un")

## SP - 2019 - MS

SP_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1901.dbc")
SP_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1902.dbc")
SP_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1903.dbc")
SP_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1904.dbc")
SP_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1905.dbc")
SP_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1906.dbc")
SP_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1907.dbc")
SP_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1908.dbc")
SP_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1909.dbc")
SP_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1910.dbc")
SP_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1911.dbc")
#SP_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1912.dbc")

## SP - 2019 - Mikael

SP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1901.dbc")
SP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1902.dbc")
SP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1903.dbc")
SP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1904.dbc")
SP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1905.dbc")
SP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1906.dbc")
SP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1907.dbc")
SP_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1908.dbc")
SP_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1909.dbc")
SP_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1910.dbc")
SP_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1911.dbc")
SP_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1912.dbc")

## SP - 2019 - Mikael - pen drive

SP_APAC_med_01 <- read.dbc("D:/SP_APAC_med/AMSP1901.dbc")
SP_APAC_med_02 <- read.dbc("D:/SP_APAC_med/AMSP1902.dbc")
SP_APAC_med_03 <- read.dbc("D:/SP_APAC_med/AMSP1903.dbc")
SP_APAC_med_04 <- read.dbc("D:/SP_APAC_med/AMSP1904.dbc")
SP_APAC_med_05 <- read.dbc("D:/SP_APAC_med/AMSP1905.dbc")
SP_APAC_med_06 <- read.dbc("D:/SP_APAC_med/AMSP1906.dbc")
SP_APAC_med_07 <- read.dbc("D:/SP_APAC_med/AMSP1907.dbc")
SP_APAC_med_08 <- read.dbc("D:/SP_APAC_med/AMSP1908.dbc")
SP_APAC_med_09 <- read.dbc("D:/SP_APAC_med/AMSP1909.dbc")
SP_APAC_med_10 <- read.dbc("D:/SP_APAC_med/AMSP1910.dbc")
SP_APAC_med_11 <- read.dbc("D:/SP_APAC_med/AMSP1911.dbc")
SP_APAC_med_12 <- read.dbc("D:/SP_APAC_med/AMSP1912.dbc")

SP_APAL_med <- do.call("rbind", list(SP_APAC_med_01, SP_APAC_med_02, SP_APAC_med_03, SP_APAC_med_04, SP_APAC_med_05,SP_APAC_med_06, SP_APAC_med_07, SP_APAC_med_08, SP_APAC_med_09, SP_APAC_med_10, SP_APAC_med_11, SP_APAC_med_12))

SP_APAL_med$UF <- "SP"

## TO - 2019 - MS 

TO_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1901.dbc")
TO_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1902.dbc")
TO_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1903.dbc")
TO_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1904.dbc")
TO_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1905.dbc")
TO_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1906.dbc")
TO_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1907.dbc")
TO_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1908.dbc")
TO_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1909.dbc")
TO_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1910.dbc")
TO_APAC_med_11 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1911.dbc")
#TO_APAC_med_12 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1912.dbc")

## TO - 2019 - Mikael

TO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1901.dbc")
TO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1902.dbc")
TO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1903.dbc")
TO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1904.dbc")
TO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1905.dbc")
TO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1906.dbc")
TO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1907.dbc")
TO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1908.dbc")
TO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1909.dbc")
TO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1910.dbc")
TO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1911.dbc")
TO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1912.dbc")

## TO - 2019 - Mikael - pen drive

TO_APAC_med_01 <- read.dbc("D:/TO_APAC_med/AMTO1901.dbc")
TO_APAC_med_02 <- read.dbc("D:/TO_APAC_med/AMTO1902.dbc")
TO_APAC_med_03 <- read.dbc("D:/TO_APAC_med/AMTO1903.dbc")
TO_APAC_med_04 <- read.dbc("D:/TO_APAC_med/AMTO1904.dbc")
TO_APAC_med_05 <- read.dbc("D:/TO_APAC_med/AMTO1905.dbc")
TO_APAC_med_06 <- read.dbc("D:/TO_APAC_med/AMTO1906.dbc")
TO_APAC_med_07 <- read.dbc("D:/TO_APAC_med/AMTO1907.dbc")
TO_APAC_med_08 <- read.dbc("D:/TO_APAC_med/AMTO1908.dbc")
TO_APAC_med_09 <- read.dbc("D:/TO_APAC_med/AMTO1909.dbc")
TO_APAC_med_10 <- read.dbc("D:/TO_APAC_med/AMTO1910.dbc")
TO_APAC_med_11 <- read.dbc("D:/TO_APAC_med/AMTO1911.dbc")
TO_APAC_med_12 <- read.dbc("D:/TO_APAC_med/AMTO1912.dbc")

TO_APAL_med <- do.call("rbind", list(TO_APAC_med_01, TO_APAC_med_02, TO_APAC_med_03, TO_APAC_med_04, TO_APAC_med_05,TO_APAC_med_06, TO_APAC_med_07, TO_APAC_med_08, TO_APAC_med_09, TO_APAC_med_10, TO_APAC_med_11, TO_APAC_med_12))

TO_APAL_med$UF <- "TO"

### Subdivisão 3

BR_med_03 <- do.call("rbind", list(SP_APAL_med, TO_APAL_med))

BR_med_03_CID_hepb <- filter(BR_med_03, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

BR_med_03_CID_hepb_un <- distinct(BR_med_03_CID_hepb, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_03_CID_hepb, "C:/Users/lemos/Downloads/BR_med_03_CID_hepb")

write.csv(BR_med_03_CID_hepb_un, "C:/Users/lemos/Downloads/BR_med_03_CID_hepb_un")

BR_med_03_CID_hepc <- filter(BR_med_03, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_03_CID_hepc_un <- distinct(BR_med_03_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_03_CID_hepc, "C:/Users/lemos/Downloads/BR_med_03_CID_hepc")

write.csv(BR_med_03_CID_hepc_un, "C:/Users/lemos/Downloads/BR_med_03_CID_hepc_un")


############### Carregando tabelas ################

#### Hep B ###

BR_med_01_CID_hepb <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_01_CID_hepb.csv")

BR_med_02_CID_hepb <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_02_CID_hepb.csv")

BR_med_03_CID_hepb <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_03_CID_hepb.csv")

BR_med_CID_hepb <- do.call("rbind", list(BR_med_01_CID_hepb, BR_med_02_CID_hepb, BR_med_03_CID_hepb))

BR_med_CID_hepb_un <- distinct(BR_med_CID_hepb, AP_CNSPCN , .keep_all = TRUE)


#### Hep C ###

BR_med_01_CID_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_01_CID_hepc.csv")

BR_med_02_CID_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_02_CID_hepc.csv")

BR_med_03_CID_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_03_CID_hepc.csv")

BR_med_CID_hepc <- do.call("rbind", list(BR_med_01_CID_hepc, BR_med_02_CID_hepc, BR_med_03_CID_hepc))

BR_apac_trat_2015_2018_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_apac_trat_2015_2018.csv")

BR_apac_trat_2015_2018_hepc <- select(BR_apac_trat_2015_2018_hepc, -X.1, -ano, -tratamentoCID)

BR_med_CID_hepc_2019_antijoin <- anti_join(BR_med_CID_hepc, BR_apac_trat_2015_2018_hepc,  by="AP_CNSPCN")

BR_med_CID_hepc_2019_antijoin_un <- distinct(BR_med_CID_hepc_2019_antijoin, AP_CNSPCN , .keep_all = TRUE)
  
###################################################


############# Tabelas painel UF - Tratamento - tabwin ############

# Hep C

med_uf_hepc_2019 <- table(BR_med_CID_hepc_2019_antijoin_un$UF)

med_uf_hepc_2019 <- as.data.frame(med_uf_hepc_2019)

med_uf_hepc_2019$Var1 <- as.character(med_uf_hepc_2019$Var1)

med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "RO"] <- "Rondônia"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "AC"] <- "Acre"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "AM"] <- "Amazonas"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "RR"] <- "Roraima"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "PA"] <- "Pará"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "AP"] <- "Amapá"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "TO"] <- "Tocantins"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "MA"] <- "Maranhão"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "PI"] <- "Piauí"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "CE"] <- "Ceará"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "RN"] <- "Rio Grande do Norte"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "PB"] <- "Paraíba"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "PE"] <- "Pernambuco"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "AL"] <- "Alagoas"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "SE"] <- "Sergipe"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "BA"] <- "Bahia"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "MG"] <- "Minas Gerais"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "ES"] <- "Espírito Santo"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "RJ"] <- "Rio de Janeiro"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "SP"] <- "São Paulo"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "PR"] <- "Paraná"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "SC"] <- "Santa Catarina"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "RS"] <- "Rio Grande do Sul"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "MS"] <- "Mato Grosso do Sul"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "MT"] <- "Mato Grosso"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "GO"] <- "Goiás"
med_uf_hepc_2019$Var1[med_uf_hepc_2019$Var1 == "DF"] <- "Distrito Federal"

write.csv(med_uf_hepc_2019, "C:/Users/lemos/Downloads/tabwin_APAC/med_uf_hepc_2019.csv")


# Hep B

med_uf_hepb_2019 <- table(BR_med_CID_hepb_un$UF)

med_uf_hepb_2019 <- as.data.frame(med_uf_hepb_2019)

med_uf_hepb_2019$Var1 <- as.character(med_uf_hepb_2019$Var1)

med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "RO"] <- "Rondônia"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "AC"] <- "Acre"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "AM"] <- "Amazonas"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "RR"] <- "Roraima"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "PA"] <- "Pará"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "AP"] <- "Amapá"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "TO"] <- "Tocantins"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "MA"] <- "Maranhão"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "PI"] <- "Piauí"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "CE"] <- "Ceará"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "RN"] <- "Rio Grande do Norte"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "PB"] <- "Paraíba"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "PE"] <- "Pernambuco"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "AL"] <- "Alagoas"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "SE"] <- "Sergipe"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "BA"] <- "Bahia"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "MG"] <- "Minas Gerais"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "ES"] <- "Espírito Santo"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "RJ"] <- "Rio de Janeiro"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "SP"] <- "São Paulo"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "PR"] <- "Paraná"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "SC"] <- "Santa Catarina"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "RS"] <- "Rio Grande do Sul"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "MS"] <- "Mato Grosso do Sul"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "MT"] <- "Mato Grosso"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "GO"] <- "Goiás"
med_uf_hepb_2019$Var1[med_uf_hepb_2019$Var1 == "DF"] <- "Distrito Federal"

write.csv(med_uf_hepb_2019, "C:/Users/lemos/Downloads/tabwin_APAC/med_uf_hepb_2019.csv")


### Tabela painel - medicamentos hep B - Groupby - AP_MVM, AP_PRIPAL, UF ##########


hepb_2019_groupby <- BR_med_CID_hepb_un %>% group_by(AP_MVM, AP_PRIPAL, UF)
hepb_2019_groupby_n <- hepb_2019_groupby %>% summarise(n = n())

### Substituições UF

hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "RO"] <- "Rondônia"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "AC"] <- "Acre"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "AM"] <- "Amazonas"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "RR"] <- "Roraima"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "PA"] <- "Pará"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "AP"] <- "Amapá"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "TO"] <- "Tocantins"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "MA"] <- "Maranhão"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "PI"] <- "Piauí"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "CE"] <- "Ceará"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "RN"] <- "Rio Grande do Norte"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "PB"] <- "Paraíba"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "PE"] <- "Pernambuco"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "AL"] <- "Alagoas"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "SE"] <- "Sergipe"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "BA"] <- "Bahia"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "MG"] <- "Minas Gerais"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "ES"] <- "Espírito Santo"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "RJ"] <- "Rio de Janeiro"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "SP"] <- "São Paulo"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "PR"] <- "Paraná"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "SC"] <- "Santa Catarina"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "RS"] <- "Rio Grande do Sul"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "MS"] <- "Mato Grosso do Sul"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "MT"] <- "Mato Grosso"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "GO"] <- "Goiás"
hepb_2019_groupby_n$UF[hepb_2019_groupby_n$UF == "DF"] <- "Distrito Federal"


### Substituições mês

hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201901"] <- "Janeiro"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201902"] <- "Fevereiro"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201903"] <- "Março"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201904"] <- "Abril"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201905"] <- "Maio"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201906"] <- "Junho"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201907"] <- "Julho"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201908"] <- "Agosto"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201909"] <- "Setembro"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201910"] <- "Outubro"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201911"] <- "Novembro"
hepb_2019_groupby_n$AP_MVM[hepb_2019_groupby_n$AP_MVM == "201912"] <- "Dezembro"

### Substituições medicamneto

hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604460058"] <- "Tenofovir"
hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604300018"] <- "Imunoglobulina"
hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604300034"] <- "Imunoglobulina"
hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604390041"] <- "Alfapeginterferona 2A"
hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604460023"] <- "Entecavir"
hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604460031"] <- "Lamivudina"
hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604460040"] <- "Lamivudina"
hepb_2019_groupby_n$AP_PRIPAL[hepb_2019_groupby_n$AP_PRIPAL == "604460066"] <- "Entecavir"

#### Criar coluna para ordenar mês

hepb_2019_groupby_n$AP_MVM2 = hepb_2019_groupby_n$AP_MVM

hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Janeiro"] <- 1
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Fevereiro"] <- 2
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Março"] <- 3
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Abril"] <- 4
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Maio"] <- 5
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Junho"] <- 6
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Julho"] <- 7
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Agosto"] <- 8
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Setembro"] <- 9
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Outubro"] <- 10
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Novembro"] <- 11
hepb_2019_groupby_n$AP_MVM2[hepb_2019_groupby_n$AP_MVM2 == "Dezembro"] <- 12

write.csv(hepb_2019_groupby_n, "C:/Users/lemos/Downloads/tabwin_APAC/hepb_med_total_2019.csv")





BR_APAC_med <- do.call("rbind", list(AC_APAC_med, AL_APAL_med, AP_APAL_med, AM_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PB_APAL_med, PE_APAL_med, PI_APAL_med, PR_APAL_med, PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med, SP_APAL_med, TO_APAL_med))

#### Salvando tabelas intermediarias

write.csv(AC_APAC_med, "D:/AC_APAC_med.csv")

write.csv(AL_APAL_med, "D:/AL_APAL_med.csv")

write.csv(AP_APAL_med, "D:/AP_APAL_med.csv")

write.csv(AM_APAL_med, "D:/AM_APAL_med.csv")

write.csv(BA_APAL_med, "D:/BA_APAL_med.csv")

write.csv(CE_APAL_med, "D:/CE_APAL_med.csv")

write.csv(DF_APAL_med, "D:/DF_APAL_med.csv")

write.csv(ES_APAL_med, "D:/ES_APAL_med.csv")

write.csv(GO_APAL_med, "D:/GO_APAL_med.csv")

write.csv(MA_APAL_med, "D:/MA_APAL_med.csv")

write.csv(MG_APAL_med, "D:/MG_APAL_med.csv")

write.csv(MS_APAL_med, "D:/MS_APAL_med.csv")

write.csv(MT_APAL_med, "D:/MT_APAL_med.csv")

write.csv(PA_APAL_med, "D:/PA_APAL_med.csv")

write.csv(PB_APAL_med, "D:/PB_APAL_med.csv")

write.csv(PE_APAL_med, "D:/PE_APAL_med.csv")

write.csv(PI_APAL_med, "D:/PI_APAL_med.csv")

write.csv(PR_APAL_med, "D:/PR_APAL_med.csv")

write.csv(RJ_APAL_med, "D:/RJ_APAL_med.csv")

write.csv(RN_APAL_med, "D:/RN_APAL_med.csv")

write.csv(RO_APAL_med, "D:/RO_APAL_med.csv")

vwrite.csv(RR_APAL_med, "D:/RR_APAL_med.csv")

write.csv(RS_APAL_med, "D:/RS_APAL_med.csv")

write.csv(SC_APAL_med, "D:/SC_APAL_med.csv")

write.csv(SE_APAL_med, "D:/SE_APAL_med.csv")

write.csv(SP_APAL_med, "D:/SP_APAL_med.csv")

write.csv(TO_APAL_med, "D:/TO_APAC_med.csv")


##### RIBAVIRINA

BR_APAC_med_hepc_RIBAVIRINA_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604450010"  )

BR_APAC_med_hepc_RIBAVIRINA_2019$tratamento <- "RIBAVIRINA"


##### TELAPREVIR

BR_APAC_med_hepc_TELAPREVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604640013"  )

BR_APAC_med_hepc_TELAPREVIR_2019$tratamento <- "TELAPREVIR"


#### BOCEPREVIR

BR_APAC_med_hepc_BOCEPREVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604640021"  )

BR_APAC_med_hepc_BOCEPREVIR_2019$tratamento <- "BOCEPREVIR"

#### SOFOSBUVIR

BR_APAC_med_hepc_SOFOSBUVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604760019"  )

BR_APAC_med_hepc_SOFOSBUVIR_2019$tratamento <- "SOFOSBUVIR"

#### DACLATASVIR

BR_APAC_med_hepc_DACLATASVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604760027" | AP_PRIPAL=="0604760035" )

BR_APAC_med_hepc_DACLATASVIR_2019$tratamento <- "DACLATASVIR"

#### SIMEPREVIR

BR_APAC_med_hepc_SIMEPREVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604640030" )
BR_APAC_med_hepc_SIMEPREVIR_2019$tratamento <- "SIMEPREVIR"

#### OMBITASVIR - 12,5 MG / VERUPREVIR 75 MG/ RITONAVIR 50 MG + DASABUVIR 250 MG

BR_APAC_med_hepc_OVRD_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604760043" )
BR_APAC_med_hepc_OVRD_2019$tratamento <- "OVRD"


BR_APAC_trat_2019 <- do.call("rbind", list(BR_APAC_med_hepc_DACLATASVIR_2019, BR_APAC_med_hepc_OVRD_2019, BR_APAC_med_hepc_RIBAVIRINA_2019, BR_APAC_med_hepc_SIMEPREVIR_2019, BR_APAC_med_hepc_SOFOSBUVIR_2019))
                                           
BR_APAC_trat_2019_un <- distinct(BR_APAC_trat_2019, AP_CNSPCN , .keep_all = TRUE)

BR_APAC_trat_2019_un2 <- distinct(BR_APAC_trat_2019 , .keep_all = TRUE)


str(BR_APAC_trat_2019)


BR_APAC_trat_2015_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2015_un.csv")

BR_APAC_trat_2016_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2016_un.csv")

BR_APAC_trat_2017_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2017_un.csv")

BR_APAC_trat_2018_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2018_un.csv")

BR_APAC_trat_2019_un2 <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2019_un.csv")


BR_apac_trat_2015_2018 <-  do.call("rbind", list(BR_APAC_trat_2015_un, BR_APAC_trat_2016_un, BR_APAC_trat_2017_un, BR_APAC_trat_2018_un ))

BR_APAC_trat_2019$ano <- substr(BR_APAC_trat_2019$AP_CMP  ,1,4)
 
BR_APAC_trat_2019_iniciado <- anti_join(BR_APAC_trat_2019, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_APAC_trat_2019_iniciado_un <- anti_join(BR_APAC_trat_2019_un, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_apac_trat_2015_2018 <- select(BR_apac_trat_2015_2018, -X)

BR_apac_trat_2015_2018 <- select(BR_apac_trat_2015_2018, AP_MVM, AP_CONDIC, AP_GESTAO, AP_CODUNI, AP_AUTORIZ, AP_CMP, AP_PRIPAL, AP_VL_AP, AP_UFMUN, AP_TPUPS, AP_TIPPRE, AP_MN_IND, AP_CNPJCPF, AP_CNPJMNT, AP_CNSPCN, AP_COIDADE, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_RACACOR, AP_MUNPCN, AP_UFNACIO, AP_CEPPCN , AP_UFDIF, AP_MNDIF, AP_DTINIC, AP_DTFIM, AP_TPATEN, AP_TPAPAC, AP_MOTSAI,AP_OBITO, AP_ENCERR, AP_PERMAN, AP_ALTA, AP_TRANSF, AP_DTOCOR, AP_CODEMI, AP_CATEND, AP_APACANT, AP_UNISOL, AP_DTSOLIC, AP_DTAUT,AP_CIDCAS, AP_CIDPRI, AP_CIDSEC, AP_ETNIA, AM_PESO,AM_ALTURA,AM_TRANSPL, AM_QTDTRAN, AM_GESTANT, AP_NATJUR  , UF, tratamento = tratamentoCID, ano   )
             
colnames(BR_apac_trat_2015_2018)

colnames(BR_APAC_trat_2019)

BR_APAC_trat_2019$AP_CMP <- as.character(BR_APAC_trat_2019$AP_CMP)

BR_APAC_trat_2019_CMP_09_10 <- filter(BR_APAC_trat_2019, AP_CMP == "201909" | AP_CMP == "201910")

BR_APAC_trat_2019_un2 <- select(BR_APAC_trat_2019_un2, -X)

BR_APAC_trat_2019_CMP_09_10_un <- distinct(BR_APAC_trat_2019_CMP_09_10 ,AP_CNSPCN, .keep_all = TRUE)

BR_apac_trat_2015_2018 <-  do.call("rbind", list(BR_APAC_trat_2015_un, BR_APAC_trat_2016_un, BR_APAC_trat_2017_un, BR_APAC_trat_2018_un ))

BR_APAC_trat_2019_CMP_09_10_un_iniciado <-  anti_join(BR_APAC_trat_2019_CMP_09_10_un, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_apac_trat_2019_unico_iniciado <-  do.call("rbind", list(BR_APAC_trat_2019_un2,   BR_APAC_trat_2019_CMP_09_10_un_iniciado ))

BR_APAC_trat_2019_un2 <- select(BR_APAC_trat_2019_un2, AP_MVM, AP_CONDIC, AP_GESTAO, AP_CODUNI, AP_AUTORIZ, AP_CMP, AP_PRIPAL, AP_VL_AP, AP_UFMUN, AP_TPUPS, AP_TIPPRE, AP_MN_IND, AP_CNPJCPF, AP_CNPJMNT, AP_CNSPCN, AP_COIDADE, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_RACACOR, AP_MUNPCN, AP_UFNACIO, AP_CEPPCN , AP_UFDIF, AP_MNDIF, AP_DTINIC, AP_DTFIM, AP_TPATEN, AP_TPAPAC, AP_MOTSAI,AP_OBITO, AP_ENCERR, AP_PERMAN, AP_ALTA, AP_TRANSF, AP_DTOCOR, AP_CODEMI, AP_CATEND, AP_APACANT, AP_UNISOL, AP_DTSOLIC, AP_DTAUT,AP_CIDCAS, AP_CIDPRI, AP_CIDSEC, AP_ETNIA, AM_PESO,AM_ALTURA,AM_TRANSPL, AM_QTDTRAN, AM_GESTANT, AP_NATJUR  , UF, tratamento = tratamentoCID, ano   )





BR_APAC_trat_2019_un <- write.dbf(BR_APAC_trat_2019_un, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_un.dbf")
  

write.dbf(BR_APAC_trat_2019_CID_un, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_CID_un.dbf")
write.dbf(BR_APAC_trat_2019_CID_antijoin, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_CID_iniciados.dbf")


BR_apac_trat_2019_un_iniciado <- write.dbf(BR_APAC_trat_2019_un, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_un.dbf")

  
  
BR_APAC_trat_2019_CID <- filter(BR_APAC_med, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_APAC_trat_2019_CID$ano <- substr(BR_APAC_trat_2019_CID$AP_CMP  ,1,4)


BR_APAC_trat_2019_CID_un <- distinct(BR_APAC_trat_2019_CID,  AP_CNSPCN, .keep_all = TRUE )

BR_APAC_trat_2019_CID_un$AP_CNSPCN <- as.character(BR_APAC_trat_2019_CID_un$AP_CNSPCN)
BR_apac_trat_2015_2018$AP_CNSPCN <- as.character(BR_apac_trat_2015_2018$AP_CNSPCN)


BR_APAC_trat_2019_CID_antijoin <- anti_join(BR_APAC_trat_2019_CID_un, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_APAC_trat_2019_CID_antijoin_un <- distinct(BR_APAC_trat_2019_CID_antijoin,  AP_CNSPCN, .keep_all = TRUE )


plot_hepc_2019 <- matrix(c(32094,"tratamentos 2019", 30487, "trtamentos iniciados em 2019"),ncol=2,byrow=TRUE)

colnames(plot_hepc_2019) <- c("Freq","tipo")

plot_hepc_2019 <- as.data.frame(plot_hepc_2019)

plotinidist2019 <- matrix(c(32094,"tratamentos 2019", 30487, "trtamentos iniciados em 2019"),ncol=2,byrow=TRUE)
colnames(plotinidist2019) <- c("Freq","tipo")
plotinidist2019 <- as.data.frame(plotinidist2019)




write.csv(plot_hepc_2019, file = '/app/app_vigi/plot_hepc_2019.csv' )

total_ini_2019 <- matrix(c( "total", 30487),ncol=2,byrow=TRUE)

colnames(total_ini_2019) <- c("Var1","Freq")

total_ini_2019 <- as.data.frame(total_ini_2019)

####################################################
################## Plot metas Brasil e por UF
####################################################

#### Brasil

## Anti HCV # pop * 0.7

210147125 * 0.7 #= 147102988

## HCV RNA # pop * 0.52

210147125 * 0.52 #= 109276505

## Notifica??es Sinan 

# 26167

## Tratamentos Brasil 2019 at?  out

# 30487

## Cura RVS # trat_br * 0.97

30487 * 0.97 #= 29572

## RO ##
## Anti HCV # pop * 0.7

1777225 * 0.7 #=  1244058

## HCV RNA # pop * 0.52

1777225 * 0.52 #= 924157

## Notifica??es Sinan 2018

# 207

## Tratamentos RO 2019 at?  out

# 162

## Cura RVS # trat_br * 0.97

162 * 0.97 #= 157

## AC ##
## Anti HCV # pop * 0.7

881935 * 0.7 #=  617354

## HCV RNA # pop * 0.52

881935 * 0.52 #=  458606

## Notifica??es Sinan 2018

# 99

## Tratamentos AC 2019 at?  out

# 274

## Cura RVS # trat_br * 0.97

274 * 0.97 #= 265

## AM ##
## Anti HCV # pop * 0.7

4144597 * 0.7 #=  2901218

## HCV RNA # pop * 0.52

4144597 * 0.52 #=  2155190

## Notifica??es Sinan 2018

# 319

## Tratamentos AM 2019 at?  out

# 161

## Cura RVS # trat_br * 0.97

161 * 0.97 #= 156

## RR ##
## Anti HCV # pop * 0.7

605761 * 0.7 #=  424033

## HCV RNA # pop * 0.52

605761 * 0.52 #=  314996

## Notifica??es Sinan 2018

# 69

## Tratamentos RR 2019 at?  out

# 36

## Cura RVS # trat_br * 0.97

36 * 0.97 #= 35

## PA ##
## Anti HCV # pop * 0.7

8602865 * 0.7 #=  6022006

## HCV RNA # pop * 0.52

8602865 * 0.52 #=  4473490

## Notifica??es Sinan 2018

# 274

## Tratamentos PA 2019 at?  out

# 185

## Cura RVS # trat_br * 0.97

185 * 0.97 #= 179

## AP ##
## Anti HCV # pop * 0.7

845731 * 0.7 #=  592012

## HCV RNA # pop * 0.52

845731 * 0.52 #=  439780

## Notifica??es Sinan 2018

# 31

## Tratamentos AP 2019 at?  out

# 58

## Cura RVS # trat_br * 0.97

58 * 0.97 #= 56

## TO ##
## Anti HCV # pop * 0.7

1572866 * 0.7 #=  1101006

## HCV RNA # pop * 0.52

1572866 * 0.52 #=  817890

## Notifica??es Sinan 2018

# 41

## Tratamentos TO 2019 at?  out

# 68

## Cura RVS # trat_br * 0.97

68 * 0.97 #= 66

## MA ##
## Anti HCV # pop * 0.7

7075181 * 0.7 #=  4952627

## HCV RNA # pop * 0.52

7075181 * 0.52 #=  3679094

## Notifica??es Sinan 2018

# 209

## Tratamentos MA 2019 at?  out

# 342

## Cura RVS # trat_br * 0.97

342 * 0.97 #= 332

# PI ##
## Anti HCV # pop * 0.7

3273227 * 0.7 #=  2291259

## HCV RNA # pop * 0.52

3273227 * 0.52 #= 1702078

## Notifica??es Sinan 2018

# 71

## Tratamentos PI 2019 at?  out

# 150

## Cura RVS # trat_br * 0.97

150 * 0.97 #= 145

# CE ##
## Anti HCV # pop * 0.7

9132078 * 0.7 #=  6392455

## HCV RNA # pop * 0.52

9132078 * 0.52 #= 4748681

## Notifica??es Sinan 2018

# 225

## Tratamentos CE 2019 at?  out

# 295

## Cura RVS # trat_br * 0.97

295 * 0.97 #= 286

# RN ##
## Anti HCV # pop * 0.7

3506853 * 0.7 #=  2454797

## HCV RNA # pop * 0.52

3506853 * 0.52 #= 1823564

## Notifica??es Sinan 2018

# 133

## Tratamentos RN 2019 at?  out

# 123

## Cura RVS # trat_br * 0.97

123 * 0.97 #= 119

# PB ##

## Anti HCV # pop * 0.7

4018127 * 0.7 #=  2812689

## HCV RNA # pop * 0.52

4018127 * 0.52 #= 2089426

## Notifica??es Sinan 2018

# 135

## Tratamentos PB 2019 at?  out

# 152

## Cura RVS # trat_br * 0.97

152 * 0.97 #= 147

# PE

## Anti HCV # pop * 0.7

9557071 * 0.7 #=  6689950

## HCV RNA # pop * 0.52

9557071 * 0.52 #= 4969677

## Notifica??es Sinan 2018

# 207

## Tratamentos PE 2019 at?  out

# 499

## Cura RVS # trat_br * 0.97

499 * 0.97 #= 484

## AL ##

## Anti HCV # pop * 0.7

3337357 * 0.7 #=  2336150

## HCV RNA # pop * 0.52

3337357 * 0.52 #= 1735426

## Notifica??es Sinan 2018

# 120

## Tratamentos AL 2019 at?  out

# 176

## Cura RVS # trat_br * 0.97

176 * 0.97 #= 171

## SE ##

## Anti HCV # pop * 0.7

2298696 * 0.7 #=  1609087

## HCV RNA # pop * 0.52

2298696 * 0.52 #= 1195322

## Notifica??es Sinan 2018

# 116

## Tratamentos SE 2019 at?  out

# 108

## Cura RVS # trat_br * 0.97

108 * 0.97 #= 105

## BA ##

## Anti HCV # pop * 0.7

14873064 * 0.7 #=  10411145

## HCV RNA # pop * 0.52

14873064 * 0.52 #= 7733993

## Notifica??es Sinan 2018

# 1028

## Tratamentos BA 2019 at?  out

# 758

## Cura RVS # trat_br * 0.97

758 * 0.97 #= 735

# MG ##

## Anti HCV # pop * 0.7

21168791 * 0.7 #=  14818154

## HCV RNA # pop * 0.52

21168791 * 0.52 #= 11007771

## Notifica??es Sinan 2018

# 1573

## Tratamentos MG 2019 at?  out

# 2069

## Cura RVS # trat_br * 0.97

2069 * 0.97 #= 2007

# ES ##

## Anti HCV # pop * 0.7

4018650 * 0.7 #=  2813055

## HCV RNA # pop * 0.52

4018650 * 0.52 #= 2089698

## Notifica??es Sinan 2018

# 250

## Tratamentos ES 2019 at?  out

# 437

## Cura RVS # trat_br * 0.97

437 * 0.97 #= 424

# RJ ##

## Anti HCV # pop * 0.7

17264943 * 0.7 #=  12085460

## HCV RNA # pop * 0.52

17264943 * 0.52 #= 8977770

## Notifica??es Sinan 2018

# 1351

## Tratamentos RJ 2019 at?  out

# 2398

## Cura RVS # trat_br * 0.97

2398 * 0.97 #= 2326

# SP

## Anti HCV # pop * 0.7

45919049 * 0.7 #=  32143334

## HCV RNA # pop * 0.52

45919049 * 0.52 #= 23877905

## Notifica??es Sinan 2018

# 10819

## Tratamentos SP 2019 at?  out

# 11928

## Cura RVS # trat_br * 0.97

11928 * 0.97 #= 11570

# PR

## Anti HCV # pop * 0.7

11433957 * 0.7 #=  8003770

## HCV RNA # pop * 0.52

11433957 * 0.52 #= 5945658

## Notifica??es Sinan 2018

# 1438

## Tratamentos PR 2019 at?  out

# 1436

## Cura RVS # trat_br * 0.97

1436 * 0.97 #= 1393

# SC ##

## Anti HCV # pop * 0.7

7164788 * 0.7 #=  5015352

## HCV RNA # pop * 0.52

7164788 * 0.52 #= 3725690

## Notifica??es Sinan 2018

# 1257

## Tratamentos SC 2019 at?  out

# 1634

## Cura RVS # trat_br * 0.97

1634 * 0.97 #= 1585

# RS ##

## Anti HCV # pop * 0.7

11377239 * 0.7 #= 7964067

## HCV RNA # pop * 0.52

11377239 * 0.52 #= 5916164

## Notifica??es Sinan 2018

# 5271

## Tratamentos RS 2019 at?  out

# 5717

## Cura RVS # trat_br * 0.97

5717 * 0.97 #= 5545

# MS ##

## Anti HCV # pop * 0.7

2778986 * 0.7 #= 1945290

## HCV RNA # pop * 0.52

2778986 * 0.52 #= 1445073

## Notifica??es Sinan 2018

# 243

## Tratamentos MS 2019 at?  out

# 256

## Cura RVS # trat_br * 0.97

256 * 0.97 #= 248

# MT ##

## Anti HCV # pop * 0.7

3484466 * 0.7 #= 2439126

## HCV RNA # pop * 0.52

3484466 * 0.52 #= 1811922

## Notifica??es Sinan 2018

# 195

## Tratamentos MT 2019 at?  out

# 283

## Cura RVS # trat_br * 0.97

283 * 0.97 #= 274

# GO ##

## Anti HCV # pop * 0.7

7018354 * 0.7 #= 4912848

## HCV RNA # pop * 0.52

7018354 * 0.52 #= 3649544

## Notifica??es Sinan 2018

# 352

## Tratamentos GO 2019 at?  out

# 402

## Cura RVS # trat_br * 0.97

402 * 0.97 #= 389

# DF

## Anti HCV # pop * 0.7

3015268 * 0.7 #= 2110688

## HCV RNA # pop * 0.52

3015268 * 0.52 #= 1567939

## Notifica??es Sinan 2018

# 131

## Tratamentos DF 2019 at?  out

# 372

## Cura RVS # trat_br * 0.97

372 * 0.97 #= 361

##########
## Produzindo tabelas
#########3

## Brasil

brasil_meta <- matrix(c("anti HCV", 147102988, "HCV RNA",109276505 ),ncol=2,byrow=TRUE)
colnames(brasil_meta) <- c("var1","freq")
brasil_meta <- as.data.frame(brasil_meta)

brasil_meta2 <- matrix(c("NotificaÃ§Ãµes SINAN 2018", 26167, "Tratamentos 2019",30487,"estimativa RVS 2019", 29572),ncol=2,byrow=TRUE)
colnames(brasil_meta2) <- c("var1","freq")
brasil_meta2 <- as.data.frame(brasil_meta2)

ggplot(data=brasil_meta , aes(x=var1, y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 

ggplot(data=brasil_meta2 , aes(x=reorder(var1, -freq), y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 


brasil_meta$freq <- as.character(brasil_meta$freq)

brasil_meta$freq <- as.integer(brasil_meta$freq)

brasil_meta2$freq <- as.character(brasil_meta2$freq)

brasil_meta2$freq <- as.integer(brasil_meta2$freq)

## RO ##

RO_meta <- matrix(c("anti HCV", 1244058, "HCV RNA",924157 ),ncol=2,byrow=TRUE)
colnames(RO_meta) <- c("var1","freq")
RO_meta <- as.data.frame(RO_meta)

RO_meta2 <- matrix(c("NotificaÃ§Ãµes SINAN 2018", 207, "Tratamentos 2019",162,"estimativa RVS 2019", 157),ncol=2,byrow=TRUE)
colnames(RO_meta2) <- c("var1","freq")
RO_meta2 <- as.data.frame(RO_meta2)

ggplot(data=RO_meta , aes(x=var1, y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 

ggplot(data=RO_meta2 , aes(x=reorder(var1, -freq), y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 


RO_meta$freq <- as.character(RO_meta$freq)

RO_meta$freq <- as.integer(RO_meta$freq)

RO_meta2$freq <- as.character(RO_meta2$freq)

RO_meta2$freq <- as.integer(RO_meta2$freq)

## AC ##

AC_meta <- matrix(c("anti HCV", 617354, "HCV RNA",458606 ),ncol=2,byrow=TRUE)
colnames(AC_meta) <- c("var1","freq")
AC_meta <- as.data.frame(AC_meta)

AC_meta2 <- matrix(c("NotificaÃ§Ãµes SINAN 2018", 99, "Tratamentos 2019",274,"estimativa RVS 2019", 265),ncol=2,byrow=TRUE)
colnames(AC_meta2) <- c("var1","freq")
AC_meta2 <- as.data.frame(AC_meta2)

ggplot(data=AC_meta , aes(x=var1, y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 

ggplot(data=AC_meta2 , aes(x=reorder(var1, -freq), y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 


AC_meta$freq <- as.character(AC_meta$freq)

AC_meta$freq <- as.integer(AC_meta$freq)

AC_meta2$freq <- as.character(AC_meta2$freq)

AC_meta2$freq <- as.integer(AC_meta2$freq)


## AM ##

AM_meta <- matrix(c("anti HCV", 2901218, "HCV RNA",2155190 ),ncol=2,byrow=TRUE)
colnames(AM_meta) <- c("var1","freq")
AM_meta <- as.data.frame(AM_meta)

AM_meta2 <- matrix(c("NotificaÃ§Ãµes SINAN 2018", 319, "Tratamentos 2019",161,"estimativa RVS 2019", 156),ncol=2,byrow=TRUE)
colnames(AM_meta2) <- c("var1","freq")
AM_meta2 <- as.data.frame(AM_meta2)

ggplot(data=AM_meta , aes(x=var1, y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 

ggplot(data=AM_meta2 , aes(x=reorder(var1, -freq), y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 


AM_meta$freq <- as.character(AM_meta$freq)

AM_meta$freq <- as.integer(AM_meta$freq)

AM_meta2$freq <- as.character(AM_meta2$freq)

AM_meta2$freq <- as.integer(AM_meta2$freq)


## RR ##

RR_meta <- matrix(c("anti HCV", 424033, "HCV RNA",314996 ),ncol=2,byrow=TRUE)
colnames(RR_meta) <- c("var1","freq")
RR_meta <- as.data.frame(RR_meta)

RR_meta2 <- matrix(c("NotificaÃ§Ãµes SINAN 2018", 69, "Tratamentos 2019",36,"estimativa RVS 2019", 35),ncol=2,byrow=TRUE)
colnames(RR_meta2) <- c("var1","freq")
RR_meta2 <- as.data.frame(RR_meta2)

ggplot(data=RR_meta , aes(x=var1, y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 

ggplot(data=RR_meta2 , aes(x=reorder(var1, -freq), y=freq , fill=var1)) +
  geom_bar(stat="identity", position=position_dodge(), width=0.5)+
  geom_text(aes(label=freq), position=position_dodge(width = 1), vjust = 0, size=3.5)+
  theme_minimal()  + labs(x="", y = "FrequÃªncia")  + labs(fill = "")  + scale_color_brewer(palette = "Paired") 


RR_meta$freq <- as.character(RR_meta$freq)

RR_meta$freq <- as.integer(RR_meta$freq)

RR_meta2$freq <- as.character(RR_meta2$freq)

RR_meta2$freq <- as.integer(RR_meta2$freq)

## Anti HCV # pop * 0.7

605761 * 0.7 #=  424033

## HCV RNA # pop * 0.52

605761 * 0.52 #=  314996

## Notifica??es Sinan 2018

# 69

## Tratamentos RR 2019 at?  out

# 36

## Cura RVS # trat_br * 0.97

36 * 0.97 #= 35

## PA ##
## Anti HCV # pop * 0.7

8602865 * 0.7 #=  6022006

## HCV RNA # pop * 0.52

8602865 * 0.52 #=  4473490

## Notifica??es Sinan 2018

# 274

## Tratamentos PA 2019 at?  out

# 185

## Cura RVS # trat_br * 0.97

185 * 0.97 #= 179

## AP ##
## Anti HCV # pop * 0.7

845731 * 0.7 #=  592012

## HCV RNA # pop * 0.52

845731 * 0.52 #=  439780

## Notifica??es Sinan 2018

# 31

## Tratamentos AP 2019 at?  out

# 58

## Cura RVS # trat_br * 0.97

58 * 0.97 #= 56

## TO ##
## Anti HCV # pop * 0.7

1572866 * 0.7 #=  1101006

## HCV RNA # pop * 0.52

1572866 * 0.52 #=  817890

## Notifica??es Sinan 2018

# 41

## Tratamentos TO 2019 at?  out

# 68

## Cura RVS # trat_br * 0.97

68 * 0.97 #= 66

## MA ##
## Anti HCV # pop * 0.7

7075181 * 0.7 #=  4952627

## HCV RNA # pop * 0.52

7075181 * 0.52 #=  3679094

## Notifica??es Sinan 2018

# 209

## Tratamentos MA 2019 at?  out

# 342

## Cura RVS # trat_br * 0.97

342 * 0.97 #= 332

# PI ##
## Anti HCV # pop * 0.7

3273227 * 0.7 #=  2291259

## HCV RNA # pop * 0.52

3273227 * 0.52 #= 1702078

## Notifica??es Sinan 2018

# 71

## Tratamentos PI 2019 at?  out

# 150

## Cura RVS # trat_br * 0.97

150 * 0.97 #= 145

# CE ##
## Anti HCV # pop * 0.7

9132078 * 0.7 #=  6392455

## HCV RNA # pop * 0.52

9132078 * 0.52 #= 4748681

## Notifica??es Sinan 2018

# 225

## Tratamentos CE 2019 at?  out

# 295

## Cura RVS # trat_br * 0.97

295 * 0.97 #= 286

# RN ##
## Anti HCV # pop * 0.7

3506853 * 0.7 #=  2454797

## HCV RNA # pop * 0.52

3506853 * 0.52 #= 1823564

## Notifica??es Sinan 2018

# 133

## Tratamentos RN 2019 at?  out

# 123

## Cura RVS # trat_br * 0.97

123 * 0.97 #= 119

# PB ##

## Anti HCV # pop * 0.7

4018127 * 0.7 #=  2812689

## HCV RNA # pop * 0.52

4018127 * 0.52 #= 2089426

## Notifica??es Sinan 2018

# 135

## Tratamentos PB 2019 at?  out

# 152

## Cura RVS # trat_br * 0.97

152 * 0.97 #= 147

# PE

## Anti HCV # pop * 0.7

9557071 * 0.7 #=  6689950

## HCV RNA # pop * 0.52

9557071 * 0.52 #= 4969677

## Notifica??es Sinan 2018

# 207

## Tratamentos PE 2019 at?  out

# 499

## Cura RVS # trat_br * 0.97

499 * 0.97 #= 484

## AL ##

## Anti HCV # pop * 0.7

3337357 * 0.7 #=  2336150

## HCV RNA # pop * 0.52

3337357 * 0.52 #= 1735426

## Notifica??es Sinan 2018

# 120

## Tratamentos AL 2019 at?  out

# 176

## Cura RVS # trat_br * 0.97

176 * 0.97 #= 171

## SE ##

## Anti HCV # pop * 0.7

2298696 * 0.7 #=  1609087

## HCV RNA # pop * 0.52

2298696 * 0.52 #= 1195322

## Notifica??es Sinan 2018

# 116

## Tratamentos SE 2019 at?  out

# 108

## Cura RVS # trat_br * 0.97

108 * 0.97 #= 105

## BA ##

## Anti HCV # pop * 0.7

14873064 * 0.7 #=  10411145

## HCV RNA # pop * 0.52

14873064 * 0.52 #= 7733993

## Notifica??es Sinan 2018

# 1028

## Tratamentos BA 2019 at?  out

# 758

## Cura RVS # trat_br * 0.97

758 * 0.97 #= 735

# MG ##

## Anti HCV # pop * 0.7

21168791 * 0.7 #=  14818154

## HCV RNA # pop * 0.52

21168791 * 0.52 #= 11007771

## Notifica??es Sinan 2018

# 1573

## Tratamentos MG 2019 at?  out

# 2069

## Cura RVS # trat_br * 0.97

2069 * 0.97 #= 2007

# ES ##

## Anti HCV # pop * 0.7

4018650 * 0.7 #=  2813055

## HCV RNA # pop * 0.52

4018650 * 0.52 #= 2089698

## Notifica??es Sinan 2018

# 250

## Tratamentos ES 2019 at?  out

# 437

## Cura RVS # trat_br * 0.97

437 * 0.97 #= 424

# RJ ##

## Anti HCV # pop * 0.7

17264943 * 0.7 #=  12085460

## HCV RNA # pop * 0.52

17264943 * 0.52 #= 8977770

## Notifica??es Sinan 2018

# 1351

## Tratamentos RJ 2019 at?  out

# 2398

## Cura RVS # trat_br * 0.97

2398 * 0.97 #= 2326

# SP

## Anti HCV # pop * 0.7

45919049 * 0.7 #=  32143334

## HCV RNA # pop * 0.52

45919049 * 0.52 #= 23877905

## Notifica??es Sinan 2018

# 10819

## Tratamentos SP 2019 at?  out

# 11928

## Cura RVS # trat_br * 0.97

11928 * 0.97 #= 11570

# PR

## Anti HCV # pop * 0.7

11433957 * 0.7 #=  8003770

## HCV RNA # pop * 0.52

11433957 * 0.52 #= 5945658

## Notifica??es Sinan 2018

# 1438

## Tratamentos PR 2019 at?  out

# 1436

## Cura RVS # trat_br * 0.97

1436 * 0.97 #= 1393

# SC ##

## Anti HCV # pop * 0.7

7164788 * 0.7 #=  5015352

## HCV RNA # pop * 0.52

7164788 * 0.52 #= 3725690

## Notifica??es Sinan 2018

# 1257

## Tratamentos SC 2019 at?  out

# 1634

## Cura RVS # trat_br * 0.97

1634 * 0.97 #= 1585

# RS ##

## Anti HCV # pop * 0.7

11377239 * 0.7 #= 7964067

## HCV RNA # pop * 0.52

11377239 * 0.52 #= 5916164

## Notifica??es Sinan 2018

# 5271

## Tratamentos RS 2019 at?  out

# 5717

## Cura RVS # trat_br * 0.97

5717 * 0.97 #= 5545

# MS ##

## Anti HCV # pop * 0.7

2778986 * 0.7 #= 1945290

## HCV RNA # pop * 0.52

2778986 * 0.52 #= 1445073

## Notifica??es Sinan 2018

# 243

## Tratamentos MS 2019 at?  out

# 256

## Cura RVS # trat_br * 0.97

256 * 0.97 #= 248

# MT ##

## Anti HCV # pop * 0.7

3484466 * 0.7 #= 2439126

## HCV RNA # pop * 0.52

3484466 * 0.52 #= 1811922

## Notifica??es Sinan 2018

# 195

## Tratamentos MT 2019 at?  out

# 283

## Cura RVS # trat_br * 0.97

283 * 0.97 #= 274

# GO ##

## Anti HCV # pop * 0.7

7018354 * 0.7 #= 4912848

## HCV RNA # pop * 0.52

7018354 * 0.52 #= 3649544

## Notifica??es Sinan 2018

# 352

## Tratamentos GO 2019 at?  out

# 402

## Cura RVS # trat_br * 0.97

402 * 0.97 #= 389

# DF

## Anti HCV # pop * 0.7

3015268 * 0.7 #= 2110688

## HCV RNA # pop * 0.52

3015268 * 0.52 #= 1567939

## Notifica??es Sinan 2018

# 131

## Tratamentos DF 2019 at?  out

# 372

## Cura RVS # trat_br * 0.97

372 * 0.97 #= 361

##### Unindo subdivisões 1, 2, 3 - hep b

BR_med_01_CID_hepb_un <- read.csv("D:/BR_med_01_CID_hepb_un")
BR_med_02_CID_hepb_un <- read.csv("D:/BR_med_02_CID_hepb_un")
BR_med_03_CID_hepb_un <- read.csv("D:/BR_med_03_CID_hepb_un")

BR_med_01_CID_hepb_un <- select(BR_med_01_CID_hepb_un, -X)
BR_med_02_CID_hepb_un <- select(BR_med_02_CID_hepb_un, -X)
BR_med_03_CID_hepb_un <- select(BR_med_03_CID_hepb_un, -X)


BR_APAC_med_hepb <- do.call("rbind", list(BR_med_01_CID_hepb_un, BR_med_02_CID_hepb_un, BR_med_03_CID_hepb_un ))

##### Unindo subdivisões 1, 2, 3 - hep c

BR_med_01_CID_hepc_un <- read.csv("D:/BR_med_01_CID_hepc_un")
BR_med_02_CID_hepc_un <- read.csv("D:/BR_med_02_CID_hepc_un")
BR_med_03_CID_hepc_un <- read.csv("D:/BR_med_03_CID_hepc_un")

BR_med_01_CID_hepc_un <- select(BR_med_01_CID_hepc_un, -X)
BR_med_02_CID_hepc_un <- select(BR_med_02_CID_hepc_un, -X)
BR_med_03_CID_hepc_un <- select(BR_med_03_CID_hepc_un, -X)


BR_APAC_med_hepc <- do.call("rbind", list(BR_med_01_CID_hepc_un, BR_med_02_CID_hepc_un, BR_med_03_CID_hepc_un ))

# C

plot_uf_2019 <- table(BR_APAC_med_hepc$UF)

plot_uf_2019 <- as.data.frame(plot_uf_2019)

plot_uf_2019$Var1 <- as.character(plot_uf_2019$Var1)

# B
 
plot_uf_2019b <- table(BR_APAC_med_hepb$UF)

plot_uf_2019b <- as.data.frame(plot_uf_2019b)

plot_uf_2019b$Var1 <- as.character(plot_uf_2019b$Var1)


#### Salvar tabelas painel

write.csv(plot_uf_2019, "E:/DEMANDA_PAINEL_HEPATITES_VIRAIS/meduf2019_2.csv")

write.csv(plot_uf_2019b, "E:/DEMANDA_PAINEL_HEPATITES_VIRAIS/medufb2019_2.csv")


### PLOT

ggplot(data=plot_hepc_2019, aes(x=tipo, y=Freq)) +
  geom_bar(stat="identity", fill="steelblue", width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="Tratamento", y = "Frequ?ncia") + labs(fill = "Tratamento") + ggtitle("Tratamentos 2019 (B182 e B171)")

### PLOT

ggplot(data=plot_hepc_2019, aes(x=tipo, y=Freq)) +
  geom_bar(stat="identity", fill="steelblue", width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="Tratamento", y = "Frequ?ncia") + labs(fill = "Tratamento") + ggtitle("Tratamentos 2019 (B182 e B171)")


#### Plot UF

plot_uf_2019 <- table(BR_APAC_trat_2019_CID_antijoin$UF)

plot_uf_2019 <- as.data.frame(plot_uf_2019)

plot_uf_2019$Var1 <- as.character(plot_uf_2019$Var1)

ggplot(data=plot_uf_2019_total, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "FrequÃªncia") + ggtitle("Tratamentos 2019 (B171 e B182 por UF) - Tratamentos iniciados")

total_iniC_2019 <- matrix(c( "Brasil", 33951),ncol=2,byrow=TRUE)

colnames(total_iniC_2019) <- c("Var1","Freq")

total_iniC_2019 <- as.data.frame(total_iniC_2019)

plot_uf_2019_total <-  do.call("rbind", list(plot_uf_2019, total_iniC_2019  ))

plot_uf_2019_total$Freq <- as.integer(plot_uf_2019_total$Freq)

plot_uf_2019$Var1[plot_uf_2019$Var1 == "RO"] <- "Rondônia"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "AC"] <- "Acre"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "AM"] <- "Amazonas"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "RR"] <- "Roraima"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "PA"] <- "Pará"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "AP"] <- "Amapá"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "TO"] <- "Tocantins"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "MA"] <- "Maranhão"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "PI"] <- "Piauí"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "CE"] <- "Ceará"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "RN"] <- "Rio Grande do Norte"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "PB"] <- "Paraíba"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "PE"] <- "Pernambuco"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "AL"] <- "Alagoas"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "SE"] <- "Sergipe"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "BA"] <- "Bahia"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "MG"] <- "Minas Gerais"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "ES"] <- "Espírito Santo"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "RJ"] <- "Rio de Janeiro"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "SP"] <- "São Paulo"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "PR"] <- "Paraná"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "SC"] <- "Santa Catarina"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "RS"] <- "Rio Grande do Sul"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "MS"] <- "Mato Grosso do Sul"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "MT"] <- "Mato Grosso"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "GO"] <- "Goiás"
plot_uf_2019$Var1[plot_uf_2019$Var1 == "DF"] <- "Distrito Federal"

plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "RO"] <- "Rondônia"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "AC"] <- "Acre"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "AM"] <- "Amazonas"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "RR"] <- "Roraima"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "PA"] <- "Pará"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "AP"] <- "Amapá"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "TO"] <- "Tocantins"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "MA"] <- "Maranhão"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "PI"] <- "Piauí"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "CE"] <- "Ceará"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "RN"] <- "Rio Grande do Norte"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "PB"] <- "Paraíba"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "PE"] <- "Pernambuco"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "AL"] <- "Alagoas"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "SE"] <- "Sergipe"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "BA"] <- "Bahia"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "MG"] <- "Minas Gerais"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "ES"] <- "Espírito Santo"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "RJ"] <- "Rio de Janeiro"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "SP"] <- "São Paulo"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "PR"] <- "Paraná"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "SC"] <- "Santa Catarina"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "RS"] <- "Rio Grande do Sul"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "MS"] <- "Mato Grosso do Sul"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "MT"] <- "Mato Grosso"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "GO"] <- "Goiás"
plot_uf_2019b$Var1[plot_uf_2019b$Var1 == "DF"] <- "Distrito Federal"


write.csv(plot_uf_2019_total, "/app/app_vigi/meduf2019.csv")
write.csv(plot_uf_2019, "/app/app_vigi/meduf2019_2.csv")

write.csv(plot_uf_2019, "G:/demanda_painel_final/meduf2019_2.csv")

write.csv(plot_uf_2019b, "E:/demanda_painel_final/medufb2019_2.csv")

BR_APAC_trat_2019_CID_antijoin_UN <- read.csv("D:/BR_APAC_trat_2019_CID_antijoin_UN.csv")

BR_APAC_trat_2019_hepb_CID_UN <- read.csv("D:/BR_APAC_trat_2019_hepb_CID_un.csv")



#### Plot UF

plot_uf_2019 <- table(BR_APAC_trat_2019_CID_un$UF)

plot_uf_2019 <- as.data.frame(plot_uf_2019)

ggplot(data=plot_uf_2019, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "FrequÃªncia") + ggtitle("Tratamentos 2019 (B182 e B171 por UF) - Tratamentos iniciados")



##### Hep B

BR_APAC_trat_2019_hepb_CID <- filter(BR_APAC_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

BR_APAC_trat_2019_hepb_CID$ano <- substr(BR_APAC_trat_2019_hepb_CID$AP_CMP  ,1,4)

BR_APAC_trat_2019_hepb_CID_un <- distinct(BR_APAC_trat_2019_hepb_CID,  AP_CNSPCN, .keep_all = TRUE )

plot_uf_2019b <- table(BR_APAC_trat_2019_hepb_CID_UN$UF)

plot_uf_2019b <- as.data.frame(plot_uf_2019b)  

plot_uf_2019b$Var1 <- as.character(plot_uf_2019b$Var1)

total_b_2019 <- matrix(c( "Brasil", 37030),ncol=2,byrow=TRUE)

colnames(total_b_2019) <- c("Var1","Freq")

total_b_2019 <- as.data.frame(total_b_2019)

plot_uf_2019b <-  do.call("rbind", list(plot_uf_2019b, total_b_2019  ))

plot_uf_2019b$Freq <- as.integer(plot_uf_2019b$Freq)

                      
write.csv(plot_uf_2019b, "/app/app_vigi/medufb2019.csv")
write.csv(plot_uf_2019b, "/app/app_vigi/medufb2019_2.csv")

####### Hep B por estado

# AC

AC_APAC_med_CID <- filter(AC_APAC_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

AC_APAC_med_CID$ano <- substr(AC_APAC_med_CID$AP_CMP  ,1,4)

AC_APAC_med_CID_un <- distinct(AC_APAC_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# AL

AL_APAL_med_CID <- filter(AL_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

AL_APAL_med_CID$ano <- substr(AL_APAL_med_CID$AP_CMP  ,1,4)

AL_APAL_med_CID_un <- distinct(AL_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# AM

AM_APAL_med_CID <- filter(AM_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

AM_APAL_med_CID$ano <- substr(AM_APAL_med_CID$AP_CMP  ,1,4)

AM_APAL_med_CID_un <- distinct(AM_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# AP

AP_APAL_med_CID <- filter(AP_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

AP_APAL_med_CID$ano <- substr(AP_APAL_med_CID$AP_CMP  ,1,4)

AP_APAL_med_CID_un <- distinct(AP_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# BA

BA_APAL_med_CID <- filter(BA_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

BA_APAL_med_CID$ano <- substr(BA_APAL_med_CID$AP_CMP  ,1,4)

BA_APAL_med_CID_un <- distinct(BA_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  CE

CE_APAL_med_CID <- filter(CE_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

CE_APAL_med_CID$ano <- substr(CE_APAL_med_CID$AP_CMP  ,1,4)

CE_APAL_med_CID_un <- distinct(CE_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )


# DF

DF_APAL_med_CID <- filter(DF_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

DF_APAL_med_CID$ano <- substr(DF_APAL_med_CID$AP_CMP  ,1,4)

DF_APAL_med_CID_un <- distinct(DF_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  ES

ES_APAL_med_CID <- filter(ES_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

ES_APAL_med_CID$ano <- substr(ES_APAL_med_CID$AP_CMP  ,1,4)

ES_APAL_med_CID_un <- distinct(ES_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# GO

GO_APAL_med_CID <- filter(GO_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

GO_APAL_med_CID$ano <- substr(GO_APAL_med_CID$AP_CMP  ,1,4)

GO_APAL_med_CID_un <- distinct(GO_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  MA

MA_APAL_med_CID <- filter(MA_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

MA_APAL_med_CID$ano <- substr(MA_APAL_med_CID$AP_CMP  ,1,4)

MA_APAL_med_CID_un <- distinct(MA_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  MG

MG_APAL_med_CID <- filter(MG_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

MG_APAL_med_CID$ano <- substr(MG_APAL_med_CID$AP_CMP  ,1,4)

MG_APAL_med_CID_un <- distinct(MG_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# MS

MS_APAL_med_CID <- filter(MS_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

MS_APAL_med_CID$ano <- substr(MS_APAL_med_CID$AP_CMP  ,1,4)

MS_APAL_med_CID_un <- distinct(MS_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# MT

MT_APAL_med_CID <- filter(MT_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

MT_APAL_med_CID$ano <- substr(MT_APAL_med_CID$AP_CMP  ,1,4)

MT_APAL_med_CID_un <- distinct(MT_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# PA

PA_APAL_med_CID <- filter(PA_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

PA_APAL_med_CID$ano <- substr(PA_APAL_med_CID$AP_CMP  ,1,4)

PA_APAL_med_CID_un <- distinct(PA_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  PB

PB_APAL_med_CID <- filter(PB_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

PB_APAL_med_CID$ano <- substr(PB_APAL_med_CID$AP_CMP  ,1,4)

PB_APAL_med_CID_un <- distinct(PB_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  PE

PE_APAL_med_CID <- filter(PE_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

PE_APAL_med_CID$ano <- substr(PE_APAL_med_CID$AP_CMP  ,1,4)

PE_APAL_med_CID_un <- distinct(PE_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )


# PI

PI_APAL_med_CID <- filter(PI_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

PI_APAL_med_CID$ano <- substr(PI_APAL_med_CID$AP_CMP  ,1,4)

PI_APAL_med_CID_un <- distinct(PI_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# PR

PR_APAL_med_CID <- filter(PR_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

PR_APAL_med_CID$ano <- substr(PR_APAL_med_CID$AP_CMP  ,1,4)

PR_APAL_med_CID_un <- distinct(PR_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  RJ

RJ_APAL_med_CID <- filter(RJ_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

RJ_APAL_med_CID$ano <- substr(RJ_APAL_med_CID$AP_CMP  ,1,4)

RJ_APAL_med_CID_un <- distinct(RJ_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# RN 

RN_APAL_med_CID <- filter(RN_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

RN_APAL_med_CID$ano <- substr(RN_APAL_med_CID$AP_CMP  ,1,4)

RN_APAL_med_CID_un <- distinct(RN_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  RO

RO_APAL_med_CID <- filter(RO_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

RO_APAL_med_CID$ano <- substr(RO_APAL_med_CID$AP_CMP  ,1,4)

RO_APAL_med_CID_un <- distinct(RO_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  RR

RR_APAL_med_CID <- filter(RR_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

RR_APAL_med_CID$ano <- substr(RR_APAL_med_CID$AP_CMP  ,1,4)

RR_APAL_med_CID_un <- distinct(RR_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  RS

RS_APAL_med_CID <- filter(RS_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

RS_APAL_med_CID$ano <- substr(RS_APAL_med_CID$AP_CMP  ,1,4)

RS_APAL_med_CID_un <- distinct(RS_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

#  SC

SC_APAL_med_CID <- filter(SC_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

SC_APAL_med_CID$ano <- substr(SC_APAL_med_CID$AP_CMP  ,1,4)

SC_APAL_med_CID_un <- distinct(SC_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# SE

SE_APAL_med_CID <- filter(SE_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

SE_APAL_med_CID$ano <- substr(SE_APAL_med_CID$AP_CMP  ,1,4)

SE_APAL_med_CID_un <- distinct(SE_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# SP 

SP_APAL_med_CID <- filter(SP_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

SP_APAL_med_CID$ano <- substr(SP_APAL_med_CID$AP_CMP  ,1,4)

SP_APAL_med_CID_un <- distinct(SP_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

# TO

TO_APAL_med_CID <- filter(TO_APAL_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

TO_APAL_med_CID$ano <- substr(TO_APAL_med_CID$AP_CMP  ,1,4)

TO_APAL_med_CID_un <- distinct(TO_APAL_med_CID,  AP_CNSPCN, .keep_all = TRUE )

BR_APAC_med_B_un <- do.call("rbind", list(AC_APAC_med_CID_un, AL_APAL_med_CID_un, AP_APAL_med_CID_un, AM_APAL_med_CID_un, BA_APAL_med_CID_un, CE_APAL_med_CID_un, DF_APAL_med_CID_un, ES_APAL_med_CID_un, GO_APAL_med_CID_un, MA_APAL_med_CID_un, MG_APAL_med_CID_un, MS_APAL_med_CID_un, MT_APAL_med_CID_un, PA_APAL_med_CID_un, PB_APAL_med_CID_un, PE_APAL_med_CID_un, PI_APAL_med_CID_un, PR_APAL_med_CID_un, PR_APAL_med_CID_un, RJ_APAL_med_CID_un, RN_APAL_med_CID_un, RO_APAL_med_CID_un, RR_APAL_med_CID_un, RS_APAL_med_CID_un, SC_APAL_med_CID_un, SE_APAL_med_CID_un, SP_APAL_med_CID_un, TO_APAL_med_CID_un))

###########################
##### imunoglobulina ######
###########################


BR_APAC_trat_2019_imunog <- filter(BR_APAC_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" | AP_CIDPRI == "B160" | AP_CIDPRI == "B162" )

BR_APAC_trat_2019_imunog <-  filter(BR_APAC_trat_2019_imunog, AP_PRIPAL == "0604300034"  | AP_PRIPAL == "0604300018" )

BR_APAC_trat_2019_imunog_un <-  distinct(BR_APAC_trat_2019_imunog, AP_CNSPCN , .keep_all = TRUE)

BR_APAC_trat_2015 <- read.dbc("CC:/Users/mikael.lemos/Desktop/TABWIN/APAC/script_sh/ftp.datasus.gov.br/dissemin/publicos/SIASUS/200801_/Dados/AMAC15*")


AC_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AC_15_16_17_18/", pattern = "*", full.names = T)

AL_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AL_15_16_17_18/", pattern = "*", full.names = T)

AM_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AM_15_6_17_18/", pattern = "*", full.names = T)

AP_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AP_15_16_17_18/", pattern = "*", full.names = T)





AC_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AC_15_16_17_18/", pattern = "*", full.names = T)

AC_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AC_15_16_17_18/", pattern = "*", full.names = T)

AC_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AC_15_16_17_18/", pattern = "*", full.names = T)

AC_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AC_15_16_17_18/", pattern = "*", full.names = T)

AC_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AC_15_16_17_18/", pattern = "*", full.names = T)

AC_15_16_17_18 <- list.files(path = "C:/Users/mikael.lemos/Desktop/TABWIN/APAC_2015_2018/AC_15_16_17_18/", pattern = "*", full.names = T)


AC_15_16_17_18 <- sapply(AC_15_16_17_18, read.dbc) %>% bind_rows()

AL_15_16_17_18 <- sapply(AL_15_16_17_18, read.dbc) %>% bind_rows()

AM_15_16_17_18 <- sapply(AM_15_16_17_18, read.dbc) %>% bind_rows()

AP_15_16_17_18 <- sapply(AP_15_16_17_18, read.dbc) %>% bind_rows()


write.csv(BR_apac_trat_2015_2018, "C:/Users/lemos/OneDrive/Documentos/demandas/PPA_PNS/BR_apac_trat_2015_2018.csv")

