# Data: Vermilion River near Danville, Illinois (USGS 03339000)

Public domain (U.S. Geological Survey). Copied 2026-10-18 from Mini Project 2's `data/` (retrieved
2026-09-17; peaks re-derived by water year 2026-10-10). `fetch_vermilion.sh` rebuilds both files.

| File | What |
|---|---|
| `vermilion_peaks.csv` | `water_year,peak_cfs`: the instantaneous annual peak discharge (cubic feet per second), one per water year (1 October to 30 September, named for the year it ends), 104 water years 1915–2025. None for 1922–1928, when the gauge was discontinued. |
| `vermilion_daily.csv` | `date,discharge_cfs`: daily mean discharge, 1914-10-01 to 1921-09-30 and 1928-06-13 to 2025-12-31 (38,188 days). Water years 1928 (110 days) and 2026 (92 days) are partial; every other water year with data is complete. |

Checked 2026-10-18: 104 distinct water years; the median instantaneous peak is 1.065 times the
water year's largest daily mean (1.00 to 1.34). The USGS site record gives a drainage area of 1,290
square miles (read 2026-10-10, for Mini Project 2's key).
