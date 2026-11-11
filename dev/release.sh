#!/usr/bin/env bash

# Publicerar ändringar i paketet: bygger om README.md och de färdigbyggda
# vignetterna i inst/doc/, committar och pushar. Push triggar CI (R CMD check),
# pkgdown-sajten och R-universe, som bygger nya binärer.
#
# Avsett för "mindre" ändringar i README, NEWS eller vignetterna. Ändringar i
# R/ kräver att devtools::document() körts först, och ändringar i data-raw/ att
# data-raw/dataset_by_exercise.R körts — scriptet gör inte det.
#
# Användning:  dev/release.sh "sta310r: kort beskrivning"
#
# cs2 (vignettes/cs2-*.Rmd, inst/doc/cs2-*.html, dev/cs2-*) är tillfälligt
# borttagna ur .gitignore och .Rbuildignore och räknas därför inte med. När cs2
# ska publiceras: ta bort de raderna och kör scriptet.

set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
msg="${1:?Ange commitmeddelande: dev/release.sh \"sta310r: ...\"}"

cd "$root"

# 1. README.md från README.Rmd
Rscript -e 'devtools::build_readme()'

# 2. Färdigbyggda vignett-HTML i inst/doc/
"$root/dev/refresh-vignettes.sh"

# 3. Committa de filer som hör till en publicering
git add README.Rmd README.md NEWS.md .Rbuildignore .gitignore _pkgdown.yml \
        vignettes inst/doc DESCRIPTION R man NAMESPACE data data-raw tests

# 4. Publicera
git commit -m "$msg"
git push
