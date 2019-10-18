%{
intro to vectors

vectors consist of length and direction

vectors are denoted like
      4
x = (-3)

with a column of values representing the vector

and is the same for higher dimension vectors too
     X0     where X0 is the 0th component of vector x
x = (X1  )  indexing for vectors starts at 0
     X...
     Xn-1   this means the total number of dimensions is n-1

since components of a vector are just numbers the length of a vector must
be computed

this is called the Euclidean length of the vector
for
      4
x = (-3)

the Euclidean length is 5, using the Pythagoreon therom
euclidean_length = sqrt(4^2 + -3^2)

and this is the same for all dimensions
euclidean_length = sqrt(X0^2 + X1^2 + X...^2 + Xn-1^2)

this is also called the Euclidean norm, two-norm or L2 norm and can be denoted
||x||2
%}

% custom function to get the L2 norm of a vector
l2norm([4, -3]) % should be 5
