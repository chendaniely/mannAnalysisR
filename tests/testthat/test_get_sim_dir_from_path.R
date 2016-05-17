

library(testthat)

context("get_sim_dir_from_path")

testthat::test_that(
    "Getting the simulation folder from a path",
    {
        expect_equal(get_sim_dir_from_path(
            '/path/that/does/not/end/with/a/slash/a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000'),
            "a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000")
        expect_equal(get_sim_dir_from_path(
            '/path/that/does/end/with/a/slash/a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000/'),
            "a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000")

        # same as above but uses ~ for home
        expect_equal(get_sim_dir_from_path(
            '~/path/that/does/not/end/with/a/slash/a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000'),
            "a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000")
        expect_equal(get_sim_dir_from_path(
            '~/path/that/does/end/with/a/slash/a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000/'),
            "a250_bm-0.4_bs0.1_wm0.8_ws0.2_c0.25_r000")
    }
)
