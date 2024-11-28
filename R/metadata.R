#' Fetch flood area metadata
#'
#' @param query (optional) A list of query parameters to filter results.
#' @return A list of flood area metadata.
#' @examples
#' areas <- flood_get_flood_areas()
#' @export
flood_get_flood_areas <- function(query = NULL) {
  req <- flood_request("/id/floodAreas", query)
  flood_perform_request(req)
}
