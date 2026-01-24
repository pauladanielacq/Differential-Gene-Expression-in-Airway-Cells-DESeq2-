vsd<-vst(dds, blind=FALSE)
pca <- plotPCA(vsd, intgroup = "dex", returnData = TRUE)
percentVar <- round(100 * attr(pca, "percentVar"))

p<- ggplot(pca, aes(PC1, PC2, color = dex)) +
  geom_point(size = 3, alpha = 0.85) +
  labs(
    x = paste0("PC1 (", percentVar[1], "%)"),
    y = paste0("PC2 (", percentVar[2], "%)")
  ) +
  theme_bw(base_size = 12) +
  theme(
    legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  ) +
  ggtitle("PCA - vst (DESeq2)")
ggsave(
  filename = "C:/Users/Paula C/Documents/BoinformÃ¡tica y ciencia de datos/Dexametasone RNASeq/Results/Figures/pca.png",
  plot = p,
  width = 6,
  height = 5,
  dpi = 300
)



library(ggplot2)
res_df$neglog10padj <- -log10(res_df$padj)
res_df$signif <- res_df$padj < 0.05 & abs(res_df$log2FoldChange) > 1

vol <- ggplot(res_df, aes(x = log2FoldChange, y = neglog10padj)) +
  geom_point(aes(color = signif), alpha = .75, size = 1.8) +
  scale_color_manual(values = c("grey60", "firebrick")) +
  geom_vline(xintercept = c(-1, 1), linetype = "dashed", linewidth = .5) +
  geom_hline(yintercept = -log10(0.05), linetype = "dashed", linewidth = .5) +
  labs(
    title = "Volcano Plot",
    subtitle = "Significance: padj < 0.05 & |log2FC| > 1",
    x = "log2 Fold Change",
    y = "-log10(padj)",
    color = "Significant"
  ) +
  theme_bw(base_size = 12) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "top"
  )
ggsave("C:/Users/Paula C/Documents/Boinformática y ciencia de datos/Dexametasone RNASeq/Results/Figures/volcano.png", vol, width=6, height=5, dpi=300)


library(pheatmap)
top <- rownames(head(res_df[order(res_df$padj), ], 30))

mat <- assay(vsd)[top, ]
mat <- t(scale(t(mat)))
ann <- as.data.frame(colData(vsd)[, "dex", drop = FALSE])
colnames(ann) <- "Condition"
pheatmap(
  mat,
  annotation_col = ann,
  clustering_distance_rows = "euclidean",
  clustering_distance_cols = "euclidean",
  clustering_method = "complete",
  show_rownames = TRUE,
  show_colnames = TRUE,
  fontsize_row = 6,
  fontsize_col = 10,
  fontsize = 11,
  color = colorRampPalette(c("navy", "white", "firebrick3"))(50),
  main = "Top 30 DE Genes (scaled expression)",
  filename = "C:/Users/Paula C/Documents/Boinformática y ciencia de datos/Dexametasone RNASeq/Results/Figures/heatmap_curado.png",
  width = 7,
  height = 8
)