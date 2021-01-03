library(readr)
CANCER_STAGING <- readr::read_csv("/Users/meerapatel/GitHub/packages/mOMOP/data-raw/cancer_staging.csv")
GENOMICS <- readr::read_csv("/Users/meerapatel/GitHub/packages/mOMOP/data-raw/genomics.csv")
ICD10CM <- readr::read_csv("/Users/meerapatel/GitHub/packages/mOMOP/data-raw/icd10cm.csv")
LOINC <- readr::read_csv("/Users/meerapatel/GitHub/packages/mOMOP/data-raw/loinc.csv")
SNOMED <- readr::read_csv("/Users/meerapatel/GitHub/packages/mOMOP/data-raw/snomed.csv")
SPECIMEN <- readr::read_csv("/Users/meerapatel/GitHub/packages/mOMOP/data-raw/specimen.csv")
UNITS_OF_MEASUREMENT <- readr::read_csv("/Users/meerapatel/GitHub/packages/mOMOP/data-raw/unitsofmeasurement.csv")

library(broca)
OWL <- broca::read_full_excel(file = "/Users/meerapatel/GitHub/packages/mOMOP/data-raw/mcode_rdf.xlsx")
usethis::use_data(
	CANCER_STAGING,
	GENOMICS,
	ICD10CM,
	LOINC,
	SNOMED,
	SPECIMEN,
	UNITS_OF_MEASUREMENT,
	OWL,
overwrite = TRUE
)
