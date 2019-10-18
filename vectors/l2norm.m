%{
Computes the length of a vector

for example:
      4
x = (-3)

the Euclidean length is 5, using the Pythagoreon therom
euclidean_length = sqrt(4^2 + -3^2)

and this is the same for all dimensions
euclidean_length = sqrt(X0^2 + X1^2 + X...^2 + Xn-1^2)
%}
function euclidean_length = l2norm(some_vector)
    euclidean_length = 0;
    for num = some_vector
        euclidean_length = euclidean_length + (num^2);
    end
    euclidean_length = sqrt(euclidean_length);
end