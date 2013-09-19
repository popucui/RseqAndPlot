#use venneuler package
require(venneuler)
v <- venneuler(c(DEGseq=2635, DESeq=1230, "DEGseq&DESeq"=967))
plot(v)
dev.copy2pdf(file="secVenneuler.pdf")

# use vennDiagram package
require(VennDiagram)
venn.plot <- draw.pairwise.venn(
  1230,2635,967, c("DESeq", "DEGseq"),
  fill = c("green",'red'),
  alpha = c(0.5,0.5),
   cex = 2, lty = 2)
dev.copy2pdf(file='sec6VennDiagram.pdf')
