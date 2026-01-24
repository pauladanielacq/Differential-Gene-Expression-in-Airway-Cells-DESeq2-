install.packages("BiocManager")
BiocManager::install()
BiocManager::install("DESeq2")
BiocManager::install("GenomicFeatures")
library(DESeq2)
install.packages(c("tidyverse","pheatmap"))
if (!requireNamespace("BiocManager", quietly = TRUE))install.packages("BiocManager")
BiocManager::install(c("DESeq2","airway","apeglm","org.Hs.eg.db","AnnotationDbi",force=TRUE))


library(airway);data("airway")
library("DESeq2")
se<-airway
colData(se)$dex<-relevel(colData(se)$dex,"untrt")
dds<-DESeqDataSet(se,design = ~dex)
dds<-dds[rowSums(counts(dds))>=10,]
dds<-DESeq(dds)
