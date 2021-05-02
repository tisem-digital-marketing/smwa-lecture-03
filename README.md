# Social Media and Web Analytics: LECTURE NAME

[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![lifecycle](https://img.shields.io/badge/version-2021-red.svg)]()

**Things with `XXX` need updating**

## Meta-Information

* Module Maintainer: Lachlan Deer (`@lachlandeer`)
* Course: [Social Media and Web Analytics](https://tisem-digital-marketing.github.io/XXX-smwa)
* Institute: Dept of Marketing, Tilburg University
* Current Version: [XXX edition](https://tisem-digital-marketing.github.io/2021-smwa)

## Introduction

Slides for the XXX of Social Media and Web Analytics

Slides are a xaringan presentation and are built to html and pdf using the Snakemake workflow management system.
I also manage R's package dependencies with `renv`.

## How to Build the Slides:

1. Install R, Snakemake and xaringan (see below).
2. Create the `renv` environment: `snakemake renv_restore --cores 1`
   * If you have not installed R 
3. Navigate to this project's directory and then run: `snakemake all --cores 1`
   * End result is a html and pdf presentation

## Installation Instructions

Follow these Steps to install the necessary software on your system

You need to have the following software and packages installed:

1. Python 3 (Python 3.6 or higher)
2. Snakemake (we'll install it in a couple of lines time!)
3. R (version 4.0.x)

### Installing Python

Either:

1. Install Anaconda Python:
    - We provide instructions on how to install anaconda python [here](https://pp4rs.github.io/2020-uzh-installation-guide/python/)
2. Install Python using the deadsnakes ppa (Debian/Ubuntu flavored):
    - Here's how to add the deadsnakes ppa and install Python 3.8
    ```bash
    $ sudo apt-get install software-properties-common
    $ sudo add-apt-repository ppa:deadsnakes/ppa
    $ sudo apt-get update
    $ sudo apt-get install python3.8
    ```

### Installing Snakemake

I have included a `requirements.txt` file that we can use to install a specific version of snakemake.
This makes sure that my example runs on your machine (or at least won't break because you use a different version of snakemake than I do)

``` bash
pip3 install -r requirements.txt
```

you may need to replace `pip3` with `pip`

### Installing `R`

We provide instructions on how to install R [here](https://pp4rs.github.io/2020-uzh-installation-guide/r)

### Installing R packages

Use our renv workflow:

Open a terminal and navigate to this directory.
Then in the terminal enter the following command to install renv:

``` bash
snakemake --cores 1 renv_install
```

Then you will need to provide consent for `renv` to be able to write files to your system:

``` bash
snakemake --cores 1 renv_consent
```

Once this is complete you can use renv to create a separate R environment that contains the packages we use in our example by entering the following command into the terminal:

``` bash
snakemake --cores 1 renv_restore
```

This will install all the packages we need. It may take a while.

## Suggested Citation (for the Module)

Deer, Lachlan and de With, Hendrik. 2021. Social Media and Web Analytics: XXX.
Tilburg University.
url = "https://github.com/tisem-digital-marketing/smwa-lecture-XXX"

## Suggested Citation (Template)

```{r, engine='out', eval = FALSE}
@misc{smwa-lecture-template,
      title={"Social Media and Web Analytics: Lecture Slide Template"},
      author={Lachlan Deer},
      year={2021},
      url = "https://github.com/tisem-digital-marketing/smwa-lecture-template"
}
```
