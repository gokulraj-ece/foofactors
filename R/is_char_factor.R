#' Detects factors that should be characters
#'
#' Detects factors that should be character, because
#' # unique values = length
#'
#' @param x factor
#'
#' @return logical
#' @export
#'
#' @examples
#' #' is_char_factor(iris$Species)
is_char_factor <- function(x) {
	stopifnot(is.factor(x))
	length(x) == length(unique(x))
}

