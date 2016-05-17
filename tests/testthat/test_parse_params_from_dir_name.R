library(testthat)

context("parse_sim_params_from_dir_name")

testthat::test_that(
    "Parsing params from dir.",
    {
        expect_equal(parse_sim_params_from_dir_name(
            'a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000'),
            list(a = 250, bm = -0.4, bs = 0.1, wm = 0.8, ws = 0.2, c = 0.25, r = 0))
    }
)
