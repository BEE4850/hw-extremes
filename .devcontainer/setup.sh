#!/usr/bin/env bash
# Runs once when the codespace is created: the assignment's Julia environment and a kernel for
# each language. Add packages afterwards as you need them (Pkg.add, pip install, install.packages).
set -euo pipefail
julia --project=. -e 'using Pkg; Pkg.instantiate(); Pkg.build("IJulia")'
python3 -m pip install --quiet jupyter numpy scipy pandas matplotlib statsmodels ipykernel
Rscript -e 'install.packages(c("IRkernel", "knitr", "rmarkdown"), repos = "https://cloud.r-project.org"); IRkernel::installspec()'
