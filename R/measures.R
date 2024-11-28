#' Fetch all monitoring measures
#'
#' @param query (optional) A list of query parameters to filter results.
#' @return A list containing measures data.
#' @examples
#' measures <- flood_get_measures()
#' @export
flood_get_measures <- function(query = NULL) {
  req <- flood_request("/id/measures", query)
  flood_perform_request(req)
}

#' Fetch details for a specific measure
#'
#' @param measure_id A string representing the measure ID.
#' @return A list containing measure details.
#' @examples
#' measure <- flood_get_measure("012345")
#' @export
flood_get_measure <- function(measure_id) {
  endpoint <- paste0("/id/measures/", measure_id)
  req <- flood_request(endpoint)
  flood_perform_request(req)
}
