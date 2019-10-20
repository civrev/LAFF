'''Python parallel to matlab code'''

import numpy as np

def is_vector(obj):
	'''Returns True if the obj is a vector'''
	return isinstance(obj, np.ndarray) and obj.ndim == 1

def is_basis_vector(vector):
	'''Returns True if the obj is a basis vector
	
	A basis vector, as known as standard basis vector, unit basis vector
	and more, is a vector with 1 component equal to 1 and all other components
	equal to zero
	'''
	if not is_vector(vector):
		raise ValueError('Argument must be a 1 dimensional array')
	return np.sum(vector) == 1 and len([x for x in vector if x == 0]) == len(vector) - 1

def l2norm(vector):
	'''Returns the L2 norm of the vector
	
	L2 norm is also known as Euclidean length of the vector
	and is calculated by the root of the sum of squares of its
	components
	
	>>> l2norm(np.array([3, 4]))
	5
	
	Parameters
	----------
		vector : numpy.ndarray
			1-D array to get the L2 norm of
	Raises
	------
		ValueError
			Argument must be a 1 dimensional array
	Returns
	-------
		float
			L2 norm of the vector
	'''
	if not is_vector(vector):
		raise ValueError('Argument must be a 1 dimensional array')
	# in numpy operations on arrays are applied to each element of the array
	return np.sqrt(np.sum((vector ** 2)))