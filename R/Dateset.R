#' @title A dataset for ADSL
#' @description Panitumumab Randomized Trial In Combination With Chemotherapy
#' for Metastatic Colorectal Cancer to Determine Efficacy
#' @format ## A tibble with 935 rows and 19 columns:
#' \describe{
#'   \item{SUBJID}{Subject ID}
#'   \item{TRT}{Assigned Treatment}
#'   \item{ATRT}{Actual Treatment}
#'   \item{PRSURG}{Presence of Prior Surgery}
#'   \item{DTHDY}{Death Day}
#'   \item{DTH}{Death}
#'   \item{PFSDYCR}{PFS Day (Central, RECIST)}
#'   \item{PFSCR}{PD on Study (Central, RECIST) or Death}
#'   \item{LIVERMET}{Metastases to Liver at Study Entry?}
#'   \item{DIAGMONS}{Months Since Primary Diagnosis}
#'   \item{AGE}{Age in Years at Screening}
#'   \item{SEX}{Sex}
#'   \item{B_WEIGHT}{Weight in Kilograms at Baseline}
#'   \item{B_HEIGHT}{Height in Centimeters at Baseline}
#'   \item{RACE}{Race}
#'   \item{B_ECOG}{Baseline ECOG Performance Status}
#'   \item{HISSUBTY}{Histological Subtype}
#'   \item{B_METNAM}{Number of BL Metas Site}
#'   \item{DIAGTYPE}{Primary Tumor Diagnosis}
#' }
#' @importFrom usethis use_data
#' @importFrom purrr map
#' @export
"adsl"
trial_path <- file.path("data-raw", "NCT00364013")
trial_files <- dir(trial_path)
names <- gsub("_pds2019.sas7bdat", "", trial_files)
dl <- map(file.path(trial_path, trial_files), read_sas)
names(dl) <- names
adsl <- dl$adsl
use_data(adsl, overwrite = TRUE)

