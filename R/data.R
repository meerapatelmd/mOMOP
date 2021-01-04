#' @title mCode-OMOP Class Hierarchy
#' @description
#' This dataset is the result of the modifications of all the other datasets
#' in this package into classes for integration into an ontology.
#' format.
#' @details
#' See the `mcode-rdf` vignette for more details.
"MCODE_CLASS_HIERARCHY"

#' @title Cancer Staging
#' @description Minimal Common Oncology Data Elements related to AJCC Staging as
#' represented in the NCI Thesaurus subset of the OMOP Vocabularies.
#' @format A data frame with 1617 rows and 15 variables:
#' \describe{
#'   \item{\code{value_set_name}}{character}
#'   \item{\code{code_system}}{character}
#'   \item{\code{logical_definition}}{character}
#'   \item{\code{code}}{logical}
#'   \item{\code{code_description}}{logical}
#'   \item{\code{concept_id}}{double}
#'   \item{\code{concept_name}}{character}
#'   \item{\code{domain_id}}{character}
#'   \item{\code{vocabulary_id}}{character}
#'   \item{\code{concept_class_id}}{character}
#'   \item{\code{standard_concept}}{character}
#'   \item{\code{concept_code}}{character}
#'   \item{\code{valid_start_date}}{double}
#'   \item{\code{valid_end_date}}{double}
#'   \item{\code{invalid_reason}}{logical}
#'}
"CANCER_STAGING"

#' @title Genomics
#' @description Genomic Minimal Common Oncology Data Elements as OMOP Concepts.
#' @format A data frame with 27032 rows and 15 variables:
#' \describe{
#'   \item{\code{value_set_name}}{character}
#'   \item{\code{code_system}}{character}
#'   \item{\code{logical_definition}}{character}
#'   \item{\code{code}}{logical}
#'   \item{\code{code_description}}{logical}
#'   \item{\code{concept_id}}{double}
#'   \item{\code{concept_name}}{character}
#'   \item{\code{domain_id}}{character}
#'   \item{\code{vocabulary_id}}{character}
#'   \item{\code{concept_class_id}}{character}
#'   \item{\code{standard_concept}}{character}
#'   \item{\code{concept_code}}{double}
#'   \item{\code{valid_start_date}}{double}
#'   \item{\code{valid_end_date}}{double}
#'   \item{\code{invalid_reason}}{logical}
#'}
"GENOMICS"

#' @title ICD-10-CM
#' @description ICD-10-CM OMOP Concepts in the Minimal Common Oncology Data
#' Elements.
#' @format A data frame with 6074 rows and 15 variables:
#' \describe{
#'   \item{\code{value_set_name}}{character}
#'   \item{\code{code_system}}{character}
#'   \item{\code{logical_definition}}{logical}
#'   \item{\code{code}}{character}
#'   \item{\code{code_description}}{character}
#'   \item{\code{concept_id}}{double}
#'   \item{\code{concept_name}}{character}
#'   \item{\code{domain_id}}{character}
#'   \item{\code{vocabulary_id}}{character}
#'   \item{\code{concept_class_id}}{character}
#'   \item{\code{standard_concept}}{logical}
#'   \item{\code{concept_code}}{character}
#'   \item{\code{valid_start_date}}{double}
#'   \item{\code{valid_end_date}}{double}
#'   \item{\code{invalid_reason}}{logical}
#'}
"ICD10CM"

#' @title LOINC
#' @description All LOINC Concepts in the Minimal Common Oncology Data Elements.
#' @format A data frame with 160 rows and 15 variables:
#' \describe{
#'   \item{\code{value_set_name}}{character}
#'   \item{\code{code_system}}{character}
#'   \item{\code{logical_definition}}{logical}
#'   \item{\code{code}}{character}
#'   \item{\code{code_description}}{character}
#'   \item{\code{concept_id}}{double}
#'   \item{\code{concept_name}}{character}
#'   \item{\code{domain_id}}{character}
#'   \item{\code{vocabulary_id}}{character}
#'   \item{\code{concept_class_id}}{character}
#'   \item{\code{standard_concept}}{character}
#'   \item{\code{concept_code}}{character}
#'   \item{\code{valid_start_date}}{double}
#'   \item{\code{valid_end_date}}{double}
#'   \item{\code{invalid_reason}}{logical}
#'}
#' @details DETAILS
"LOINC"

#' @title SNOMED
#' @description All SNOMED Concepts in the Minimal Common Oncology Data Elements.
#' @format A data frame with 175450 rows and 18 variables:
#' \describe{
#'   \item{\code{value_set_name}}{character}
#'   \item{\code{code_system}}{character}
#'   \item{\code{logical_definition}}{character}
#'   \item{\code{ancestors_of}}{logical}
#'   \item{\code{descendants_of}}{double}
#'   \item{\code{code}}{logical}
#'   \item{\code{code_description}}{logical}
#'   \item{\code{all_codes}}{double}
#'   \item{\code{concept_id}}{double}
#'   \item{\code{concept_name}}{character}
#'   \item{\code{domain_id}}{character}
#'   \item{\code{vocabulary_id}}{character}
#'   \item{\code{concept_class_id}}{character}
#'   \item{\code{standard_concept}}{character}
#'   \item{\code{concept_code}}{character}
#'   \item{\code{valid_start_date}}{double}
#'   \item{\code{valid_end_date}}{double}
#'   \item{\code{invalid_reason}}{logical}
#'}
"SNOMED"

#' @title Specimen
#' @description All the possible clinical specimen types across both mCode and
#' OMOP.
#' @format A data frame with 3928 rows and 14 variables:
#' \describe{
#'   \item{\code{concept_id}}{double}
#'   \item{\code{value_set_name}}{character}
#'   \item{\code{code_system}}{character}
#'   \item{\code{logical_definition}}{logical}
#'   \item{\code{code}}{character}
#'   \item{\code{code_description}}{character}
#'   \item{\code{Observation}}{character}
#'   \item{\code{Condition}}{character}
#'   \item{\code{Spec Anatomic Site}}{character}
#'   \item{\code{Drug}}{character}
#'   \item{\code{Meas Value}}{character}
#'   \item{\code{Measurement}}{character}
#'   \item{\code{Specimen}}{character}
#'   \item{\code{X14}}{logical}
#'}
"SPECIMEN"

#' @title Units of Measurement
#' @description All the possible units of measurement across both OMOP and mCode
#' @format A data frame with 1011 rows and 15 variables:
#' \describe{
#'   \item{\code{value_set_name}}{character}
#'   \item{\code{code_system}}{character}
#'   \item{\code{logical_definition}}{logical}
#'   \item{\code{code}}{character}
#'   \item{\code{code_description}}{character}
#'   \item{\code{concept_id}}{double}
#'   \item{\code{concept_name}}{character}
#'   \item{\code{domain_id}}{character}
#'   \item{\code{vocabulary_id}}{character}
#'   \item{\code{concept_class_id}}{character}
#'   \item{\code{standard_concept}}{character}
#'   \item{\code{concept_code}}{character}
#'   \item{\code{valid_start_date}}{double}
#'   \item{\code{valid_end_date}}{double}
#'   \item{\code{invalid_reason}}{character}
#'}
"UNITS_OF_MEASUREMENT"

