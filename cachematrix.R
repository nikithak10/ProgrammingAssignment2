## Put comments here that give an overall description of what your
## functions do
##The functions below ensure computing resources are used
## efficiently when calculating the inverse of an invertible
## matrix (x). It does so by checking the cache for the
## result before proceeding to calculate it.
 
## Write a short comment describing this function
## This first function creates a list containing a function to:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse (using solve)
## 4. get the value of the inverse (using solve)
makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
	set<-function(y){
		x<<-y
		inv<<-NULL
	}
	get<-function() x
	setinverse<-function(inverse) inv<<-inverse
	getinverse<-function() inv
	list(set=set,get=get,
		setinverse=setinverse,
		getinverse=getinverse)


}


## Write a short comment describing this function
## The function below calculates and returns the inverse of
## the matrix x. But first it checks to see if the inverse
## has already been calculated.
cacheSolve <- function(x, ...) {
        inv<-x$getinverse()
	if(!is.null(inv)) {
		message("getting cached date")
		return(inv)
	}
	data<-x$get()
	inv<-solve(data,...)
	x$setinverse(inv)
	inv

        ## Return a matrix that is the inverse of 'x'
}
