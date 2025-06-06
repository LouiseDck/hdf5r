% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R6Classes_H5P.R
\docType{class}
\name{H5P_OBJECT_COPY-class}
\alias{H5P_OBJECT_COPY-class}
\alias{H5P_OBJECT_COPY}
\title{Class for HDF5 property list for object copying}
\value{
Object of class \code{\link[=H5P_OBJECT_COPY]{H5P_OBJECT_COPY}}.
}
\description{
It inherits all functions of the \code{\link{H5P}}.
}
\section{Methods}{

\describe{
\item{\code{new(id = NULL)}}{

Create a new class of type \code{\link{H5P_OBJECT_COPY}}

\strong{Parameters}
\describe{
\item{id}{Internal use only}
}}

\item{\code{set_copy_obj(copy_options = 0)}}{

This function implements the HDF5-API function H5Pset_copy_object. Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{get_copy_obj()}}{

This function implements the HDF5-API function H5Pget_copy_object. Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}
}}

\seealso{
\code{\link[=H5P]{H5P}}
}
\author{
Holger Hoefling
}
