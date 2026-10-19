test_that("lockfile dependency fields contain only valid package requirements", {
  lockfile <- renv::lockfile_read(file.path("..", "..", "renv.lock"))
  fields <- c("Depends", "Imports", "LinkingTo", "Suggests", "Enhances")
  invalid <- character()

  for (package in names(lockfile$Packages)) {
    record <- lockfile$Packages[[package]]
    for (field in intersect(fields, names(record))) {
      dependencies <- record[[field]]
      valid <- vapply(dependencies, function(dependency) {
        is.character(dependency) && length(dependency) == 1L &&
          !is.na(dependency) && nzchar(trimws(dependency)) &&
          !identical(dependency, "NULL")
      }, logical(1))
      if (is.null(dependencies) || !all(valid)) {
        invalid <- c(invalid, paste(package, field, sep = ": "))
      }
    }
  }

  # JSON null entries become a fictitious "NULL" package during a clean restore.
  expect_true(length(invalid) == 0L, info = paste(invalid, collapse = ", "))
})
