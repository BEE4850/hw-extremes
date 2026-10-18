#!/usr/bin/env bash
# Rebuilds the MP2 data for BEE 4850/5850 Spring 2027.
# USGS 03339000, Vermilion River near Danville, Illinois. Public domain.
# Retrieved 2026-09-17; peaks re-derived by water year 2026-10-10. Re-run to refresh, and update the
# retrieval note in README.md if you do.
set -euo pipefail
SITE=03339000
OUT="$(cd "$(dirname "$0")/data" && pwd)"

# (1) Instantaneous annual peaks -- the series flood frequency analysis actually uses.
# USGS publishes one peak per water year (1 October to 30 September), so a peak dated
# October to December belongs to the next calendar year's water year.
curl -sf "https://nwis.waterdata.usgs.gov/nwis/peak?site_no=${SITE}&agency_cd=USGS&format=rdb" \
  | awk -F'\t' '!/^#/ && $1=="USGS" && $3 ~ /^[0-9]{4}/ && $5 != "" {
      water_year = substr($3,1,4) + 0
      if (substr($3,6,2) + 0 >= 10) water_year += 1
      print water_year "," $5}' \
  | sort -t, -k1,1n | awk 'BEGIN{print "water_year,peak_cfs"}{print}' > "$OUT/vermilion_peaks.csv"

# (2) Daily mean discharge -- for peaks-over-threshold, and for the completeness question.
curl -sf "https://waterservices.usgs.gov/nwis/dv/?format=rdb&sites=${SITE}&parameterCd=00060&statCd=00003&startDT=1900-01-01&endDT=2025-12-31" \
  | awk -F'\t' '!/^#/ && $1=="USGS" && $3 ~ /^[0-9]{4}-/ && $4 != "" {print $3 "," $4}' \
  | awk 'BEGIN{print "date,discharge_cfs"}{print}' > "$OUT/vermilion_daily.csv"

wc -l "$OUT/vermilion_peaks.csv" "$OUT/vermilion_daily.csv"
