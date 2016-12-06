#' Reorder levels of argument in descending order
#'
#' My version of reorder that uses dplyr::desc() to reorder
#' factor levels in descending order
#'
#' @param x factor
#'
#' @return factor
#' @export
#'
#' @examples
#' #' desc_reord(iris$Species)
desc_reord <- function(x) {
	stopifnot(!is.null(x))
	stats::reorder(x, dplyr::desc(x))
}
