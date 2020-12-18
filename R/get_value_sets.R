#' @export

get_value_sets <-
        function(url = "http://hl7.org/implement/standards/fhir/us/mcode/mCODEDataDictionary.xlsx") {

                output <- get_data_dictionary(url = url)
                output$`Value Set Details`
        }
