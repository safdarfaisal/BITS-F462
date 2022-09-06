invert < invert(m){
  mat <- m
  rows = dim(m)[1]
  cols = dim(m)[2]
  ident = matrix(1, nrow = rows, ncol = cols);
  return(solve(mat, ident));
}