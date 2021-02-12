standardize_ARIES_dates <- function(df) {
    df$COLLDTE <- df$COLLDTE %>%
    lubridate::ymd() %>%
    as.character()
}
