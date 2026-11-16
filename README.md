# br-shiny

R Shiny app for viewing and clustering copy number profiles from low-pass whole-genome sequencing.

## Requirements

- R 4.x
- Packages: `install.packages(c("shiny", "readxl", "pheatmap", "scales"))`

## Data

Patient data are not included. Place input files in `data/`:

- One `.xlsx` file per dataset with four sheets: `Segmented_Bin_CopyRatios`, `Ratio_Bin_CopyRatios`, `Bin_Annotations`, `Sample_Metadata`
- `cancer_genes_pos.csv` with columns `Symbol`, `chrm`, `pos`
- Optional fundus images named `<sample>_fundus.jpg`

## Usage

- Windows: double-click `br-shiny.vbs`. Run `stop-br-shiny.bat` to stop the app.
- macOS: run `chmod +x launch-br-shiny.command` once, then double-click it.
- From R: `shiny::runApp("path/to/br-shiny")`

In the app, select a dataset, click LOAD DATA, then (RE)CLUSTER.

The Windows launcher expects R at `C:\Program Files\R\R-4.6.0`. Edit the path in `br-shiny.vbs` if your version differs.

## Acknowledgments

Based on the copy number viewer developed by Rafael Nevarez and Will Kim at the USC Convergent Science Institute in Cancer.
