context("treemapify")

test_that("treemapify doesn't thrown an error or warning", {
  treeMapCoordinates <- treemapify(
    G20,
    area = "gdp_mil_usd",
    subgroup = "hemisphere",
    subgroup2 = "region",
    subgroup3 = "econ_classification",
    fixed = T
  )
  expect_error(treeMapCoordinates, NA)
  expect_warning(treeMapCoordinates, NA)
})

test_that("variable subgroups work", {
  am_string <- "am"
  expect_error(
    treemapify(mtcars, area = "wt", subgroup = am_string),
    NA
  )
})
