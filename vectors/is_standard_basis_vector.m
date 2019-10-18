%{
standard basis vectors are vectors with a single component whose values is 1
and all other components with a value of 0

this function returns True if the argument passed in is a
standard basis vector
%}
% checks the sum against the count of "1"s (both must be equal to 1)
function is_sbv = is_standard_basis_vector(some_vector)
    ones = 0;
    for component = some_vector
        if component == 1
            ones = ones + 1;
        end
    end
    is_sbv = sum(some_vector) == 1 & ones == 1;
end