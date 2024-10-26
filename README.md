# Example Project

This project automates data cleaning, analysis, and report generation for a LaTeX manuscript using R. The `run_all.R` script orchestrates the workflow, ensuring that tables and figures are updated before compiling the manuscript.

## Project Structure

```bash
├── LICENSE               # License for the project
├── README.md             # Project overview and instructions
├── example_project.Rproj # RStudio project file
├── manuscript/
│   ├── manuscript.tex    # LaTeX manuscript source
│   └── manuscript.pdf    # Compiled PDF output
├── outputs/              # Generated output files
│   ├── figures/          # Figures used in the manuscript
│   │   └── fig_1.png     # Example figure
│   ├── logs/             # Logs from table generation or other processes
│   │   └── log.txt       # Example log file
│   └── tables/           # Tables used in the manuscript
│       ├── table_1.log
│       └── table_1.tex
├── renv/                 # renv environment for dependency management
│   ├── activate.R
├── renv.lock             # Snapshot of package versions
├── run_all.R             # Main script to run the entire workflow
└── src/                  # R scripts for various tasks
    ├── clean.R           # Data cleaning scripts
    ├── figures.R         # Figure generation scripts
    └── tables.R          # Table generation scripts
```

## Workflow

1. **Data Processing**: The `src/` directory contains R scripts (`clean.R`, `figures.R`, `tables.R`) for data preparation, analysis, and visualizations.
   
2. **Automated Run Script**: `run_all.R` sequentially runs all scripts, generates updated tables and figures in `outputs/`, and compiles the LaTeX manuscript located in `manuscript/`. 

3. **Output**: After running `run_all.R`, the latest manuscript PDF (`manuscript.pdf`) reflects the most recent data, figures, and tables.

## Environment Management

This project uses the `renv` package to manage R package dependencies. To set up the environment, run:

```r
renv::restore()
```

## Compiling the Manuscript

The manuscript is compiled automatically by `run_all.R` using `tinytex::latexmk()`. Ensure that TinyTeX or a LaTeX distribution is installed.

## Usage

Run the entire workflow by executing `run_all.R`:

```r
source("run_all.R")
```

