% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R6Classes_H5Group.R
\docType{class}
\name{H5Group-class}
\alias{H5Group-class}
\alias{H5Group}
\title{Class for representing HDF5 groups}
\value{
Object of class \code{\link{H5Group}}.
}
\description{
HDF5-Groups are essentially equivalent to directories in a file system. Inside the groups, other groups or datasets can
be created. For the most parts, groups behave like files, so please also look at the documentation of \code{H5File}.
}
\section{Methods}{

\describe{
\item{\code{print(..., max.attributes = 10, max.listing = 10)}}{

Prints information for the group

\strong{Parameters}
\describe{
\item{max.attributes}{Maximum number of attribute names to print}
\item{max.listing}{Maximum number of ls-items to print}
\item{...}{ignored}
}}

\item{\code{open(name, link_access_pl = h5const$H5P_DEFAULT,
  dataset_access_pl = h5const$H5P_DEFAULT,
  type_access_pl = h5const$H5P_DEFAULT)}}{

Opens groups, datasets or types using the appropriate HDF5-API functions. Please see the documentation at
\url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_d.html} for datasets, 
\url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for types and 
\url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for general objects.}

\item{\code{open_by_idx(n, group_name = ".",
  index_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Oopen_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for details.}

\item{\code{ls(recursive = FALSE, detailed = FALSE,
  index_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT,
  dataset_access_pl = h5const$H5P_DEFAULT,
  type_access_pl = h5const$H5P_DEFAULT)}}{

Returns the contents of a file or group as a data.frame.}

\item{\code{exists(name, link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lexists.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{path_valid(path, check_object_valid = TRUE)}}{

This function implements the HDF5-API function H5LTpath_valid.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l_t.html} for details.}

\item{\code{link(obj, new_link_name, link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Olink.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for details.}

\item{\code{obj_copy_to(dst_loc, dst_name, src_name,
  object_copy_pl = h5const$H5P_DEFAULT,
  link_create_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Ocopy.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for details.}

\item{\code{obj_copy_from(src_loc, src_name, dst_name,
  object_copy_pl = h5const$H5P_DEFAULT,
  link_create_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Ocopy.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for details.}

\item{\code{obj_info_by_idx(n, group_name = ".",
  index_field = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE, remove_internal_use_only = TRUE)}}{

This function implements the HDF5-API function H5Oget_info_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for details.}

\item{\code{obj_info_by_name(object_name, remove_internal_use_only = TRUE)}}{

This function implements the HDF5-API function H5Oget_info_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for details.}

\item{\code{group_info()}}{

This function implements the HDF5-API function H5Gget_info.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_g.html} for details.}

\item{\code{group_info_by_name(name, link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Gget_info_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_g.html} for details.}

\item{\code{group_info_by_idx(n, group_name = ".",
  index_field = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Gget_info_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_g.html} for details.}

\item{\code{create_group(name, link_create_pl = h5const$H5P_DEFAULT,
  group_create_pl = h5const$H5P_DEFAULT,
  group_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Gcreate2 and H5Gcreate_anon (if name is NULL). Please see the documentation at
\url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_g.html} for regular groups and
\url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_g.html} for anonymous groups for details.}

\item{\code{create_dataset(name, robj = NULL, dtype = NULL, space = NULL,
  dims = NULL, chunk_dims = "auto", gzip_level = 4,
  link_create_pl = h5const$H5P_DEFAULT,
  dataset_create_pl = h5const$H5P_DEFAULT,
  dataset_access_pl = h5const$H5P_DEFAULT)}}{

This function is the main interface to create a new dataset. Its parameters allow for customization of the default
behavior, i.e. in order to get a specific datatype, a certain chunk size or dataset dimensionality.
Also note that this function implements the HDF5-API function H5Dcreate2 and H5Dcreate_anon (if name is NULL). Please see the documentation at
\url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_d.html} for regular groups and
\url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_d.html} for anonymous groups for details.

\strong{Parameters}
\describe{
\item{name}{The name of the new dataset. If missing, an anonymous dataset is created}
\item{robj}{An R-object to take as a template for creating the dataset. Either \code{robj} or both \code{dtype} and \code{space} have to be provided}
\item{dtype}{The datatype to use for the creation of the object. Can be null if \code{robj} is given.}
\item{space}{The space to use for the object creation. Can be null if \code{robj} is given. Otherwise an object of type \code{H5S} which specifies the dimensions of the dataset.}
\item{dims}{Dimension of the new dataset; used if \code{space} is \code{NULL}. overwrite the dimension guessed from \code{robj}
if \code{robj} is given.}
\item{chunk_dims}{Size of the chunk. Has to have the same length as the dataset dimension. If \code{"auto"}
then the size of each chunk is estimated so that each chunk is roughly as large in bytes as the value in
the \code{hdf5r.chunk_size} option. See also \code{\link{guess_chunks}} for a more detailed explanation.
If set to \code{NULL}, then no chunking is used, unless explicitly set in \code{dataset_create_pl}.}
\item{gzip_level}{Only if \code{chunk_dims} is not null. If given, then the \code{dataset_create_pl} is set to enable zipping
at the level given here. If set to NULL, then gzip is not set (but could be set otherwise in \code{dataset_create_pl}}
\item{link_create_pl}{Link creation property list. See \code{\link{H5P_LINK_CREATE}}}
\item{dataset_create_pl}{Dataset creation property list. See \code{\link{H5P_DATASET_CREATE}}}
\item{dataset_access_pl}{Dataset access property list. See \code{\link{H5P_DATASET_ACCESS}}}
}}

\item{\code{commit(name, dtype, link_create_pl = h5const$H5P_DEFAULT,
  type_create_pl = h5const$H5P_DEFAULT,
  type_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Tcommit2.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_t.html} for details.}

\item{\code{link_create_hard(obj_loc, obj_name, link_name,
  link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lcreate_hard.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_create_soft(target_path, link_name,
  link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lcreate_soft.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_create_external(target_filename, target_obj_name, link_name,
  link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lcreate_external.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_exists(name, link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lexists.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_move_from(src_loc, src_name, dst_name,
  link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lmove.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_move_to(dst_loc, dst_name, src_name,
  link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lmove.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_copy_from(src_loc, src_name, dst_name,
  link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lcopy.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_copy_to(dst_loc, dst_name, src_name,
  link_create_pl = h5const$H5P_DEFAULT,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lcopy.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_delete(name, link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Ldelete.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_delete_by_idx(n, group_name = ".",
  index_field = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Ldelete_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_info(name, link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lget_info.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_info_by_idx(n, group_name = ".",
  index_field = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lget_info_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_value(name, link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lget_val.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_value_by_idx(n, group_name = ".",
  index_field = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lget_val_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{link_name_by_idx(n, group_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Lget_name_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_l.html} for details.}

\item{\code{mount(name, child)}}{

This function implements the HDF5-API function H5Fmount.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_f.html} for details.}

\item{\code{unmount(name)}}{

This function implements the HDF5-API function H5Funmount.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_f.html} for details.}

\item{\code{create_reference(name = ".", space = NULL)}}{

This function implements the HDF5-API function H5Rcreate. If \code{space=NULL} then a \code{H5R_OBJECT} reference
is created, otherwise a \code{H5R_DATASET_REGION} reference
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_r.html} for details.}

\item{\code{obj_info(remove_internal_use_only = TRUE)}}{

This function implements the HDF5-API function H5Oget_info.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_o.html} for details.}

\item{\code{get_obj_name()}}{

This function implements the HDF5-API function H5Iget_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_i.html} for details.}

\item{\code{create_attr(attr_name, robj = NULL, dtype = NULL, space = NULL)}}{

This function implements the HDF5-API function H5Acreate2.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_open(attr_name)}}{

This function implements the HDF5-API function H5Aopen.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{create_attr_by_name(attr_name, obj_name, robj = NULL,
  dtype = NULL, space = NULL,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Acreate_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_open_by_name(attr_name, obj_name,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Aopen_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_open_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Aopen_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_exists_by_name(attr_name, obj_name,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Aexists_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_exists(attr_name)}}{

This function implements the HDF5-API function H5Aexists.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_rename_by_name(old_attr_name, new_attr_name, obj_name,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Arename_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_rename(old_attr_name, new_attr_name)}}{

This function implements the HDF5-API function H5Arename.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_delete(attr_name)}}{

This function implements the HDF5-API function H5Adelete.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_delete_by_name(attr_name, obj_name,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Adelete_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_delete_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Adelete_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_info_by_name(attr_name, obj_name,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Aget_info_by_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_info_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Aget_info_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_name_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE,
  link_access_pl = h5const$H5P_DEFAULT)}}{

This function implements the HDF5-API function H5Aget_name_by_idx.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{attr_get_number()}}{

This function implements the HDF5-API function H5Aget_num_attrs.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_a.html} for details.}

\item{\code{flush(scope = h5const$H5F_SCOPE_GLOBAL)}}{

This function implements the HDF5-API function H5Fflush.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_f.html} for details.}

\item{\code{get_filename()}}{

This function implements the HDF5-API function H5Fget_name.
Please see the documentation at \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___h5_f.html} for details.}

\item{\code{names(link_access_pl = h5const$H5P_DEFAULT)}}{

Returns the names of the items in the group or at the root of the file

\strong{Parameters}
\describe{
\item{link_access_pl}{The link-access property list. See \url{https://support.hdfgroup.org/documentation/hdf5/latest/group___l_a_p_l.html} for more detail.}
}}
}}

\examples{
fname <- tempfile(fileext = ".h5")
file <- H5File$new(fname, mode = "a")
group <- file$create_group("testgroup")
group$print()
group$close()
file$close_all()
}
\author{
Holger Hoefling
}
