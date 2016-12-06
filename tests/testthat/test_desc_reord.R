context("reordering levels in descending order")

test_that("levels reordered in descending order", {
	a <- factor(c("a", "b", "c", "d"))
	b <- forcats::fct_rev(a)
	c <- factor(c("e", "f", "g"))
	d <- forcats::fct_rev(c)

	expect_identical(levels(desc_reord(a)), levels(b))
	expect_identical(levels(desc_reord(c)), levels(d))
	expect_error(levels(desc_reord(c)), NA)
})
