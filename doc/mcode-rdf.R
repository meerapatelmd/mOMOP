## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  message = FALSE
)

## ----setup--------------------------------------------------------------------
library(tidyverse)
library(mOMOP)

## -----------------------------------------------------------------------------
unique(LOINC$value_set_name)

## -----------------------------------------------------------------------------
unique(ICD10CM$value_set_name)
unique(SNOMED$value_set_name)

## -----------------------------------------------------------------------------
ICD10CM_SNOMED <-
  bind_rows(ICD10CM,
            SNOMED) %>%
  rubix::split_by(col = value_set_name)
names(ICD10CM_SNOMED)

## -----------------------------------------------------------------------------
nms <- names(ICD10CM_SNOMED)
nms <- str_remove_all(nms, "VS$")
nms <- str_replace_all(nms, "([a-z]{1})([A-Z]{1})","\\1_\\2")
nms <- toupper(nms)
names(ICD10CM_SNOMED) <- nms
names(ICD10CM_SNOMED)

## -----------------------------------------------------------------------------
other_value_sets <-
list(CANCER_STAGING = CANCER_STAGING, 
          GENOMICS = GENOMICS, 
          TUMOR_MARKER_MEASUREMENT = LOINC, 
          SPECIMEN = SPECIMEN, 
          UNITS_OF_MEASUREMENT = UNITS_OF_MEASUREMENT) 

mcode_classes <-
  c(ICD10CM_SNOMED,
    other_value_sets)

names(mcode_classes)

## -----------------------------------------------------------------------------
mcode_classes2 <-
mcode_classes %>%
  map(mutate_all, as.character) %>%
  bind_rows(.id = "class") %>% 
  chariot::merge_strip(into = "concept") %>%
  # Specimen domain has additional columns
  unite(
    col = "mcode_concept", 
    code, code_description, 
    sep = " ", 
    remove = FALSE,
    na.rm = TRUE
    ) %>%
  mutate(concept = coalesce(concept, Specimen, mcode_concept)) %>%
  distinct() %>%
  rubix::split_by(col = "class")

## ----message=FALSE------------------------------------------------------------
file <- file.path(getwd(), "data-raw/mcode_rdf.xlsx")
if (!file.exists(file)) {
  openxlsx::write.xlsx(x = mcode_classes2,
                       file = file)
}

## -----------------------------------------------------------------------------
mcode_classes3 <-
  mcode_classes2 %>%
  map(select, concept)
mcode_classes3

