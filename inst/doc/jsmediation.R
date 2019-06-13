## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(JSmediation)

## ------------------------------------------------------------------------
head(ho_et_al)

## ------------------------------------------------------------------------
ho_et_al$condition_c <- build_contrast(ho_et_al$condition,
                                         "Low discrimination",
                                         "High discrimination")

head(ho_et_al)

## ------------------------------------------------------------------------
my_model <- 
  mdt_simple(ho_et_al,
             IV = condition_c,
             DV = hypodescent,
             M  = linkedfate)

## ------------------------------------------------------------------------
model_1 <- extract_model(my_model, step = "X -> M")

plot(model_1, ask = FALSE)

## ------------------------------------------------------------------------
model_2 <- extract_model(my_model, step = 2)

plot(model_2, ask = FALSE)

## ------------------------------------------------------------------------
model_3 <- extract_model(my_model, step = 3)

plot(model_3, ask = FALSE)

## ---- render="asis"------------------------------------------------------
my_model

## ------------------------------------------------------------------------
add_index(my_model)

## ------------------------------------------------------------------------
display_models(my_model)

## ------------------------------------------------------------------------
extract_tidy_models(my_model)

