#' @export

get_data_dictionary <-
        function(url = "http://hl7.org/implement/standards/fhir/us/mcode/mCODEDataDictionary.xlsx") {

                temp_xlsx <- tempfile(fileext = ".xlsx")

                download.file(url = url,
                              destfile = temp_xlsx)

                output <- broca::read_full_excel(file = temp_xlsx)

                unlink(temp_xlsx)

                output
        }
