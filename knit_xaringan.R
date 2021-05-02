
# knit_xaringan
#
# this script takes an xaringan presentation as an Rmd file
# and complies it using knitr
#
# Compilation happens in the directory where the Rmd file is located since
# this seems to be a bit of a philosophy, and then we move the file to the
# desired output location
#
# Author: @lachlandeer
#

# --- Command Line Unpack --- #
args <- commandArgs(trailingOnly = TRUE)
rmd_file = args[1]
out_file = basename(args[2])
out_path = dirname(args[2])

# --- Build file --- #
rmarkdown::render(input = rmd_file,
                  output_dir  = here::here(),
                  output_file = out_file,
                  output_format = 'xaringan::moon_reader',
                  quiet=FALSE)