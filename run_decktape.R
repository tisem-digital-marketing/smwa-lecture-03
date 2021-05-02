# run_decktape
#
# this script takes an xaringan presentation as an htrml file
# and uses decktape to produce a pdf
#
# Author: @lachlandeer
#

# --- Command Line Unpack --- #
args <- commandArgs(trailingOnly = TRUE)
html_file = args[1]
out_file = basename(args[2])

# --- Build file --- #
xaringan::decktape(file  = html_file,
                  output = out_file
                )