# Helper to create a full request
flood_request <- function(endpoint, query = NULL) {
  req <- httr2::request(baseurl) |>
    httr2::req_url_path_append(endpoint)

  if (!is.null(query)) {
    req <- req |> httr2::req_url_query(!!!query)
  }

  req
}

# Generic function to perform the request and parse JSON response
flood_perform_request <- function(req) {
  res <- req |> httr2::req_perform()

  if (httr2::resp_status(res) != 200) {
    stop("API request failed: ", httr2::resp_status(res))
  }

  httr2::resp_body_json(res, simplifyVector = TRUE)
}
