context("creating a frequency table for factors")

test_that("freq_out determines frequency correctly", {
	a <- factor(c("a", "e", "i", "o", "u", "a", "u", "e", "i", "a"))
	b <- factor(c("a", "b", "c", "d", "a", "e"))
	w <- list(x = factor(c("a", "e", "i", "o", "u")), n = as.integer(c("3", "2", "2", "1", "2")))
	y <- as.data.frame(w)
	x <- list(x = factor(c("a", "b", "c", "d", "e")), n = as.integer(c("2", "1", "1", "1", "1")))
	z <- as.data.frame(x)
	expect_equal(freq_out(a), y)
	expect_error(freq_out(b) == y)
	expect_equal(freq_out(b), z)
})
