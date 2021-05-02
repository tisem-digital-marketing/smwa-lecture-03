# xaringan-snakemake
# 
# Purpose:
#    - build the html and pdf outputs of a xaringan presentation using snakemake
#    - manage package dependencies with renv
# 
# contributors: @lachlandeer

# --- Variable Declarations ---- #
run_r   = "Rscript --no-save --no-restore --verbose"
log_all = "2>&1"

# --- Build Rules ---#

## build_html : builds html output of slides
rule build_html:
    input:
        slides = "slides.Rmd",
        runner = "knit_xaringan.R"
    output:
        slides = "slides.html"
    log:
        "logs/slides.Rout"
    shell:
        "{run_r} {input.runner} {input.slides} \
                    {output.slides} > {log} {log_all}"

## build_pdf : builds pdf output of slides using decktape
rule build_pdf:
    input:
        slides = "slides.html",
        runner = "run_decktape.R"
    output:
        slides = "slides.pdf"
    log:
        "logs/decktape.Rout"
    shell:
        "{run_r} {input.runner} {input.slides} \
                    {output.slides} > {log} {log_all}"

## all : build html and pdfs
rule all:
    input:
        pdf  = "slides.pdf",
        html = "slides.html"

## clean: delete outputs
rule clean:
    shell: 
        "rm *.pdf *.html"

# --- renv rules --- #
include: "rules/renv.smk"
