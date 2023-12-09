## code to prepare `DATASET` dataset goes here
library(haven)
library(purrr)
trial_path <- file.path("data-raw", "NCT00364013")
trial_files <- dir(trial_path)
names <- gsub("_pds2019.sas7bdat", "", trial_files)
dl <- map(file.path(trial_path, trial_files), read_sas)
names(dl) <- names
adsl <- dl$adsl
usethis::use_data(adsl, overwrite = TRUE)
