# Differential-Gene-Expression-in-Airway-Cells-DESeq2-

This project performs a small-scale **RNA-seq differential expression analysis** using the public **`airway` dataset** from Bioconductor.  
The goal is to identify **genes whose expression changes significantly** when human airway epithelial cells are treated with **dexamethasone**, a synthetic glucocorticoid commonly used for its **anti-inflammatory** effects in conditions such as asthma and chronic respiratory diseases.

---

## 🎯 Objectives
- Explore transcriptional changes induced by dexamethasone treatment.  
- Apply a complete RNA-seq analysis workflow using **DESeq2**.  
- Produce reproducible visualizations: **PCA**, **volcano plot**, and **heatmap**.  
- Demonstrate skills in bioinformatics data analysis and result interpretation.

---

## 📚 Dataset
The analysis uses the [**`airway` dataset**](https://bioconductor.org/packages/release/data/experiment/html/airway.html) from Bioconductor.  
It contains RNA-seq read counts for human airway smooth muscle cells cultured *in vitro* and either:
- **Treated with dexamethasone**, or  
- **Untreated (control)**.

This dataset is ideal for learning RNA-seq analysis because it is small, well-annotated, and publicly available.

---

## 🧩 Workflow Overview
1. **Load and filter** the RNA-seq count data.  
2. **Normalize** and **transform** counts (variance stabilizing transformation).  
3. Perform **PCA** to explore sample relationships.  
4. Run **DESeq2** to find differentially expressed genes.  
5. Create **visualizations**:
   - PCA plot  
   - MA plot  
   - Volcano plot  
   - Heatmap of top DE genes  
6. **Annotate** genes with symbols using `org.Hs.eg.db`.  
7. Export **tables and figures** for downstream interpretation.

---

## 🧰 Tools and Libraries
- **R / Bioconductor**  
  - `DESeq2`, `airway`, `apeglm`, `SummarizedExperiment`  
  - `tidyverse`, `ggplot2`, `pheatmap`  
  - `AnnotationDbi`, `org.Hs.eg.db`  
- **Reproducibility**  
  - `renv` for environment management  
  - `Quarto` or `R Markdown` for reports  

---


