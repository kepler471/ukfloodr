#' Fetch latest telemetry readings
#'
#' @param station_id (optional) A station ID to filter telemetry readings.
#' @return A list of telemetry readings.
#' @examples
#' readings <- flood_get_latest_readings()
#' readings <- flood_get_latest_readings(station_id = "012345")
#' @export
flood_get_latest_readings <- function(station_id = NULL) {
  query <- if (!is.null(station_id)) list(station = station_id) else NULL
  req <- flood_request("/id/readings", query)
  flood_perform_request(req)
}

#' Fetch telemetry readings for a specific measure
#'
#' @param measure_id A string representing the measure ID.
#' @return A list of telemetry readings for the measure.
#' @examples
#' readings <- flood_get_readings_for_measure("012345")
#' @export
flood_get_readings_for_measure <- function(measure_id) {
  endpoint <- paste0("/id/measures/", measure_id, "/readings")
  req <- flood_request(endpoint)
  flood_perform_request(req)
}
