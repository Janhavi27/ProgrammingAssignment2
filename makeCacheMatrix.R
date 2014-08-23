	
## The below function accepts a matrix and creates the following  list of functions 
##1. set : to set the value of the matrix
##2. get : to get the value of the matrix
##3. setInv : to get the value of the inverse of matrix
##4. getInv : to get the value of the inverse of matrix

makeCacheMatrix <- function( x = matrix()  )
{
	##initialise the inverse to NULL
	inv <- NULL

	##set the matrix and the inverse
    	set <- function(y)
    	{
        	x <<- y
        	inv <<- NULL
    	}
    
    	##get the matrix
    	get <- function() x
    
    	##set the value of matrix inverse
    	setInv <- function(inverse)
    	{
      		inv <<- inverse
    	}
    
    	##get the value of matrix inverse
    	getInv <- function() inv
    
    	##return a list of all the above functions
    	list( set = set, get = get, setInv = setInv, getInv = getInv )
}
