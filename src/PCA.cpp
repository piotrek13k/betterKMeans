#include "../include/PCA.hpp"

PCA::PCA(mat matrix): matrix(matrix) {}

void PCA::calculate()
{
  mat scores;
  vec tsquared;

  princomp(eigenVectors, scores, eigenValues, tsquared, matrix);
}
