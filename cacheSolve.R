
cacheSolve <- function(x, ...)
{
	##get the inverse of matrix
	inv <<- x$getInv()

	##check if the inverse is not null
	if(!is.null(inv )) 
	{
           message("getting cached data")
           return(m)
	}

	##if inverse is null then get the matrix and compute the inverse
	data <- x$get()

	inv <- solve(data)

	x$setInv(inv)

	##return the inverse
	inv
}
