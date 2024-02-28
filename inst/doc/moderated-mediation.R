## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message=FALSE-----------------------------------------------------
library(JSmediation)

## -----------------------------------------------------------------------------
data(ho_et_al)

## -----------------------------------------------------------------------------
head(ho_et_al)

## -----------------------------------------------------------------------------
ho_et_al <-
  ho_et_al %>%
  standardize_variable(c(sdo, linkedfate), suffix = "c") %>%
  dplyr::mutate(condition_c = build_contrast(condition,
                                             "Low discrimination",
                                             "High discrimination")
  )

head(ho_et_al)

## -----------------------------------------------------------------------------
ho_et_al %>% 
  dplyr::select(dplyr::starts_with("condition"))

## -----------------------------------------------------------------------------
moderated_mediation_fit <- 
  mdt_moderated(data = ho_et_al,
                IV   = condition_c,
                DV   = hypodescent, 
                M    = linkedfate_c,
                Mod  = sdo_c)

## -----------------------------------------------------------------------------
moderated_mediation_fit

## -----------------------------------------------------------------------------
moderated_mediation_fit_w_index <- moderated_mediation_fit %>%
  add_index(stage = "first")

## -----------------------------------------------------------------------------
moderated_mediation_fit_w_index

## -----------------------------------------------------------------------------
compute_indirect_effect_for(moderated_mediation_fit, Mod = 0)

## -----------------------------------------------------------------------------
compute_indirect_effect_for(moderated_mediation_fit, Mod = 1)

