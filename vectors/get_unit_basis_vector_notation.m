%{
"standard basis vectors"
simply put these are vectors with a single component whose values is 1
and all other components with a value of 0
these are denoted by e_j (e sub j) where j = the index of 1

this function returns the notation to use on this vector
(if this vector is a unit basis vector!)
%}
function ubv_notation = get_unit_basis_vector_notation(some_vector)
    vector_shape = size(some_vector);
    if vector_shape(1) >= 2
        ubv_notation = "this is a matrix and not a vector";
    elseif ~is_standard_basis_vector(some_vector)
        ubv_notation = "not a unit basis vector";
    else
        for index = 1:vector_shape(2)
            if some_vector(index) == 1
                ubv_notation = "e_" + num2str(index - 1);
                break
            end
        end
    end
end