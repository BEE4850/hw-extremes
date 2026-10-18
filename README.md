# Unit Homework — Extreme Values
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

The extreme-values unit's homework for [BEE 4850/5850](https://envdata.viveks.me), Spring 2027. Due
**Thu 25 Mar 2027**. Covers sessions 19–23: block maxima and the GEV, return levels, peaks over a
threshold, nonstationary extremes, and short records with priors, all on the Vermilion River's flood
record.

## Learning Objectives

- check the extremal types theorem's conditions on a river's annual maxima: a trend against shuffled
  records, and the choice of blocks;
- fit a GEV with a likelihood that stays finite, turn a design life and an accepted risk into a
  return period, and check by simulation whether the record can tell a bounded tail from a heavy one;
- fit a peaks-over-threshold model to daily flows: how dependent consecutive days are, declustering,
  choosing a threshold, and why its level differs from the GEV's;
- fit a GEV whose location changes with time, and say what extrapolating it assumes;
- set priors from what is known about a river before looking at its record, check them by prior
  predictive simulation, and compare a posterior with a bootstrap for 40 years of data.

## Writing Up

Write your solutions in Quarto if you can: your code, its output and your reasoning stay together,
and the PDF you submit comes from one file. `solution.qmd` is a starting point, with a heading for
each part; render it with `quarto render solution.qmd`. The
[assignment workflow page](https://envdata.viveks.me/spring2027/setup/homework.html#writing-up-your-solutions)
explains how to include code and handwritten work. You can also open your copy of this repository in
GitHub Codespaces (**Code**, then **Codespaces**, then **Create codespace**) to work in your browser
with Julia, Python, R and Quarto already installed.

## Data

`data/vermilion_peaks.csv` and `data/vermilion_daily.csv`: the Vermilion River near Danville,
Illinois (USGS 03339000), its instantaneous annual peaks and its daily mean discharge, in cubic feet
per second. Where they came from, and the gaps in them, are in `data/README.md`.

## Files

- `hw-extremes.qmd` — the assignment. Render with `quarto render hw-extremes.qmd`.
- `solution.qmd` — a starting point for your write-up.
- `figs/` — the figure the assignment shows.
- `data/` — the two data files, their provenance, and the script that downloaded them.
- `Project.toml`, `Manifest.toml` — the Julia 1.12.5 environment, including IJulia and Turing.
