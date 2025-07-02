test_that("Package has correct structure", {
  expect_true(file.exists(system.file("DESCRIPTION", package = "xlsxjars")),
              "DESCRIPTION file should exist")
  
  expect_true(file.exists(system.file("COPYRIGHTS", package = "xlsxjars")),
              "COPYRIGHTS file should exist")
  
  expect_true(dir.exists(system.file("java", package = "xlsxjars")),
              "java directory should exist")
})

test_that("Package metadata is correct", {
  desc <- packageDescription("xlsxjars")
  
  expect_equal(desc$Package, "xlsxjars")
  expect_match(desc$Title, "POI Jars")
  expect_equal(desc$License, "GPL-3")
  expect_match(desc$Description, "xlsxjars package")
})
