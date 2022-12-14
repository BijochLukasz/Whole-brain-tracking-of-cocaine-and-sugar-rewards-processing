save_pheatmap_png <- function(x, filename_prefix, filename_suffix, width=1800, height=800, res = 300) {
  filename=paste(filename_prefix, filename_suffix, ".png", sep="")
  png(filename, width = width, height = height, res = res)
  grid::grid.newpage()
  grid::grid.draw(x$gtable)
  dev.off()
}