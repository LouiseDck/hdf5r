% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R6Classes_H5P.R
\docType{class}
\name{H5P_FILE_CREATE-class}
\alias{H5P_FILE_CREATE-class}
\alias{H5P_FILE_CREATE}
\title{Class for HDF5 property list for file creation}
\value{
Object of class \code{\link[=H5P_FILE_CREATE]{H5P_FILE_CREATE}}.
}
\description{
It inherits all functions of the \code{\link{H5P}}.
}
\section{Methods}{

\describe{
\item{\code{new(id = NULL)}}{

Create a new class of type \code{\link{H5P_FILE_CREATE}}

\strong{Parameters}
\describe{
\item{id}{Internal use only}
}}

\item{\code{set_userblock(size)}}{

This function implements the HDF5-API function H5Pset_userblock.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{get_userblock()}}{

This function implements the HDF5-API function H5Pget_userblock.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{set_sizes(sizeof_addr, sizeof_size)}}{

This function implements the HDF5-API function H5Pset_sizes.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{get_sizes()}}{

This function implements the HDF5-API function H5Pget_sizes.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{set_sym_k(ik, lk)}}{

This function implements the HDF5-API function H5Pset_sym_k.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{get_sym_k()}}{

This function implements the HDF5-API function H5Pget_sym_k.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{set_istore_k(ik)}}{

This function implements the HDF5-API function H5Pset_istore_k.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{get_istore_k()}}{

This function implements the HDF5-API function H5Pget_istore_k.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{set_file_space(strategy, threshold)}}{

This function implements the HDF5-API function H5Pset_file_space.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}

\item{\code{get_file_space()}}{

This function implements the HDF5-API function H5Pget_file_space.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_p.html} for details.}
}}

\seealso{
\code{\link[=H5P]{H5P}}
}
\author{
Holger Hoefling
}
