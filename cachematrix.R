
## Create special matrix
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
	## i initially
	i <- NULL
    setmatrix <- function(y) {
    x <<- y
    i <<- NULL
    }
    getmatrix <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(
        setmatrix = setmatrix,
        getmatrix = getmatrix,
        setinverse = setinverse,
        getinverse = getinverse)
}

## If inverse exists that use existing
## If inverse doesn't exist then calculate

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
					message("got from cashe")
					return(i)
					}
    data <- x$getmatrix()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}



