## Put comments here that give an overall description of what your
> ## functions do
> This function gives an inverse matrix output from an input matrix
> ## Write a short comment describing this function
> ## This function has four child functions and returns a list of these four function's output

> makeCacheMatrix <- function(x = matrix()) {
+ m <- NULL
+   set <- function(y) {
+     x <<- y
+     m <<- NULL
+   }
+   get <- function() x
+   setsolve <- function(inverse) m <<- inverse
+   getsolve <-  function () m
+   list(set = set, get = get,
+        setsolve = setsolve,
+        getsolve = getsolve)
+ }
> 
> 
> ## Write a short comment describing this function
> ## This function confirms if there is already an inverse matrix(gives an output without calculation) or not otherwise it calculates and return the inverse matrix
> cacheSolve <- function(x, ...) {
+ 	m <- x$getsolve()
+   if(!is.null(m)) {
+     message("getting cached data")
+     return(m)
+   }
+   data <- x$get()
+   m <- solve(data, ...)
+   x$setsolve(m)
+   m
+         ## Return a matrix that is the inverse of 'x'
+ }

