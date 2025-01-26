## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(JSmediation)

## -----------------------------------------------------------------------------
data(ho_et_al)

head(ho_et_al)

## -----------------------------------------------------------------------------
ho_et_al$condition_c <- build_contrast(ho_et_al$condition,
                                         "Low discrimination",
                                         "High discrimination")

head(ho_et_al)

## -----------------------------------------------------------------------------
mediation_fit <- 
  mdt_simple(ho_et_al,
             IV = condition_c,
             DV = hypodescent,
             M  = linkedfate)

## ----eval=rlang::is_installed("performance"), fig.height=8, fig.width=7, out.width="100%"----
first_model <- extract_model(mediation_fit, step = "X -> M")
performance::check_model(first_model)

## ----eval=rlang::is_installed("performance"), fig.height=8, fig.width=7, out.width="100%"----
second_model <- extract_model(mediation_fit, step = 2)
performance::check_model(second_model)

## ----eval=rlang::is_installed("performance"), fig.height=8, fig.width=7, out.width="100%"----
third_model <- extract_model(mediation_fit, step = 3)
performance::check_model(third_model)

## ----render="asis"------------------------------------------------------------
mediation_fit

## -----------------------------------------------------------------------------
model_fit_with_index <- add_index(mediation_fit)
model_fit_with_index

