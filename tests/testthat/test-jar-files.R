test_that("Required JAR files exist", {
  jar_dir <- system.file("java", package = "xlsxjars")
  
  expect_true(dir.exists(jar_dir), "JAR directory should exist")
  
  expected_jars <- c(
    "commons-codec-1.9.jar",
    "poi-3.13-20150929.jar", 
    "poi-ooxml-3.13-20150929.jar",
    "poi-ooxml-schemas-3.13-20150929.jar",
    "xmlbeans-2.6.0.jar"
  )
  
  for (jar in expected_jars) {
    jar_path <- file.path(jar_dir, jar)
    expect_true(file.exists(jar_path), 
                label = paste("JAR file should exist:", jar))
    expect_gt(file.size(jar_path), 0,
              label = paste("JAR file should not be empty:", jar))
  }
})

test_that("JAR files have correct properties", {
  jar_dir <- system.file("java", package = "xlsxjars")
  jar_files <- list.files(jar_dir, pattern = "\\.jar$", full.names = TRUE)
  
  expect_length(jar_files, 5)
  
  for (jar_file in jar_files) {
    expect_match(basename(jar_file), "\\.jar$", 
                 label = paste("File should have .jar extension:", basename(jar_file)))
  }
})

test_that("Package can be loaded", {
  expect_true(requireNamespace("xlsxjars", quietly = TRUE),
              "xlsxjars package should be loadable")
})