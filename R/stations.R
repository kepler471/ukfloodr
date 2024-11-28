# R/stations.R

#' Fetch all monitoring stations
#'
#' @param query (optional) A list of query parameters to filter results.
#' @return A list containing monitoring station data.
#' @examples
#' stations <- flood_get_stations()
#' @export
flood_get_stations <- function(query = NULL) {
  req <- flood_request("/id/stations", query)
  flood_perform_request(req)
}

#' Fetch details for a specific station
#'
#' @param station_id A string representing the station ID.
#' @return A list containing station details.
#' @examples
#' station <- flood_get_station("012345")
#' @export
flood_get_station <- function(station_id) {
  endpoint <- paste0("/id/stations/", station_id)
  req <- flood_request(endpoint)
  flood_perform_request(req)
}
