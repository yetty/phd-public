#!/usr/bin/env Rscript
# Refresh the aggregate public-results RDS for the phd-public 030 chapter.
#
# Run from this project root:
#   Rscript scripts/update_030_public_data.R
#
# The script regenerates the source aggregate in phd-030 and copies only the
# public-safe aggregate RDS into this project's data directory.

project_root <- normalizePath(getwd(), mustWork = TRUE)
source_root <- normalizePath(
  file.path(project_root, "..", "phd-030-epistemic-minimal-pilot"),
  mustWork = TRUE
)

export_script <- file.path(source_root, "analysis", "export_public_summary.R")
source_rds <- file.path(source_root, "outputs", "data", "public_results_summary.rds")
target_rds <- file.path(project_root, "data", "030-epistemic-knowledge-public-summary.rds")

status <- system2("Rscript", export_script)
if (!identical(status, 0L)) {
  stop("phd-030 public summary export failed", call. = FALSE)
}

ok <- file.copy(source_rds, target_rds, overwrite = TRUE)
if (!ok) {
  stop("Could not copy public summary RDS", call. = FALSE)
}

cat("Updated", target_rds, "\n")
