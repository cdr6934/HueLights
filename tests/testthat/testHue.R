
test_that("Function returns a character IP", {
  expect_equal(class(getIP()), class("character"))
})
