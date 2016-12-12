## Coursera R Programming Assignment 2, Yilma Adem
## caching the inverse of a matrix.
## Store a matrix and caches its inverse.
makeCacheMatrix <- function(x = matrix()){
	zinv <- NULL
	set <- function(y){
		x <<- y
		zinv <<- NULL
	}
	get <- function()x
	setinverse <- function(solve)zinv <<- solve
	getinverse <- function()zinv 
	list(set = set, get = get,
	     setinverse = setinverse,
	     getinverse = getinverse)
}
cacheSolve <- function(x, ...){
	zinv  <- x$getinverse()
	if(!is.null(zinv)){
		message("caching the inverse of a matrix")
		return(zinv)
	}
	data <- x$get()
	zinv  <- solve(data, ...)
	x$setinverse(zinv)
	zinv 
}	