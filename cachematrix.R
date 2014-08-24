## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        Inverse <- NULL                                    # resets the inverse matrix
        get <- function() x                                # returns the matrix if asked for
        setinverse <- function(solve) Inverse <<- solve    
        getinverse <- function() Inverse
        list(get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        Inverse <- x$getinverse()                          # reads the cached inverse matrix (if there isnt one sets the value to NULL)
        if(!is.null(Inverse)) {                            # if there is one, returns it
                message("getting cached data")
                return(Inverse)cacheSolve(a)
        }
        data <- x$get()                                    # if there isn't any computes it from the matrix given to makeCacheMatrix
        Inverse <- solve(data)
        x$setinverse(Inverse)                              # caches the inverse matrix
        Inverse                                            # returns the inverse matrix
}

