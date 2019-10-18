%{
When talking about vectors it is common to deal with
"standard basis vectors"
simply put these are vectors with a single component whose values is 1
and all other components with a value of 0
these are denoted by e_j (e sub j) where j = the index of 1
       1         0         0
e_0 = (0) e_1 = (1) e_2 = (0)
       0         0         1

sometimes these 3 specific standard basis vectors are referred to as
     1       0       0
i = (0) k = (1) j = (0)
     0       0       1

standard basis vectors are also  known by...
unit basis vectors
conical basis vectors
natural basis vectors
%}

is_standard_basis_vector([1, 0, 0]) % returns 1 aka true
is_standard_basis_vector([0, 1, 0]) % returns 1 aka true
is_standard_basis_vector([0, 0, 1]) % returns 1 aka true
is_standard_basis_vector([1, 1, 0]) % returns 0 aka false

get_unit_basis_vector_notation([1, 0, 0]) % e_0
get_unit_basis_vector_notation([0, 1, 0]) % e_1
get_unit_basis_vector_notation([0, 0, 1]) % e_2
get_unit_basis_vector_notation([1, 1, 1]) % not a unit basis vector
get_unit_basis_vector_notation([1, 1, 1; 1, 1, 1]) % this is a matrix and not a vector