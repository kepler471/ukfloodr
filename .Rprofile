source("renv/activate.R")

if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  if (requireNamespace("httpgd", quietly = TRUE)) {
    options(vsc.plot = FALSE)
    options(device = function(...) {
      httpgd::hgd(silent = TRUE)
      .vsc.browser(httpgd::hgd_url(history = FALSE), viewer = "Beside")
    })
  }
}
# https://renkun.me/2020/06/16/using-httpgd-in-vscode-a-web-based-svg-graphics-device/

if (interactive()) {
  suppressMessages(require(usethis))
}

if (interactive()) {
  suppressMessages(require(devtools))
}
