RNA-seq Differential Expression Analysis — Airway × Dexamethasone

This project performs a small-scale RNA-seq differential expression analysis using the public airway dataset from Bioconductor.
The goal is to identify genes whose expression changes significantly when human airway epithelial cells are treated with dexamethasone, a synthetic glucocorticoid commonly used for its anti-inflammatory effects in asthma and chronic respiratory diseases.

🎯 Objectives

-Explore transcriptional changes induced by dexamethasone treatment.

-Apply a reproducible RNA-seq analysis workflow using DESeq2.

-Produce publication-grade visualizations:

-PCA

-Volcano plot

-Heatmap

-Demonstrate skills in RNA-seq statistics, visualization and interpretation.

📚 Dataset

The analysis uses the airway dataset from Bioconductor.

It contains RNA-seq read counts from primary human airway smooth muscle cells, cultured under two conditions:

-Control (No dexamethasone)

-Dexamethasone-treated

This dataset is widely used for education and benchmarking: small, well-annotated, and fully reproducible.

🧩 Workflow Overview

1. Load raw count matrix and metadata.

2. Quality checks and filtering.

3. Normalization using DESeq2 size factors.

4. Variance Stabilizing Transform (VST).

5. Dimensionality reduction using PCA.

6. Differential expression analysis (DEX):

- Model design: ~ dex

- Shrinkage estimation with apeglm.

Biological interpretation:

- Volcano plot

- Heatmap of top DE genes

- Gene annotation using org.Hs.eg.db

- Export results & figures.

🧰 Tools & Libraries

- R / Bioconductor

- DESeq2, airway, apeglm, SummarizedExperiment

- tidyverse, ggplot2, pheatmap

- AnnotationDbi, org.Hs.eg.db

Reproducibility

renv for environment management

Quarto / R Markdown for literate analysis

📂 Repository Structure



├── data/
│   └── raw/                # Input count data
├── results/
│   ├── tables/             # CSV with DEGs
│   └── figures/            # PCA, volcano, heatmap
├── scripts/
│   ├── 01_preprocessing.R
│   ├── 02_deseq2_analysis.R
│   └── 03_visualization.R
└── README.md

📊 Visualizations Generated

Figures are saved under results/figures/:

- pca.png → sample clustering by treatment

- volcano.png → significance vs fold change

- heatmap.png → top 30 DE genes

🧬 Summary of Biological Findings

- Dexamethasone treatment altered expression of inflammatory response genes.

- Several glucocorticoid-responsive genes were significantly downregulated.

- PCA shows clear separation between control vs treated samples.

- Volcano and heatmap highlight transcriptional repression patterns consistent with glucocorticoid signaling.

▶️ Running the Analysis

Prerequisites:

install.packages(c("tidyverse", "ggplot2", "pheatmap"))
BiocManager::install(c("DESeq2", "airway", "apeglm", "org.Hs.eg.db"))


Run scripts:

source("scripts/01_preprocessing.R")
source("scripts/02_deseq2_analysis.R")
source("scripts/03_visualization.R")

📁 Output Files

Under results/:

results/tables/deseq2_results.csv → full DESeq2 results

results/figures/ → all plots as .png

🚀 Future Extensions

Possible improvements:

- GO / KEGG enrichment analysis (clusterProfiler)

- Pathway visualization

- LFC shrinkage method comparison

- Export to GEO2R-compatible tables

- Convert to Snakemake pipeline


🙌 Credits

Dataset: Himes et al., Bioconductor airway package
Analysis: Paula Cano Quintero
=======

