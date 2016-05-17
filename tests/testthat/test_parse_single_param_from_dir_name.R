library(testthat)

context("parse_single_param_from_dir_name")

testthat::test_that(
    "Parsing single param from dir.",
    {
        expect_equal(parse_single_param_from_dir_name('a250'), list(a = 250))
        expect_equal(parse_single_param_from_dir_name('bm-0.4'), list(bm = -0.4))
        expect_equal(parse_single_param_from_dir_name('bs0.1'), list(bs = 0.1))
        expect_equal(parse_single_param_from_dir_name('wm0.8'), list(wm = 0.8))
        expect_equal(parse_single_param_from_dir_name('ws0.2'), list(ws = 0.2))
        expect_equal(parse_single_param_from_dir_name('c0.25'), list(c = 0.25))
        expect_equal(parse_single_param_from_dir_name('r000'), list(r = 0))

        # same as above, just different way of specifying the same decimal number
        expect_equal(parse_single_param_from_dir_name('a250'), list(a = 250.0))
        expect_equal(parse_single_param_from_dir_name('bm-0.4'), list(bm = -.4))
        expect_equal(parse_single_param_from_dir_name('bs0.1'), list(bs = .1))
        expect_equal(parse_single_param_from_dir_name('wm0.8'), list(wm = .8))
        expect_equal(parse_single_param_from_dir_name('ws0.2'), list(ws = .2))
        expect_equal(parse_single_param_from_dir_name('c0.25'), list(c = .25))
        expect_equal(parse_single_param_from_dir_name('r000'), list(r = 0.0))
    }
)
