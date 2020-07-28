######################################################################
############ Script de atualização do painel 2020 ####################
########### Medicamentos e tratamentos - hepatites B e C #############
########### V.1.0 - Desenvolvido por Mikael Lemos ####################
######################################################################

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

##################################
###### Carregando tabelas ########
##################################

#############################################
####### medicamentos de hepatite B ##########
#############################################

medicamentos_hepb_consolidado <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/medicamentos_hepb_consolidado.xlsx")

medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "RO"] <- "Rondônia"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "AC"] <- "Acre"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "AM"] <- "Amazonas"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "RR"] <- "Roraima"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "PA"] <- "Pará"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "AP"] <- "Amapá"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "TO"] <- "Tocantins"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "MA"] <- "Maranhão"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "PI"] <- "Piauí"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "CE"] <- "Ceará"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "RN"] <- "Rio Grande do Norte"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "PB"] <- "Paraíba"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "PE"] <- "Pernambuco"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "AL"] <- "Alagoas"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "SE"] <- "Sergipe"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "BA"] <- "Bahia"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "MG"] <- "Minas Gerais"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "ES"] <- "Espírito Santo"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "RJ"] <- "Rio de Janeiro"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "SP"] <- "São Paulo"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "PR"] <- "Paraná"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "SC"] <- "Santa Catarina"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "RS"] <- "Rio Grande do Sul"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "MS"] <- "Mato Grosso do Sul"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "MT"] <- "Mato Grosso"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "GO"] <- "Goiás"
medicamentos_hepb_consolidado$UF[medicamentos_hepb_consolidado$UF == "DF"] <- "Distrito Federal"

write.xlsx(medicamentos_hepb_consolidado, "C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/medicamentos_hepb_consolidado_uf.xlsx")


#############################################
####### Tratamentos de hepatite B ###########
#############################################

## AC - 2020 # Mikael

testte_diali_sp <- read.dbc("C:/Users/lemos/Downloads/ATDSP1902.dbc")

AC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC2001.dbc")
AC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC2002.dbc")
AC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC2003.dbc")
AC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC2004.dbc")
AC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC2005.dbc")
#AC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1906.dbc")
#AC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1907.dbc")
#AC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1908.dbc")
#AC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1909.dbc")
#AC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1910.dbc")
#AC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1911.dbc")
#AC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1912.dbc")

AC_APAC_med <- do.call("rbind", list(AC_APAC_med_01, AC_APAC_med_02, AC_APAC_med_03, AC_APAC_med_04, AC_APAC_med_05))

AC_APAC_med$UF <- "Acre"

AC_APAC_med_01$UF <- "Acre"
AC_APAC_med_02$UF <- "Acre"
AC_APAC_med_03$UF <- "Acre"
AC_APAC_med_04$UF <- "Acre"
AC_APAC_med_05$UF <- "Acre"

# AL - 2020 - Mikael

AL_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL2001.dbc")
AL_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL2002.dbc")
AL_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL2003.dbc")
AL_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL2004.dbc")
AL_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL2005.dbc")
#AL_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1906.dbc")
#AL_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1908.dbc")
#AL_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1909.dbc")
#AL_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1910.dbc")
#AL_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1911.dbc")
#AL_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1912.dbc")

AL_APAL_med <- do.call("rbind", list(AL_APAC_med_01, AL_APAC_med_02, AL_APAC_med_03, AL_APAC_med_04, AL_APAC_med_05 ))

AL_APAL_med$UF <- "Alagoas"

AL_APAC_med_01$UF <- "Alagoas"
AL_APAC_med_02$UF <- "Alagoas"
AL_APAC_med_03$UF <- "Alagoas"
AL_APAC_med_04$UF <- "Alagoas"
AL_APAC_med_05$UF <- "Alagoas"

# AM - 2020 - Mikael

AM_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM2001.dbc")
AM_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM2002.dbc")
AM_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM2003.dbc")
AM_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM2004.dbc")
AM_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM2005.dbc")
#AM_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1906.dbc")
#AM_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1907.dbc")
#AM_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1908.dbc")
#AM_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1909.dbc")
#AM_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1910.dbc")
#AM_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1911.dbc")
#AM_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1912.dbc")

AM_APAL_med <- do.call("rbind", list(AM_APAC_med_01, AM_APAC_med_02, AM_APAC_med_03, AM_APAC_med_04, AM_APAC_med_05))

AM_APAL_med$UF <- "Amazonas"

AM_APAC_med_01$UF <- "Amazonas"
AM_APAC_med_02$UF <- "Amazonas"
AM_APAC_med_03$UF <- "Amazonas"
AM_APAC_med_04$UF <- "Amazonas"
AM_APAC_med_05$UF <- "Amazonas"

## AP - 2020 - Mikael

AP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP2001.dbc")
AP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP2002.dbc")
AP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP2003.dbc")
AP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP2004.dbc")
AP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP2005.dbc")
#AP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1906.dbc")
#AP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1907.dbc")
#AP_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1908.dbc")
#AP_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1909.dbc")
#AP_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1910.dbc")
#AP_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1911.dbc")
#AP_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1912.dbc")

AP_APAL_med <- do.call("rbind", list(AP_APAC_med_01, AP_APAC_med_02, AP_APAC_med_03, AP_APAC_med_04))

AP_APAL_med$UF <- "Amapá"

AP_APAC_med_01$UF <- "Amapá"
AP_APAC_med_02$UF <- "Amapá"
AP_APAC_med_03$UF <- "Amapá"
AP_APAC_med_04$UF <- "Amapá"


# BA- 2020  - Mikael

BA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA2001.dbc")
BA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA2002.dbc")
BA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA2003.dbc")
BA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA2004.dbc")
BA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA2005.dbc")
#BA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1906.dbc")
#BA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1907.dbc")
#BA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1908.dbc")
#BA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1909.dbc")
#BA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1910.dbc")
#BA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1911.dbc")
#BA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1912.dbc")

BA_APAL_med <- do.call("rbind", list(BA_APAC_med_01, BA_APAC_med_02, BA_APAC_med_03, BA_APAC_med_04, BA_APAC_med_05 ))

BA_APAL_med$UF <- "Bahia"

BA_APAC_med_01$UF <- "Bahia"
BA_APAC_med_02$UF <- "Bahia"
BA_APAC_med_03$UF <- "Bahia"
BA_APAC_med_04$UF <- "Bahia"
BA_APAC_med_05$UF <- "Bahia"

## CE - 2020 - Mikael

CE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE2001.dbc")
CE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE2002.dbc")
CE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE2003.dbc")
CE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE2004.dbc")
CE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE2005.dbc")
#CE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1906.dbc")
#CE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1907.dbc")
#CE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1908.dbc")
#CE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1909.dbc")
#CE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1910.dbc")
#CE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1911.dbc")
#CE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1912.dbc")

CE_APAL_med <- do.call("rbind", list(CE_APAC_med_01, CE_APAC_med_02, CE_APAC_med_03, CE_APAC_med_04, CE_APAC_med_05))

CE_APAL_med$UF <- "Ceará"

CE_APAC_med_01$UF <- "Ceará"
CE_APAC_med_02$UF <- "Ceará"
CE_APAC_med_03$UF <- "Ceará"
CE_APAC_med_04$UF <- "Ceará"
CE_APAC_med_05$UF <- "Ceará"


## DF - 2020 - Mikael

DF_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF2001.dbc")
DF_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF2002.dbc")
DF_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF2003.dbc")
DF_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF2004.dbc")
DF_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF2005.dbc")
#DF_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1906.dbc")
#DF_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1907.dbc")
#DF_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1908.dbc")
#DF_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1909.dbc")
#DF_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1910.dbc")
#DF_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1911.dbc")
#DF_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1912.dbc")

DF_APAL_med <- do.call("rbind", list(DF_APAC_med_01, DF_APAC_med_02, DF_APAC_med_03, DF_APAC_med_04, DF_APAC_med_05))

DF_APAL_med$UF <- "Distrito Federal"

DF_APAC_med_01$UF <- "Distrito Federal"
DF_APAC_med_02$UF <- "Distrito Federal"
DF_APAC_med_03$UF <- "Distrito Federal"
DF_APAC_med_04$UF <- "Distrito Federal"
DF_APAC_med_05$UF <- "Distrito Federal"


## ES - 2020 - Mikael

ES_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES2001.dbc")
ES_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES2002.dbc")
ES_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES2003.dbc")
ES_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES2004.dbc")
ES_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES2005.dbc")
#ES_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1906.dbc")
#ES_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1907.dbc")
#ES_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1908.dbc")
#ES_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1909.dbc")
#ES_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1910.dbc")
#ES_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1911.dbc")
#ES_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1912.dbc")

ES_APAL_med <- do.call("rbind", list(ES_APAC_med_01, ES_APAC_med_02, ES_APAC_med_03, ES_APAC_med_04, ES_APAC_med_05))

ES_APAL_med$UF <- "Espírito Santo" 

ES_APAC_med_01$UF <- "Espírito Santo" 
ES_APAC_med_02$UF <- "Espírito Santo" 
ES_APAC_med_03$UF <- "Espírito Santo" 
ES_APAC_med_04$UF <- "Espírito Santo" 
ES_APAC_med_05$UF <- "Espírito Santo" 

## GO - 2020 - Mikael

GO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO2001.dbc")
GO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO2002.dbc")
GO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO2003.dbc")
GO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO2004.dbc")
GO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO2005.dbc")
#GO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1906.dbc")
#GO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1907.dbc")
#GO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1908.dbc")
#GO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1909.dbc")
#GO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1910.dbc")
#GO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1911.dbc")
#GO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1912.dbc")

GO_APAL_med <- do.call("rbind", list(GO_APAC_med_01, GO_APAC_med_02, GO_APAC_med_03, GO_APAC_med_04, GO_APAC_med_05))

GO_APAL_med$UF <- "Goiás"

GO_APAC_med_01$UF <- "Goiás"
GO_APAC_med_02$UF <- "Goiás"
GO_APAC_med_03$UF <- "Goiás"
GO_APAC_med_04$UF <- "Goiás"
GO_APAC_med_05$UF <- "Goiás"

## MA - 2020 - Mikael

MA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA2001.dbc")
MA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA2002.dbc")
MA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA2003.dbc")
MA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA2004.dbc")
MA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA2005.dbc")
#MA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1906.dbc")
#MA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1907.dbc")
#MA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1908.dbc")
#MA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1909.dbc")
#MA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1910.dbc")
#MA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1911.dbc")
#MA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1912.dbc")

MA_APAL_med <- do.call("rbind", list(MA_APAC_med_01, MA_APAC_med_02, MA_APAC_med_03, MA_APAC_med_04, MA_APAC_med_05))

MA_APAL_med$UF <- "Maranhão"

MA_APAC_med_01$UF <- "Maranhão"
MA_APAC_med_02$UF <- "Maranhão"
MA_APAC_med_03$UF <- "Maranhão"
MA_APAC_med_04$UF <- "Maranhão"
MA_APAC_med_05$UF <- "Maranhão"

## MG - 2020 - Mikael

MG_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG2001.dbc")
MG_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG2002.dbc")
MG_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG2003.dbc")
MG_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG2004.dbc")
MG_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG2005.dbc")
#MG_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1906.dbc")
#MG_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1907.dbc")
#MG_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1908.dbc")
#MG_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1909.dbc")
#MG_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1910.dbc")
#MG_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1911.dbc")
#MG_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1912.dbc")

MG_APAL_med <- do.call("rbind", list(MG_APAC_med_01, MG_APAC_med_02, MG_APAC_med_03, MG_APAC_med_04, MG_APAC_med_05))

MG_APAL_med$UF <- "Minas Gerais" 

MG_APAC_med_01$UF <- "Minas Gerais" 
MG_APAC_med_02$UF <- "Minas Gerais" 
MG_APAC_med_03$UF <- "Minas Gerais" 
MG_APAC_med_04$UF <- "Minas Gerais" 
MG_APAC_med_05$UF <- "Minas Gerais" 

## MS - 2020 - Mikael

MS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS2001.dbc")
MS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS2002.dbc")
MS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS2003.dbc")
MS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS2004.dbc")
MS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS2005.dbc")
#MS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1906.dbc")
#MS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1907.dbc")
#MS_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1908.dbc")
#MS_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1909.dbc")
#MS_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1910.dbc")
#MS_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1911.dbc")
#MS_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1912.dbc")

MS_APAL_med <- do.call("rbind", list(MS_APAC_med_01, MS_APAC_med_02, MS_APAC_med_03, MS_APAC_med_04, MS_APAC_med_05))

MS_APAL_med$UF <- "Mato Grosso do Sul"

MS_APAC_med_01$UF <- "Mato Grosso do Sul"
MS_APAC_med_02$UF <- "Mato Grosso do Sul"
MS_APAC_med_03$UF <- "Mato Grosso do Sul"
MS_APAC_med_04$UF <- "Mato Grosso do Sul"
MS_APAC_med_05$UF <- "Mato Grosso do Sul"

## MT - 2020 - Mikael

MT_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT2001.dbc")
MT_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT2002.dbc")
MT_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT2003.dbc")
MT_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT2004.dbc")
MT_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT2005.dbc")
#MT_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1906.dbc")
#MT_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1907.dbc")
#MT_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1908.dbc")
#MT_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1909.dbc")
#MT_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1910.dbc")
#MT_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1911.dbc")
#MT_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1912.dbc")

MT_APAL_med <- do.call("rbind", list(MT_APAC_med_01, MT_APAC_med_02, MT_APAC_med_03, MT_APAC_med_04, MT_APAC_med_05))

MT_APAL_med$UF <- "Mato Grosso"

MT_APAC_med_01$UF <- "Mato Grosso"
MT_APAC_med_02$UF <- "Mato Grosso"
MT_APAC_med_03$UF <- "Mato Grosso"
MT_APAC_med_04$UF <- "Mato Grosso"
MT_APAC_med_05$UF <- "Mato Grosso"

## PA - 2020 - mikael 

PA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA2001.dbc")
PA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA2002.dbc")
PA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA2003.dbc")
PA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA2004.dbc")
PA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA2005.dbc")
#PA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1907.dbc")
#PA_APAC_med_08 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1908.dbc")
#PA_APAC_med_09 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1909.dbc")
#PA_APAC_med_10 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1910.dbc")
#PA_APAC_med_11 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1911.dbc")
#PA_APAC_med_12 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1912.dbc")

PA_APAL_med <- do.call("rbind", list(PA_APAC_med_01, PA_APAC_med_02, PA_APAC_med_03, PA_APAC_med_04, PA_APAC_med_05))

PA_APAL_med$UF <- "Pará"

PA_APAC_med_01$UF <- "Pará"
PA_APAC_med_02$UF <- "Pará"
PA_APAC_med_03$UF <- "Pará"
PA_APAC_med_04$UF <- "Pará"
PA_APAC_med_05$UF <- "Pará"

## PB - 2020 - Mikael

PB_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB2001.dbc")
PB_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB2002.dbc")
PB_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1903.dbc")
PB_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB2004.dbc")
PB_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB2005.dbc")
#PB_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1906.dbc")
#PB_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1907.dbc")
#PB_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1908.dbc")
#PB_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1909.dbc")
#PB_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1910.dbc")
#PB_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1911.dbc")
#PB_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1912.dbc")

PB_APAL_med <- do.call("rbind", list(PB_APAC_med_01, PB_APAC_med_02, PB_APAC_med_03, PB_APAC_med_04, PB_APAC_med_05))

PB_APAL_med$UF <- "Paraíba"

PB_APAC_med_01$UF <- "Paraíba"
PB_APAC_med_02$UF <- "Paraíba"
PB_APAC_med_03$UF <- "Paraíba"
PB_APAC_med_04$UF <- "Paraíba"
PB_APAC_med_05$UF <- "Paraíba"

## PE - 2020 - Mikael

PE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE2001.dbc")
PE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE2002.dbc")
PE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE2003.dbc")
PE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE2004.dbc")
PE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE2005.dbc")
#PE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1906.dbc")
#PE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1907.dbc")
#PE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1908.dbc")
#PE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1909.dbc")
#PE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1910.dbc")
#PE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1911.dbc")
#PE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1912.dbc")

PE_APAL_med <- do.call("rbind", list(PE_APAC_med_01, PE_APAC_med_02, PE_APAC_med_03, PE_APAC_med_04, PE_APAC_med_05))

PE_APAL_med$UF <- "Pernambuco"

PE_APAC_med_01$UF <- "Pernambuco"
PE_APAC_med_02$UF <- "Pernambuco"
PE_APAC_med_03$UF <- "Pernambuco"
PE_APAC_med_04$UF <- "Pernambuco"
PE_APAC_med_05$UF <- "Pernambuco"

## PI - 2020 - Mikael

PI_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI2001.dbc")
PI_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI2002.dbc")
PI_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI2003.dbc")
PI_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI2004.dbc")
PI_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI2005.dbc")
#PI_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1906.dbc")
#PI_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1907.dbc")
#PI_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1908.dbc")
#PI_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1909.dbc")
#PI_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1910.dbc")
#PI_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1911.dbc")
#PI_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1912.dbc")

PI_APAL_med <- do.call("rbind", list(PI_APAC_med_01, PI_APAC_med_02, PI_APAC_med_03, PI_APAC_med_04, PI_APAC_med_05))

PI_APAL_med$UF <- "Piauí"

PI_APAC_med_01$UF <- "Piauí"
PI_APAC_med_02$UF <- "Piauí"
PI_APAC_med_03$UF <- "Piauí"
PI_APAC_med_04$UF <- "Piauí"
PI_APAC_med_05$UF <- "Piauí"

## PR - 2020 - Mikael

PR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR2001.dbc")
PR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR2002.dbc")
PR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR2003.dbc")
PR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR2004.dbc")
PR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR2005.dbc")
#PR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1906.dbc")
#PR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1907.dbc")
#PR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1908.dbc")
#PR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1909.dbc")
#PR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1910.dbc")
#PR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1911.dbc")
#PR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1912.dbc")

PR_APAL_med <- do.call("rbind", list(PR_APAC_med_01, PR_APAC_med_02, PR_APAC_med_03, PR_APAC_med_04, PR_APAC_med_05 ))

PR_APAL_med$UF <- "Paraná"

PR_APAC_med_01$UF <- "Paraná"
PR_APAC_med_02$UF <- "Paraná"
PR_APAC_med_03$UF <- "Paraná"
PR_APAC_med_04$UF <- "Paraná"
PR_APAC_med_05$UF <- "Paraná"

## RJ - 2020  - Mikael

RJ_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ2001.dbc")
RJ_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ2002.dbc")
RJ_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ2003.dbc")
RJ_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ2004.dbc")
RJ_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ2005.dbc")
#RJ_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1906.dbc")
#RJ_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1907.dbc")
#RJ_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1908.dbc")
#RJ_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1909.dbc")
#RJ_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1910.dbc")
#RJ_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1911.dbc")
#RJ_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1912.dbc")

RJ_APAL_med <- do.call("rbind", list(RJ_APAC_med_01, RJ_APAC_med_02, RJ_APAC_med_03, RJ_APAC_med_04, RJ_APAC_med_05 ))

RJ_APAL_med$UF <- "Rio de Janeiro"

RJ_APAC_med_01$UF <- "Rio de Janeiro"
RJ_APAC_med_02$UF <- "Rio de Janeiro"
RJ_APAC_med_03$UF <- "Rio de Janeiro"
RJ_APAC_med_04$UF <- "Rio de Janeiro"
RJ_APAC_med_05$UF <- "Rio de Janeiro"

## RN - 2020 - Mikael

RN_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN2001.dbc")
RN_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN2002.dbc")
RN_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN2003.dbc")
RN_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN2004.dbc")
RN_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN2005.dbc")
#RN_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1906.dbc")
#RN_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1907.dbc")
#RN_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1908.dbc")
#RN_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1909.dbc")
#RN_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1910.dbc")
#RN_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1911.dbc")
#RN_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1912.dbc")

RN_APAL_med <- do.call("rbind", list(RN_APAC_med_01, RN_APAC_med_02, RN_APAC_med_03, RN_APAC_med_04, RN_APAC_med_05))

RN_APAL_med$UF <- "Rio Grande do Norte"

RN_APAC_med_01$UF <- "Rio Grande do Norte"
RN_APAC_med_02$UF <- "Rio Grande do Norte"
RN_APAC_med_03$UF <- "Rio Grande do Norte"
RN_APAC_med_04$UF <- "Rio Grande do Norte"
RN_APAC_med_05$UF <- "Rio Grande do Norte"

## RO - 2020 - Mikael

RO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO2001.dbc")
RO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO2002.dbc")
RO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO2003.dbc")
RO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO2004.dbc")
#RO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO2005.dbc")
#RO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1906.dbc")
#RO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1907.dbc")
#RO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1908.dbc")
#RO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1909.dbc")
#RO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1910.dbc")
#RO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1911.dbc")
#RO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1912.dbc")

RO_APAL_med <- do.call("rbind", list(RO_APAC_med_01, RO_APAC_med_02, RO_APAC_med_03, RO_APAC_med_04))

RO_APAL_med$UF <- "Rondônia"

RO_APAC_med_01$UF <- "Rondônia"
RO_APAC_med_02$UF <- "Rondônia"
RO_APAC_med_03$UF <- "Rondônia"
RO_APAC_med_04$UF <- "Rondônia"

## RR - 2020 - Mikael

RR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR2001.dbc")
RR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR2002.dbc")
RR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR2003.dbc")
RR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR2004.dbc")
#RR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR2005.dbc")
#RR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1906.dbc")
#RR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1907.dbc")
#RR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1908.dbc")
#RR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1909.dbc")
#RR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1910.dbc")
#RR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1911.dbc")
#RR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1912.dbc")

RR_APAL_med <- do.call("rbind", list(RR_APAC_med_01, RR_APAC_med_02, RR_APAC_med_03, RR_APAC_med_04))

RR_APAL_med$UF <- "Roraima"

RR_APAC_med_01$UF <- "Roraima"
RR_APAC_med_02$UF <- "Roraima"
RR_APAC_med_03$UF <- "Roraima"
RR_APAC_med_04$UF <- "Roraima"

## RS - 2020 - Mikael

RS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS2001.dbc")
RS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS2002.dbc")
RS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS2003.dbc")
RS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS2004.dbc")
RS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS2005.dbc")
#RS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1906.dbc")
#RS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1907.dbc")
#RS_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1908.dbc")
#RS_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1909.dbc")
#RS_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1910.dbc")
#RS_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1911.dbc")
#RS_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1912.dbc")

RS_APAL_med <- do.call("rbind", list(RS_APAC_med_01, RS_APAC_med_02, RS_APAC_med_03, RS_APAC_med_04, RS_APAC_med_05))

RS_APAL_med$UF <- "Rio Grande do Sul"

RS_APAC_med_01$UF <- "Rio Grande do Sul"
RS_APAC_med_02$UF <- "Rio Grande do Sul"
RS_APAC_med_03$UF <- "Rio Grande do Sul"
RS_APAC_med_04$UF <- "Rio Grande do Sul"
RS_APAC_med_05$UF <- "Rio Grande do Sul"

## SC - 2020 - Mikael

SC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC2001.dbc")
SC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC2002.dbc")
SC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC2003.dbc")
SC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC2004.dbc")
SC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC2005.dbc")
#SC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1906.dbc")
#SC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1907.dbc")
#SC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1908.dbc")
#SC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1909.dbc")
#SC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1910.dbc")
#SC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1911.dbc")
#SC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1912.dbc")

SC_APAL_med <- do.call("rbind", list(SC_APAC_med_01, SC_APAC_med_02, SC_APAC_med_03, SC_APAC_med_04, SC_APAC_med_05))

SC_APAL_med$UF <- "Santa Catarina"

SC_APAC_med_01$UF <- "Santa Catarina"
SC_APAC_med_02$UF <- "Santa Catarina"
SC_APAC_med_03$UF <- "Santa Catarina"
SC_APAC_med_04$UF <- "Santa Catarina"
SC_APAC_med_05$UF <- "Santa Catarina"

## SE - 2020 - Mikael

SE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE2001.dbc")
SE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE2002.dbc")
SE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE2003.dbc")
SE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE2004.dbc")
SE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE2005.dbc")
#SE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1906.dbc")
#SE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1908.dbc")
#SE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1909.dbc")
#SE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1910.dbc")
#SE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1911.dbc")
#SE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1912.dbc")

SE_APAL_med <- do.call("rbind", list(SE_APAC_med_01, SE_APAC_med_02, SE_APAC_med_03, SE_APAC_med_04, SE_APAC_med_05))

SE_APAL_med$UF <- "Sergipe"

SE_APAC_med_01$UF <- "Sergipe"
SE_APAC_med_02$UF <- "Sergipe"
SE_APAC_med_03$UF <- "Sergipe"
SE_APAC_med_04$UF <- "Sergipe"
SE_APAC_med_05$UF <- "Sergipe"

## SP - 2020 - Mikael

SP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP2001.dbc")
SP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP2002.dbc")
SP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP2003.dbc")
SP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP2004.dbc")
SP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP2005.dbc")
#SP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1906.dbc")
#SP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1907.dbc")
#SP_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1908.dbc")
#SP_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1909.dbc")
#SP_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1910.dbc")
#SP_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1911.dbc")
#SP_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1912.dbc")

SP_APAL_med <- do.call("rbind", list(SP_APAC_med_01, SP_APAC_med_02, SP_APAC_med_03, SP_APAC_med_04, SP_APAC_med_05))

SP_APAL_med$UF <- "São Paulo"

SP_APAC_med_01$UF <- "São Paulo"
SP_APAC_med_02$UF <- "São Paulo"
SP_APAC_med_03$UF <- "São Paulo"
SP_APAC_med_04$UF <- "São Paulo"
SP_APAC_med_05$UF <- "São Paulo"


## TO - 2019 - Mikael

TO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO2001.dbc")
TO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO2002.dbc")
TO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO2003.dbc")
TO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO2004.dbc")
TO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO2005.dbc")
#TO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1906.dbc")
#TO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1907.dbc")
#TO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1908.dbc")
#TO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1909.dbc")
#TO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1910.dbc")
#TO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1911.dbc")
#TO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1912.dbc")

TO_APAL_med <- do.call("rbind", list(TO_APAC_med_01, TO_APAC_med_02, TO_APAC_med_03, TO_APAC_med_04,TO_APAC_med_05 ))

TO_APAL_med$UF <- "Tocantins"

TO_APAC_med_01$UF <- "Tocantins"
TO_APAC_med_02$UF <- "Tocantins"
TO_APAC_med_03$UF <- "Tocantins"
TO_APAC_med_04$UF <- "Tocantins"
TO_APAC_med_05$UF <- "Tocantins"


########## União de tabelas e tratamentos de hep B e C ##################

BR_med_2020 <- do.call("rbind", list(AC_APAC_med, AP_APAL_med, AM_APAL_med, AL_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PE_APAL_med, PI_APAL_med, PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med, SP_APAL_med, TO_APAL_med))

######## Hepatite B #########

### Jan 2020 - hep B
BR_med_hepb_jan_2020 <- do.call("rbind", list( AC_APAC_med_01, AL_APAC_med_01, AM_APAC_med_01, AP_APAC_med_01, BA_APAC_med_01, CE_APAC_med_01, DF_APAC_med_01, ES_APAC_med_01, GO_APAC_med_01, MA_APAC_med_01, MG_APAC_med_01, MS_APAC_med_01, MT_APAC_med_01, PA_APAC_med_01, PE_APAC_med_01, PI_APAC_med_01, PR_APAC_med_01, RJ_APAC_med_01, RN_APAC_med_01, RO_APAC_med_01, RS_APAC_med_01, SC_APAC_med_01, SE_APAC_med_01, SP_APAC_med_01, TO_APAC_med_01 ))
BR_med_hepb_jan_2020 <- filter(BR_med_hepb_jan_2020, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )
BR_med_hepb_jan_2020_un <- distinct(BR_med_hepb_jan_2020, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepb_jan_2020_un$mes <- "Janeiro"
BR_med_hepb_jan_2020_un$mes2 <- 1

med_jan_2020_hepb <- select(BR_med_hepb_jan_2020_un, UF, AP_PRIPAL, mes, mes2)

med_jan_2020_hepb$AP_PRIPAL <- as.character(med_jan_2020_hepb$AP_PRIPAL)


### Substituições medicamneto

med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604460058"] <- "Tenofovir"
med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604300018"] <- "Imunoglobulina"
med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604300034"] <- "Imunoglobulina"
med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604390041"] <- "Alfapeginterferona 2A"
med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604460023"] <- "Entecavir"
med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604460031"] <- "Lamivudina"
med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604460040"] <- "Lamivudina"
med_jan_2020_hepb$AP_PRIPAL[med_jan_2020_hepb$AP_PRIPAL == "0604460066"] <- "Entecavir"


### Fev 2020 - hep B
BR_med_hepb_fev_2020 <- do.call("rbind", list( AC_APAC_med_02, AL_APAC_med_02, AM_APAC_med_02, AP_APAC_med_02, BA_APAC_med_02, CE_APAC_med_02, DF_APAC_med_02, ES_APAC_med_02, GO_APAC_med_02, MA_APAC_med_02, MG_APAC_med_02, MS_APAC_med_02, MT_APAC_med_02, PA_APAC_med_02, PE_APAC_med_02, PI_APAC_med_02, PR_APAC_med_02, RJ_APAC_med_02, RN_APAC_med_02, RO_APAC_med_02, RS_APAC_med_02, SC_APAC_med_02, SE_APAC_med_02, SP_APAC_med_02, TO_APAC_med_02))
BR_med_hepb_fev_2020 <- filter(BR_med_hepb_fev_2020, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )
BR_med_hepb_fev_2020_un <- distinct(BR_med_hepb_fev_2020, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepb_fev_2020_un$mes <- "Fevereiro"
BR_med_hepb_fev_2020_un$mes2 <- 2

med_fev_2020_hepb <- select(BR_med_hepb_fev_2020_un, UF, AP_PRIPAL, mes, mes2)

med_fev_2020_hepb$AP_PRIPAL <- as.character(BR_med_hepb_fev_2020_un$AP_PRIPAL)

#### Consolidado meses = tratamentos hepb

med_hepb_2020_jan_fev <- do.call("rbind", list(med_jan_2020_hepb, med_fev_2020_hepb))

write.csv(med_hepb_2020, "C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/med_hepb_2020_jan_fev.csv")

### Substituições medicamneto

med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604460058"] <- "Tenofovir"
med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604300018"] <- "Imunoglobulina"
med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604300034"] <- "Imunoglobulina"
med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604390041"] <- "Alfapeginterferona 2A"
med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604460023"] <- "Entecavir"
med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604460031"] <- "Lamivudina"
med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604460040"] <- "Lamivudina"
med_fev_2020_hepb$AP_PRIPAL[med_fev_2020_hepb$AP_PRIPAL == "0604460066"] <- "Entecavir"

### Mar 2020 - hep B
BR_med_hepb_mar_2020 <- do.call("rbind", list( AC_APAC_med_03, AL_APAC_med_03, AM_APAC_med_03, AP_APAC_med_03, BA_APAC_med_03, CE_APAC_med_03, DF_APAC_med_03, ES_APAC_med_03, GO_APAC_med_03, MA_APAC_med_03, MG_APAC_med_03, MS_APAC_med_03, MT_APAC_med_03, PA_APAC_med_03, PE_APAC_med_03, PI_APAC_med_03, PR_APAC_med_03, RJ_APAC_med_03, RN_APAC_med_03, RO_APAC_med_03, RS_APAC_med_03, SC_APAC_med_03, SE_APAC_med_03, SP_APAC_med_03, TO_APAC_med_03))
BR_med_hepb_mar_2020 <- filter(BR_med_hepb_mar_2020, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )
BR_med_hepb_mar_2020_un <- distinct(BR_med_hepb_mar_2020, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepb_mar_2020_un$mes <- "Março"
BR_med_hepb_mar_2020_un$mes2 <- 3

med_mar_2020_hepb <- select(BR_med_hepb_mar_2020_un, UF, AP_PRIPAL, mes, mes2)

med_mar_2020_hepb$AP_PRIPAL <- as.character(BR_med_hepb_mar_2020_un$AP_PRIPAL)

#### Consolidado meses = tratamentos hepb

med_hepb_2020_jan_fev_mar <- do.call("rbind", list(med_jan_2020_hepb,med_fev_2020_hepb, med_mar_2020_hepb))

write.csv(med_hepb_2020, "C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/med_hepb_2020_ja_fev_mar.csv")

med_hepb_2020 <- read.csv("C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/med_hepb_2020.csv")

### Abril 2020 - hep B
BR_med_hepb_abri_2020 <- do.call("rbind", list( AC_APAC_med_04,AL_APAC_med_04, AM_APAC_med_04, AP_APAC_med_04, BA_APAC_med_04, CE_APAC_med_04, DF_APAC_med_04, GO_APAC_med_04, MA_APAC_med_04, MG_APAC_med_04, MS_APAC_med_04, MT_APAC_med_04, PA_APAC_med_04, PE_APAC_med_04, PI_APAC_med_04, PR_APAC_med_04, RJ_APAC_med_04, RN_APAC_med_04, RO_APAC_med_04,RR_APAC_med_04, RS_APAC_med_04, SC_APAC_med_04, SE_APAC_med_04, SP_APAC_med_04, TO_APAC_med_04))
BR_med_hepb_abri_2020 <- filter(BR_med_hepb_abri_2020, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )
BR_med_hepb_abri_2020_un <- distinct(BR_med_hepb_abri_2020, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepb_abri_2020_un$mes <- "Abril"
BR_med_hepb_abri_2020_un$mes2 <- 4

med_abri_2020_hepb <- select(BR_med_hepb_abri_2020_un, UF, AP_PRIPAL, mes, mes2)

med_abri_2020_hepb$AP_PRIPAL <- as.character(BR_med_hepb_abri_2020_un$AP_PRIPAL)

### Maio 2020 - hep B
BR_med_hepb_maio_2020 <- do.call("rbind", list( AC_APAC_med_05,AL_APAC_med_05, AM_APAC_med_05, BA_APAC_med_05, CE_APAC_med_05, DF_APAC_med_05, GO_APAC_med_05, MA_APAC_med_05, MG_APAC_med_05, MS_APAC_med_05, MT_APAC_med_05, PA_APAC_med_05, PE_APAC_med_05, PI_APAC_med_05, PR_APAC_med_05, RJ_APAC_med_05, RN_APAC_med_05, RS_APAC_med_05, SC_APAC_med_05, SE_APAC_med_05, SP_APAC_med_05, TO_APAC_med_05))
BR_med_hepb_maio_2020 <- filter(BR_med_hepb_maio_2020, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )
BR_med_hepb_maio_2020_un <- distinct(BR_med_hepb_maio_2020, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepb_maio_2020_un$mes <- "Maio"
BR_med_hepb_maio_2020_un$mes2 <- 5

med_maio_2020_hepb <- select(BR_med_hepb_maio_2020_un, UF, AP_PRIPAL, mes, mes2)

med_maio_2020_hepb$AP_PRIPAL <- as.character(BR_med_hepb_maio_2020_un$AP_PRIPAL)


#### Consolidado meses = tratamentos hepb

med_hepb_2020_jan_fev_mar_abri_maio <- do.call("rbind", list(med_jan_2020_hepb,med_fev_2020_hepb, med_mar_2020_hepb, med_abri_2020_hepb,med_maio_2020_hepb))

med_hepb_2020_jan_fev_mar_abri_maio$UF <- as.character(med_hepb_2020_jan_fev_mar_abri_maio$UF)
med_hepb_2020_jan_fev_mar_abri_maio$mes <- as.character(med_hepb_2020_jan_fev_mar_abri_maio$mes)

write.csv(med_hepb_2020_jan_fev_mar_abri_maio, "C:/Users/lemos/Downloads/med_hepb_2020_ja_fev_mar_abri.csv")

med_hepb_2020_jan_fev_mar_abri <- read.csv("C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/med_hepb_2020_jan_fev_mar_abri.csv")

### Substituições medicamneto

med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604460058"] <- "Tenofovir"
med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604300018"] <- "Imunoglobulina"
med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604300034"] <- "Imunoglobulina"
med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604390041"] <- "Alfapeginterferona 2A"
med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604460023"] <- "Entecavir"
med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604460031"] <- "Lamivudina"
med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604460040"] <- "Lamivudina"
med_abri_2020_hepb$AP_PRIPAL[med_abri_2020_hepb$AP_PRIPAL == "0604460066"] <- "Entecavir"

### Substituições medicamneto

med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604460058"] <- "Tenofovir"
med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604300018"] <- "Imunoglobulina"
med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604300034"] <- "Imunoglobulina"
med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604390041"] <- "Alfapeginterferona 2A"
med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604460023"] <- "Entecavir"
med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604460031"] <- "Lamivudina"
med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604460040"] <- "Lamivudina"
med_maio_2020_hepb$AP_PRIPAL[med_maio_2020_hepb$AP_PRIPAL == "0604460066"] <- "Entecavir"


#####################


BR_med_2020_CID_hepb <- filter(BR_med_2020, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

BR_med_2020_CID_hepb_un <- distinct(BR_med_2020_CID_hepb, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2020_CID_hepb, "C:/Users/lemos/Downloads/BR_med_2020_CID_hepb")

write.csv(BR_med_2020_CID_hepb_un, "C:/Users/lemos/Downloads/BR_med_2020_CID_hepb_un")

med_uf_2020_hepb <- table(BR_med_2020_CID_hepb_un$UF)

med_uf_2020_hepb <- as.data.frame(med_uf_2020_hepb)

med_uf_2020_hepb$Var1 <- as.character(med_uf_2020_hepb$Var1)

med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "RO"] <- "Rondônia"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "AC"] <- "Acre"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "AM"] <- "Amazonas"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "RR"] <- "Roraima"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "PA"] <- "Pará"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "AP"] <- "Amapá"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "TO"] <- "Tocantins"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "MA"] <- "Maranhão"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "PI"] <- "Piauí"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "CE"] <- "Ceará"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "RN"] <- "Rio Grande do Norte"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "PB"] <- "Paraíba"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "PE"] <- "Pernambuco"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "AL"] <- "Alagoas"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "SE"] <- "Sergipe"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "BA"] <- "Bahia"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "MG"] <- "Minas Gerais"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "ES"] <- "Espírito Santo"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "RJ"] <- "Rio de Janeiro"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "SP"] <- "São Paulo"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "PR"] <- "Paraná"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "SC"] <- "Santa Catarina"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "RS"] <- "Rio Grande do Sul"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "MS"] <- "Mato Grosso do Sul"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "MT"] <- "Mato Grosso"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "GO"] <- "Goiás"
med_uf_2020_hepb$Var1[med_uf_2020_hepb$Var1 == "DF"] <- "Distrito Federal"

write.csv(med_uf_2020_hepb, "C:/Users/lemos/Downloads/tabwin_APAC/med_uf_2020_hepb.csv")

### Tabela painel - tratamentos 2020 hep B - Groupby - AP_MVM, AP_PRIPAL, UF ##########

### Jan
hepb_2020_groupby_jan <- med_jan_2020_hepb %>% group_by(UF, AP_PRIPAL, mes, mes2)
hepb_2020_groupby_jan_n <- hepb_2020_groupby_jan %>% summarise(n = n())

### Fev
hepb_2020_groupby_fev <- med_fev_2020_hepb %>% group_by(UF, AP_PRIPAL, mes, mes2)
hepb_2020_groupby_fev_n <- hepb_2020_groupby_fev %>% summarise(n = n())

### Mar
hepb_2020_groupby_mar <- med_mar_2020_hepb %>% group_by(UF, AP_PRIPAL, mes, mes2)
hepb_2020_groupby_mar_n <- hepb_2020_groupby_mar %>% summarise(n = n())

### Abri
hepb_2020_groupby_abri <- med_abri_2020_hepb %>% group_by(UF, AP_PRIPAL, mes, mes2)
hepb_2020_groupby_abri_n <- hepb_2020_groupby_abri %>% summarise(n = n())

### Maio
hepb_2020_groupby_maio <- med_maio_2020_hepb %>% group_by(UF, AP_PRIPAL, mes, mes2)
hepb_2020_groupby_maio_n <- hepb_2020_groupby_maio %>% summarise(n = n())

hepb_2020_groupby_jan_n$UF <- as.character(hepb_2020_groupby_jan_n$UF)
hepb_2020_groupby_jan_n$AP_PRIPAL <- as.character(hepb_2020_groupby_jan_n$AP_PRIPAL)

hepb_2020_groupby_fev_n$UF <- as.character(hepb_2020_groupby_fev_n$UF)
hepb_2020_groupby_fev_n$AP_PRIPAL <- as.character(hepb_2020_groupby_fev_n$AP_PRIPAL)

hepb_2020_groupby_mar_n$UF <- as.character(hepb_2020_groupby_mar_n$UF)
hepb_2020_groupby_mar_n$AP_PRIPAL <- as.character(hepb_2020_groupby_mar_n$AP_PRIPAL)

hepb_2020_groupby_abri_n$UF <- as.character(hepb_2020_groupby_abri_n$UF)
hepb_2020_groupby_abri_n$AP_PRIPAL <- as.character(hepb_2020_groupby_abri_n$AP_PRIPAL)

hepb_2020_groupby_maio_n$UF <- as.character(hepb_2020_groupby_maio_n$UF)
hepb_2020_groupby_maio_n$AP_PRIPAL <- as.character(hepb_2020_groupby_maio_n$AP_PRIPAL)

### Substituições UF

hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "RO"] <- "Rondônia"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "AC"] <- "Acre"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "AM"] <- "Amazonas"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "RR"] <- "Roraima"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "PA"] <- "Pará"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "AP"] <- "Amapá"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "TO"] <- "Tocantins"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "MA"] <- "Maranhão"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "PI"] <- "Piauí"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "CE"] <- "Ceará"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "RN"] <- "Rio Grande do Norte"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "PB"] <- "Paraíba"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "PE"] <- "Pernambuco"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "AL"] <- "Alagoas"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "SE"] <- "Sergipe"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "BA"] <- "Bahia"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "MG"] <- "Minas Gerais"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "ES"] <- "Espírito Santo"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "RJ"] <- "Rio de Janeiro"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "SP"] <- "São Paulo"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "PR"] <- "Paraná"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "SC"] <- "Santa Catarina"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "RS"] <- "Rio Grande do Sul"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "MS"] <- "Mato Grosso do Sul"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "MT"] <- "Mato Grosso"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "GO"] <- "Goiás"
hepb_2020_groupby_n$UF[hepb_2020_groupby_n$UF == "DF"] <- "Distrito Federal"


### Substituições mês

hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202001"] <- "Janeiro"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202002"] <- "Fevereiro"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202003"] <- "Março"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202004"] <- "Abril"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202005"] <- "Maio"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202006"] <- "Junho"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202007"] <- "Julho"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202008"] <- "Agosto"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202009"] <- "Setembro"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202010"] <- "Outubro"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202011"] <- "Novembro"
hepb_2020_groupby_n$AP_MVM[hepb_2020_groupby_n$AP_MVM == "202012"] <- "Dezembro"

### Substituições medicamneto

hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604460058"] <- "Tenofovir"
hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604300018"] <- "Imunoglobulina"
hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604300034"] <- "Imunoglobulina"
hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604390041"] <- "Alfapeginterferona 2A"
hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604460023"] <- "Entecavir"
hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604460031"] <- "Lamivudina"
hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604460040"] <- "Lamivudina"
hepb_2020_groupby_n$AP_PRIPAL[hepb_2020_groupby_n$AP_PRIPAL == "0604460066"] <- "Entecavir"

#### Criar coluna para ordenar mês

hepb_2020_groupby_n$AP_MVM2 = hepb_2020_groupby_n$AP_MVM

hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Janeiro"] <- 1
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Fevereiro"] <- 2
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Março"] <- 3
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Abril"] <- 4
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Maio"] <- 5
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Junho"] <- 6
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Julho"] <- 7
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Agosto"] <- 8
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Setembro"] <- 9
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Outubro"] <- 10
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Novembro"] <- 11
hepb_2020_groupby_n$AP_MVM2[hepb_2020_groupby_n$AP_MVM2 == "Dezembro"] <- 12

write.csv(hepb_2020_groupby_n, "C:/Users/lemos/Downloads/tabwin_APAC/hepb_2020_groupby_n.csv")

write.csv(hepb_2020_groupby_jan_n, "C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/hepb_2020_groupby_jan_n.csv")

write.csv(hepb_2020_groupby_fev_n, "C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/hepb_2020_groupby_fev_n.csv")

write.csv(hepb_2020_groupby_mar_n, "C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/hepb_2020_groupby_mar_n.csv")


med_trat_2020_hepb <-  do.call("rbind", list(hepb_2020_groupby_jan_n, hepb_2020_groupby_fev_n, hepb_2020_groupby_mar_n, hepb_2020_groupby_abri_n, hepb_2020_groupby_maio_n))


### Substituições medicamneto

med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604460058"] <- "Tenofovir"
med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604300018"] <- "Imunoglobulina"
med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604300034"] <- "Imunoglobulina"
med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604390041"] <- "Alfapeginterferona 2A"
med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604460023"] <- "Entecavir"
med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604460031"] <- "Lamivudina"
med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604460040"] <- "Lamivudina"
med_trat_2020_hepb$AP_PRIPAL[med_trat_2020_hepb$AP_PRIPAL == "0604460066"] <- "Entecavir"



write.csv(med_trat_2020_hepb, "C:/Users/lemos/Downloads/med_trat_2020_hepb.csv")

####### Hepatite C ###########

BR_med_2019_1 <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_01_CID_hepc.csv")

BR_med_2019_2 <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_02_CID_hepc.csv")

BR_med_2019_3 <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_03_CID_hepc.csv")

BR_med_2019_1 <- as.data.frame(BR_med_2019_1)
BR_med_2019_2 <- as.data.frame(BR_med_2019_2)
BR_med_2019_3 <- as.data.frame(BR_med_2019_3)

BR_med_2019_CID_hepc <- do.call("rbind", list (BR_med_2019_1, BR_med_2019_2,BR_med_2019_3 ))

BR_apac_trat_2015_2018 <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_apac_trat_2015_2018.csv")

BR_apac_trat_2015_2018 <- select(BR_apac_trat_2015_2018, -X.1, -X, -tratamentoCID)

BR_med_2019_CID_hepc$ano <- "2019"

BR_med_2019_CID_hepc <- select(BR_med_2019_CID_hepc, -X)

BR_apac_trat_2015_2019 <- do.call("rbind", list (BR_apac_trat_2015_2018,BR_med_2019_CID_hepc  ))

write.csv(BR_apac_trat_2015_2019, "C:/Users/lemos/Downloads/tabwin_APAC/BR_apac_trat_2015_2019_hepc.csv")

### Jan 2020 - hep C
BR_med_hepc_jan_2020 <- do.call("rbind", list( AC_APAC_med_01, AL_APAC_med_01, AM_APAC_med_01, AP_APAC_med_01, BA_APAC_med_01, CE_APAC_med_01, DF_APAC_med_01, ES_APAC_med_01, GO_APAC_med_01, MA_APAC_med_01, MG_APAC_med_01, MS_APAC_med_01, MT_APAC_med_01, PA_APAC_med_01,PB_APAC_med_01, PE_APAC_med_01, PI_APAC_med_01, PR_APAC_med_01, RJ_APAC_med_01, RN_APAC_med_01, RO_APAC_med_01, RS_APAC_med_01, SC_APAC_med_01, SE_APAC_med_01, SP_APAC_med_01, TO_APAC_med_01 ))
BR_med_hepc_jan_2020 <- filter(BR_med_hepc_jan_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_hepc_jan_2020$ano <- "2020"

BR_med_hepc_jan_2020$AP_CNSPCN <- as.character(BR_med_hepc_jan_2020$AP_CNSPCN)

BR_med_hepc_jan_2020_antijoin <- anti_join(BR_med_hepc_jan_2020, BR_apac_trat_2015_2019,  by="AP_CNSPCN")

BR_med_hepc_jan_2020_antijoin_un <- distinct(BR_med_hepc_jan_2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepc_jan_2020_antijoin_un$mes <- "Janeiro"
BR_med_hepc_jan_2020_antijoin_un$mes2 <- 1

### Fev 2020 - hep C
BR_med_hepc_fev_2020 <- do.call("rbind", list( AC_APAC_med_02, AL_APAC_med_02, AM_APAC_med_02, AP_APAC_med_02, BA_APAC_med_02, CE_APAC_med_02, DF_APAC_med_02, ES_APAC_med_02, GO_APAC_med_02, MA_APAC_med_02, MG_APAC_med_02, MS_APAC_med_02, MT_APAC_med_02, PA_APAC_med_02, PE_APAC_med_02, PI_APAC_med_02, PR_APAC_med_02, RJ_APAC_med_02, RN_APAC_med_02, RO_APAC_med_02, RS_APAC_med_02, SC_APAC_med_02, SE_APAC_med_02, SP_APAC_med_02, TO_APAC_med_02))
BR_med_hepc_fev_2020 <- filter(BR_med_hepc_fev_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_hepc_fev_2020$ano <- "2020"

BR_med_hepc_fev_2020$AP_CNSPCN <- as.character(BR_med_hepc_fev_2020$AP_CNSPCN)

BR_med_2015_2019_CID_hepc_jan2020 <- do.call("rbind", list(BR_apac_trat_2015_2019, BR_med_hepc_jan_2020 ))

BR_med_hepc_fev_2020_antijoin <- anti_join(BR_med_hepc_fev_2020, BR_med_2015_2019_CID_hepc_jan2020,  by="AP_CNSPCN")

BR_med_hepc_fev_2020_antijoin_un <- distinct(BR_med_hepc_fev_2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepc_fev_2020_antijoin_un$mes <- "Fevereiro"
BR_med_hepc_fev_2020_antijoin_un$mes2 <- 2


### Mar 2020 - hep C
BR_med_hepc_mar_2020 <- do.call("rbind", list( AC_APAC_med_03, AL_APAC_med_03, AM_APAC_med_03, AP_APAC_med_03, BA_APAC_med_03, CE_APAC_med_03, DF_APAC_med_03, ES_APAC_med_03, GO_APAC_med_03, MA_APAC_med_03, MG_APAC_med_03, MS_APAC_med_03, MT_APAC_med_03, PA_APAC_med_03, PE_APAC_med_03, PI_APAC_med_03, PR_APAC_med_03, RJ_APAC_med_03, RN_APAC_med_03, RO_APAC_med_03, RS_APAC_med_03, SC_APAC_med_03, SE_APAC_med_03, SP_APAC_med_03, TO_APAC_med_03))
BR_med_hepc_mar_2020 <- filter(BR_med_hepc_mar_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_hepc_mar_2020$ano <- "2020"

BR_med_hepc_mar_2020$AP_CNSPCN <- as.character(BR_med_hepc_mar_2020$AP_CNSPCN)

BR_med_2015_2019_CID_hepc_jan2020_fev2020 <- do.call("rbind", list(BR_apac_trat_2015_2019, BR_med_hepc_jan_2020, BR_med_hepc_fev_2020 ))

BR_med_hepc_mar_2020_antijoin <- anti_join(BR_med_hepc_mar_2020, BR_med_2015_2019_CID_hepc_jan2020_fev2020,  by="AP_CNSPCN")

BR_med_hepc_mar_2020_antijoin_un <- distinct(BR_med_hepc_mar_2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepc_mar_2020_antijoin_un$mes <- "Março"
BR_med_hepc_mar_2020_antijoin_un$mes2 <- 3

### Abri 2020 - hep C
BR_med_hepc_abri_2020 <- do.call("rbind", list( AC_APAC_med_04,AL_APAC_med_04, AM_APAC_med_04, AP_APAC_med_04, BA_APAC_med_04, CE_APAC_med_04, DF_APAC_med_04, GO_APAC_med_04,ES_APAC_med_04, MA_APAC_med_04, MG_APAC_med_04, MS_APAC_med_04, MT_APAC_med_04, PA_APAC_med_04, PE_APAC_med_04, PI_APAC_med_04, PR_APAC_med_04, RJ_APAC_med_04, RN_APAC_med_04, RO_APAC_med_04,RR_APAC_med_04, RS_APAC_med_04, SC_APAC_med_04, SE_APAC_med_04, SP_APAC_med_04, TO_APAC_med_04))
BR_med_hepc_abri_2020 <- filter(BR_med_hepc_abri_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_hepc_abri_2020$ano <- "2020"

BR_med_hepc_abri_2020$AP_CNSPCN <- as.character(BR_med_hepc_abri_2020$AP_CNSPCN)

BR_med_2015_2019_CID_hepc_jan2020_fev2020_mar2020 <- do.call("rbind", list(BR_apac_trat_2015_2019, BR_med_hepc_jan_2020, BR_med_hepc_fev_2020,BR_med_hepc_mar_2020  ))

BR_med_hepc_abri_2020_antijoin <- anti_join(BR_med_hepc_abri_2020, BR_med_2015_2019_CID_hepc_jan2020_fev2020,  by="AP_CNSPCN")

BR_med_hepc_abri_2020_antijoin_un <- distinct(BR_med_hepc_abri_2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepc_abri_2020_antijoin_un$mes <- "Abril"
BR_med_hepc_abri_2020_antijoin_un$mes2 <- 4


### Maio 2020 - hep C
BR_med_hepc_maio_2020 <- do.call("rbind", list( AC_APAC_med_05, AL_APAC_med_05, AM_APAC_med_05, BA_APAC_med_05, CE_APAC_med_05, DF_APAC_med_05,ES_APAC_med_05, GO_APAC_med_05, MA_APAC_med_05, MG_APAC_med_05, MS_APAC_med_05, MT_APAC_med_05, PA_APAC_med_05, PE_APAC_med_05, PI_APAC_med_05, PR_APAC_med_05, RJ_APAC_med_05, RN_APAC_med_05, RS_APAC_med_05, SC_APAC_med_05, SE_APAC_med_05, SP_APAC_med_05, TO_APAC_med_05))
BR_med_hepc_maio_2020 <- filter(BR_med_hepc_maio_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_hepc_maio_2020$ano <- "2020"

BR_med_hepc_maio_2020$AP_CNSPCN <- as.character(BR_med_hepc_maio_2020$AP_CNSPCN)

BR_med_2015_2019_CID_hepc_jan2020_fev2020_mar2020_abri2020 <- do.call("rbind", list(BR_apac_trat_2015_2019, BR_med_hepc_jan_2020, BR_med_hepc_fev_2020,BR_med_hepc_mar_2020, BR_med_hepc_abri_2020  ))

BR_med_hepc_maio_2020_antijoin <- anti_join(BR_med_hepc_maio_2020, BR_med_2015_2019_CID_hepc_jan2020_fev2020_mar2020_abri2020,  by="AP_CNSPCN")

BR_med_hepc_maio_2020_antijoin_un <- distinct(BR_med_hepc_maio_2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

BR_med_hepc_maio_2020_antijoin_un$mes <- "Maio"
BR_med_hepc_maio_2020_antijoin_un$mes2 <- 5

##### Jan + Fev + Mar + abri + maio hep C

BR_med_hepc_jan_fev_mar_abri_2020_maio2020 <- do.call("rbind", list(BR_med_hepc_jan_2020, BR_med_hepc_fev_2020, BR_med_hepc_mar_2020, BR_med_hepc_abri_2020, BR_med_hepc_maio_2020 ))

BR_med_hepc_jan_fev_mar_abri_2020_maio2020_antijoin <- anti_join(BR_med_hepc_jan_fev_mar_abri_2020_maio2020, BR_apac_trat_2015_2019,  by="AP_CNSPCN")

BR_med_hepc_jan_fev_mar_abri_2020_maio2020_antijoin_un <- distinct(BR_med_hepc_jan_fev_mar_abri_2020_maio2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

med_uf_2020_hepc <- table(BR_med_hepc_jan_fev_mar_abri_2020_maio2020_antijoin_un$UF)

med_uf_2020_hepc <- as.data.frame(med_uf_2020_hepc)

write.csv(med_uf_2020_hepc, "C:/Users/lemos/Downloads/tabwin_APAC/med_uf_2020_hepc.csv")

#####################################

BR_med_2020_CID_hepc <- filter(BR_med_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_2020_CID_hepc_un <- distinct(BR_med_2020_CID_hepc, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2020_CID_hepc, "C:/Users/lemos/Downloads/BR_med_2020_CID_hepc")

write.csv(BR_med_2020_CID_hepc_un, "C:/Users/lemos/Downloads/BR_med_2020_CID_hepc_un")


########## Hepatite C #########

#### Tratamentos 2015 - 2019 #####

BR_med_2015_2018_CID_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_apac_trat_2015_2018.csv")

BR_med_01_CID_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_01_CID_hepc.csv")

BR_med_02_CID_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_02_CID_hepc.csv")

BR_med_03_CID_hepc <- read.csv("C:/Users/lemos/Downloads/tabwin_APAC/BR_med_03_CID_hepc.csv")

BR_med_2019_CID_hepc <- do.call("rbind", list(BR_med_01_CID_hepc, BR_med_02_CID_hepc, BR_med_03_CID_hepc ))

BR_med_2015_2018_CID_hepc <- select(BR_med_2015_2018_CID_hepc, -X.1, -X, -ano, -tratamentoCID)

BR_med_2019_CID_hepc <- select(BR_med_2019_CID_hepc, -X)

BR_med_2015_2019_CID_hepc <- do.call("rbind", list(BR_med_2015_2018_CID_hepc, BR_med_2019_CID_hepc))

BR_med_2020_CID_hepc$AP_CNSPCN <- as.character(BR_med_2020_CID_hepc$AP_CNSPCN)

BR_med_2020_antijoin <- anti_join(BR_med_2020_CID_hepc, BR_med_2015_2019_CID_hepc,  by="AP_CNSPCN")

BR_med_2020_innerjoin <- inner_join(BR_med_2020_CID_hepc, BR_med_2015_2019_CID_hepc,  by="AP_CNSPCN")

BR_med_2020_innerjoin_un <- distinct(BR_med_2020_innerjoin, AP_CNSPCN , .keep_all = TRUE)

BR_med_2020_antijoin_un <- distinct(BR_med_2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

med_uf_2020_hepc <- table(BR_med_2020_antijoin_un$UF)

med_uf_2020_hepc <- as.data.frame(med_uf_2020_hepc)

med_uf_2020_hepc$Var1 <- as.character(med_uf_2020_hepc$Var1)

med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "RO"] <- "Rondônia"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "AC"] <- "Acre"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "AM"] <- "Amazonas"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "RR"] <- "Roraima"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "PA"] <- "Pará"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "AP"] <- "Amapá"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "TO"] <- "Tocantins"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "MA"] <- "Maranhão"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "PI"] <- "Piauí"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "CE"] <- "Ceará"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "RN"] <- "Rio Grande do Norte"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "PB"] <- "Paraíba"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "PE"] <- "Pernambuco"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "AL"] <- "Alagoas"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "SE"] <- "Sergipe"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "BA"] <- "Bahia"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "MG"] <- "Minas Gerais"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "ES"] <- "Espírito Santo"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "RJ"] <- "Rio de Janeiro"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "SP"] <- "São Paulo"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "PR"] <- "Paraná"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "SC"] <- "Santa Catarina"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "RS"] <- "Rio Grande do Sul"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "MS"] <- "Mato Grosso do Sul"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "MT"] <- "Mato Grosso"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "GO"] <- "Goiás"
med_uf_2020_hepc$Var1[med_uf_2020_hepc$Var1 == "DF"] <- "Distrito Federal"

write.csv(med_uf_2020_hepc, "C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/med_uf_2020_hepc.csv")

############ Hepatite C - medicamentos - estoque estratégico #############

medicamentos_hepc_consolidado_estoque_estrategico <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/medicamentos_hepc_consolidado_estoque_estrategico.xlsx")

###### Estoque estratégico - 351708 unidades farmacêuticas #############

sum(medicamentos_hepc_consolidado_estoque_estrategico$unidades_farmaceuticas)


############ Hepatite C - Tratamentos - estoque estratégico #############

tratamentos_hepc_consolidado_estoque_estrategico <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/demandas/DEMANDA_PAINEL_HEPATITES_VIRAIS _2020/tratamentos_hepc_consolidado_estoque_estrategico.xlsx")

###### Estoque estratégico - 4158 tratamentos #############

sum(tratamentos_hepc_consolidado_estoque_estrategico$QTD_tratamentos)

