## Testing cache matrix function
> source("ProgrammingAssignment2.R")
> inv <- makeCacheMatrix(matrix(1:6, 2,2))
> inv$get()
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> inv$getinverse()
NULL
> cacheSolve(inv)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
