# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' K-Means clustering
#'
#' @description
#' It's traditional clustering method without any modifications.
#' 
#' It has own plot method.
#' 
#' @param inputMatrix N-dimensional matrix with data to clustering
#' @param k The number of clusters
#' @param epsilon Max squared error to stop clustering
#' @param maxIter Max iteration number to stop clustering
#' 
#' @return The instance of kmeans class which is list with:
#' 
#' * centers - Center of the each cluster
#' 
#' * labels - Label of each point, which indicates cluster of this point
#' 
#' * errors - Mean error of each cluster (sum of distance divided by number of points in the cluster)
#' 
#' * inputMatrix - copy of matrix from function parameters
#' @examples
#' library(KM)
#' 
#' ## chinese_father is dataset with 2d representation of the word "Father" in Chinese writing
#' inputMatrix <- chinese_father
#' 
#' result <- kmeans(inputMatrix, 3, 0.01, 30)
#' plot(result)
kmeans <- function(inputMatrix, k, epsilon, maxIter) {
    .Call('KM_kmeans', PACKAGE = 'KM', inputMatrix, k, epsilon, maxIter)
}

#' K-Omega-Means clustering
#'
#' @description
#' It's modification traditional K-Means clustering method, which use n-dimensional omega input and cluster bases
#' to calculate distances.
#' 
#' It has own plot method.
#' 
#' @param inputMatrix N-dimensional matrix with data to clustering
#' @param k The number of clusters
#' @param epsilon Max squared error to stop clustering
#' @param maxIter Max iteration number to stop clustering
#' @param omega N-dimensional vector with weights from 0.0 to 1.0
#' 
#' @return The instance of kOmeans class which is list with:
#' 
#' * centers - Center of the each cluster
#' 
#' * labels - Label of each point, which indicates cluster of this point
#' 
#' * errors - Mean error of each cluster (sum of distance divided by number of points in the cluster)
#' 
#' * eigenVectors - Eigen vector of each cluster, calculated from covariance of points in the cluster.
#' 
#' * eigenValues - Eigen value of each cluster, calculated from  covariance of points in the cluster.
#' 
#' * inputMatrix - copy of matrix from function parameters
#' @examples
#' library(KM)
#' 
#' ## small_letter_f is dataset with 2d representation of the small letter "f"
#' inputMatrix <- small_letter_f
#' 
#' result <- kOmeans(inputMatrix, 4, 0.01, 50, c(5.0, 0.5))
#' plot(result)
kOmeans <- function(inputMatrix, k, epsilon, maxIter, omega) {
    .Call('KM_kOmeans', PACKAGE = 'KM', inputMatrix, k, epsilon, maxIter, omega)
}

#' Better-K-Means clustering
#'
#' @description
#' It's modification traditional K-Means clustering method, which use omega input, cluster bases
#' and no-linear function interpolation to calculate distances.
#' 
#' It has own plot method.
#' 
#' @param inputMatrix N-dimensional matrix with data to clustering
#' @param k The number of clusters
#' @param epsilon Max squared error to stop clustering
#' @param maxIter Max iteration number to stop clustering
#' @param omega The number which is weight from 0.0 to 1.0
#' @param expression String with math expression,
#' which includes parameters symbols (B1,B2...BN) and arguments symbols (X1,X2...XN).
#' @param drawPoints Matrix with points from specific range,
#' if you don't plan to plot result you can ignore this parameter
#' 
#' @return The instance of betterKmeans class which is list with:
#' 
#' * centers - Center of the each cluster
#' 
#' * labels - Label of each point, which indicates cluster of this point
#' 
#' * errors - Mean error of each cluster (sum of distance divided by number of points in the cluster)
#' 
#' * eigenVectors - Eigen vector of each cluster, calculated from covariance of points in the cluster.
#' 
#' * eigenValues - Eigen value of each cluster, calculated from  covariance of points in the cluster.
#' 
#' * pointsToDraw - Result of function of each cluster with drawPoints as arguments.
#' If you don't plan to plot result you can ignore this.
#' 
#' * inputMatrix - copy of matrix from function parameters
#' @examples
#' library(KM)
#' 
#' ## large_letter_G is dataset with 2d representation of the large letter "G"
#' inputMatrix <- large_letter_G
#' 
#' ## "(X1^2)*B1+X1*B2+B3" - Quadratic function
#' result <- betterKmeans(inputMatrix, 5, 0.01, 10, c(0.5), "(X1^2)*B1+X1*B2+B3", as.matrix(seq(-2, 2, length.out = 400)))
#' plot(result)
betterKmeans <- function(inputMatrix, k, epsilon, maxIter, omega, expression, drawPoints) {
    .Call('KM_betterKmeans', PACKAGE = 'KM', inputMatrix, k, epsilon, maxIter, omega, expression, drawPoints)
}

