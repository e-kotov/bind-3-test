# Run this repository in the web browser using Binder

## **Push the button >>** [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/e-kotov/bind-3-test/HEAD?urlpath=rstudio)

This repository contains files for the article about using containers for reproducible research with applications in demography.

## Files description

| File | Description |
| --------| -------------------------- |
| Dockerfile | This text file defines which container image Binder needs to launch. |
| install.R | This R script contains lines to install packages required for the analysis. |
| main.Rmd | This is the file with the example code we will run inside the container once it is launched. |
| README.md | This is the current readme file that you are reading. |


## How to create a button to launch the repository in a container using Binder

This readme contains simple code for the "launch binder" button that you can see above. To view the source code of the readme, click [this link](https://raw.githubusercontent.com/e-kotov/bind-3-test/main/README.md). The code consists of two constant parts that instruct the web browser to open Binder and one part that is your username and repository name.:

| Code Part | Code                                                                    | Comments        |
| ---- | ----------------------------------------------------------------------- | --------------- |
| Constant    | `[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/` | Points the web browser to Binder |
| Change to your username and repository on GitHub    | `e-kotov/bind-3-test`                                                    | Specifies which repository to use for the container. The format is `<github-username>/<repository-name>`. |
| Constant    | `/HEAD?urlpath=rstudio)`                                                 | Instructs Binder to use the main repository branch and to go to RStudio in the container. |

For your projects, change the middle part of the code with <github-username>/<repository-name> and concatenate everything into a single line. You get the code for the button for the README.md file for your repository, which is displayed by default whenever someone opens your repository on GitHub. Here's an example for the current repository:

`[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/e-kotov/bind-3-test/HEAD?urlpath=rstudio)`
