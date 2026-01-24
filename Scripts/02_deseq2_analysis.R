BiocManager::install("apeglm")
install.packages("emdbook")
library("emdbook")
library("apeglm")

res<-lfcShrink(dds,coef ="dex_trt_vs_untrt", type="apeglm")
res_df<-as.data.frame(res[order(res$padj),])
write.csv(res_df,"C:/Users/Paula C/Documents/Boinformática y ciencia de datos/Dexametasone RNASeq/Results/deg_table.csv",row.names = TRUE)
