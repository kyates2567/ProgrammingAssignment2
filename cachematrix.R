## This is a  pair of functions that compute and cache the inverse of a matrix
## functions do

## this function inverts matrix if it has not already been cached

makeCacheMatrix <- function(x = matrix()) {
        ##make matrix instead of vector in example
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<-solve
        ##invert matrix
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        ##list of getters and setters

}


## this function checks to see if inverted matric has been cashed; is so, returns
## if not, inverts matrix

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        ##here checking to see if the inverted 
        ##matrix value is already cached and returning if so 
        data <- x$get()
        m <- sole(data)
        x$setinverse(m)
        m
        ##compute if isn't cached 