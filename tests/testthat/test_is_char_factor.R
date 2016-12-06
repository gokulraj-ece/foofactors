context("detecting factors that should be character")

test_that("is_char_factor detects factors that should be character", {
	a <- factor(c("a", "e", "i", "o", "u"))
	b <- factor(c("a", "b", "c", "d", "e", "a", "b"))
	c <- factor(c(1, 2, 3, 4, 5, 3))

	expect_true(is_char_factor(a))
	expect_false(is_char_factor(b))
	expect_false(is_char_factor(c))
})
