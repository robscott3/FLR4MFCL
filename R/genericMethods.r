

#' write
#'
#' Writes MFCL objects to a text file
#'
#' @param x An object of class MFCL eg. MFCLFrq, MFCLPar, etc.
#'
#' @param file The name and path of the file to be written
#'
#' @param append If True append to existing file, If False overwrite any existing file
#'
#' @param ... Additional argument list that might not ever
#'  be used.
#'
#' @return Creates a text file at the specified location.
#' 
#' @seealso \code{\link{read.MFCLFrq}} and \code{\link{read.MFCLPar}}
#' 
#' @export
#' @docType methods
#' @rdname write-methods
#'
#' @examples
#' write(MFCLFrqStats())

setGeneric('write', function(x, file, append=F, ...) standardGeneric('write')) 



#'@export version
setGeneric('version', function(x, ...) standardGeneric('version')) 
setMethod('version', signature(x='MFCLPar'),function(x) flags(par)[flags(x)$flagtype==1 & flags(x)$flag==200,'value']) 

setMethod('version', signature(x='MFCLFrq'),function(x) return(slot(x,'frq_version'))) 


