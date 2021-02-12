#' Ensure all dates in an ARIES dataframe follow the same convention of year-month-day
#'
#' @param df A tibble of data imported using read_ARIES_csv()
#'
#' @return A tibble with standardized dates
#' @export
#'
#' @examples
standardize_ARIES_dates <- function(df) {
    df$COLLDTE <- df$COLLDTE %>%
    lubridate::ymd() %>%
    as.character()
}
