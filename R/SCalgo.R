#' @title Splitting-Coalescence (SC) algorithm.
#'
#' @description Performs the iterative clustering algorithm on the archaeological time series data.
#'
#' @param paths A list of data frames, where each frame contains the data for one individual. There
#' should be two columns with names 'distance' and 'oxygen'.
#'
#' @param bandwidth Denotes the order of the bandwidth that should be used in the splitting-coalescence
#' (SC) clustering algorithm. A value k will mean that the bandwidth used in the algorithm is n^k.
#'
#' @export
#'
#' @return A list of vectors where each vector gives the indexes of the individuals to be assigned
#' in the same cluster.
#'
#' @examples
#' armenia_split = split(armenia,f = armenia$ID)
#' band = -0.33
#' results = SCalgo(armenia_split,bandwidth = band)


SCalgo <- function(paths,
                   bandwidth){

  for(i in 1:length(paths)){
    if (!any(colnames(paths[[i]])==c("distance","oxygen"))) {stop('data frame does not contain columns named distance and oxygen')}
  }
  if (! is.atomic(bandwidth) || !length(bandwidth)==1) {stop('bandwidth needs to be a single value')}

  p = length(paths)
  U = 1:p
  S = list()
  i = 1
  while (length(U)>0){
    out = iteration(paths,U,bandwidth)
    S[[i]] = out$S1
    i = i+1
    U = out$U
  }

  return(S)

}
