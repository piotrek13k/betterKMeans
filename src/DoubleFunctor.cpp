#include "../include/DoubleFunctor.hpp"

DoubleFunctor::DoubleFunctor(mat matrix, StringFunction& function)
: matrix(matrix), function(function) {}

int DoubleFunctor::inputs() const
{
  return matrix.n_rows;
}

int DoubleFunctor::values() const
{
  return matrix.n_rows;
}

int DoubleFunctor::operator()(const Eigen::VectorXd &parameters, Eigen::VectorXd &fvec) const
{
  for(int i=0; i<inputs(); i++)
  {
    rowvec row = matrix.row(i);
    fvec(i) = row(matrix.n_cols - 1) - function(row, parameters);
  }

  return 0;
}
