#' Fetch all flood alerts and warnings
#'
#' @param query (optional) A list of query parameters to filter results.
#' @return A list of flood alerts and warnings.
#' @examples
#' alerts <- flood_get_alerts()
#' @export
flood_get_alerts <- function(query = NULL) {
  req <- flood_request("/id/floods", query)
  flood_perform_request(req)
}
