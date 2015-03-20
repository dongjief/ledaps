## Ledaps Version 1.0.0 Release Notes ##
Release Date: July 26, 2012

### Downloads ###

**Ledaps source code - available via the [LEDAPS Google Projects Source](http://code.google.com/p/ledaps/source/checkout) link**

  * Non-members may check out a read-only working copy anonymously over HTTP.
  * svn checkout http://ledaps.googlecode.com/svn/tags/version_1.3.1 ledaps-read-only

  * Ledaps auxiliary update scripts

**Ledaps auxiliary files - available via the [LEDAPS auxiliaries](http://espa.cr.usgs.gov/validations/ledaps_auxiliary/ledaps_aux.1978-2014.tar.gz) link**

### Installation ###
  1. Install dependent libraries - HDF-EOS GCTP, HDF4, HDF-EOS2, TIFF, GeoTIFF
  1. Set up environment variables.  Can create an environment shell file or add the following to your bash shell.  For C shell, use 'setenv VAR "directory"'.  Note: If the HDF library was configured and built with szip support, then the user will also need to add an environment variable for SZIP include (SZIPINC) and library (SZIPLIB) files.
```
    export HDFEOS_GCTPINC="path_to_HDF-EOS_GCTP_include_files"
    export HDFEOS_GCTPLIB="path_to_HDF-EOS_GCTP_libraries"
    export TIFFINC="path_to_TIFF_include_files"
    export TIFFLIB="path_to_TIFF_libraries"
    export GEOTIFF_INC="path_to_GEOTIFF_include_files"
    export GEOTIFF_LIB="path_to_GEOTIFF_libraries"
    export HDFINC="path_to_HDF_include_files"
    export HDFLIB="path_to_HDF_libraries"
    export HDFEOS_INC="path_to_HDFEOS_include_files"
    export HDFEOS_LIB="path_to_HDFEOS_libraries"
    export JPEGINC="path_to_JPEG_include_files"
    export JPEGLIB="path_to_JPEG_libraries"
    export BIN="path_to_directory_for_LEDAPS_binaries"
```
  1. Install baseline auxiliary files.  Please note that the original ozone data has data gaps in 1978 (actual data starts on Nov. 1, 1978), 1979 (partial), 1993 (partial), 1994 (partial), 1995 (complete gap), 1996 (partial), 1997 (partial), 1998 (missing DOY 347+), 2008 (missing Sept. 28/29), ...  You will want to run the updatetoms script (described later) on this baseline set of data.  The NASA LEDAPS group has filled some of these larger data gaps by interpolating the missing data. If the ozone data is missing from the NASA ftp site, then the updatetoms script will not try to update that auxiliary file.
```
    tar -xvzf ledaps_aux.1978-2014.tar.gz
```
  1. Checkout (from Google ledaps project) and install source files
```
cd ledapsSrc/src
make
make install
make clean
```
This will create a list of executable files under $BIN<br />
lndapp lndcal  lndpm  lndsr  lndsrbm.ksh sixsV1.0B
cmrbv1.0  compadjn  comptemp  geo2xy SDSreader3.0 xy2geo
(tested in gcc and gfortran compiler)

**Note that if the HDF library was configured and built with szip support, then the user will also need to add "-L$(SZIPLIB) -lsz" at the end of the library defines in the Makefiles.  The user should also add "-I$(SZIPINC)" to the include directory defines in the Makefile.**

**Note that new cloud mask program (lndsrbm) calls command
"ncdump" which is a standard HDF command. This release includes
a linux version ncdump command in the bin directory. You need to replace the ncdump program if you run from a different OS system. If you don't want to run optional lndsr-based cloud mask (lndsrbm), you will not need the ncdump program.**

  1. Setup environment
```
export ANC_PATH="directory_saved_ancillary_files"
(or in c shell use 
setenv ANC_PATH "directory_saved_ancillary_files")
```
  1. Test - Download Landsat files and then run following commands separately
```
lndpm <Landsat_meta_file>
lndcal <lndcal_input_text>
lndsr <lndsr_input_text>
lndsrbm.ksh <lndsr_input_text>
```
Or simply run the do\_ledaps Python script in the LEDAPS bin directory to run the applications.  Use do\_ledaps.py --help for the usage information.  This script requires that your LEDAPS binaries are in your $PATH or that you have a $BIN environment variable set up to point to the LEDAPS bin directory.
```
do_ledaps.py --metafile <Landsat_meta_file>
```
  1. Check output
```
lndcal.*.hdf: top-of-atmosphere (TOA) reflectance in HDF format
lndth.*.hdf: thermal brightness temperature in HDF format
lndsr.*.hdf: surface reflectance in HDF format
(each file is also associated with a ENVI header file that contains geographic
information)
```

### Dependencies ###
  * GCTP libraries
  * TIFF libraries
  * GeoTIFF libraries
  * HDF4 libraries
  * HDF-EOS2 libraries
  * Ancillary data products
    1. NCEP water vapor data
    1. TOMS ozone data
    1. CMGDEM HDF file

### Verification Data ###

### User Manual ###

### Product Guide ###


## Changes From Previous Version ##
#### Updates on October 17, 2012 - USGS EROS ####
  * lndpm
    1. lndcsm is no longer called as part of the surface reflectance processing; the internal surface reflectance cloud mask is used instead.  Therefore the cloud snow/mask is no longer sent as a parameter for lndsr.
    1. Updated lndpm based on mods provided by Feng Gao from 1/18/2012.
      * Restores the solar zenith angle bug fix from the past for NLAP\_W0 format (Greg Ederer)
      * Fixes a bug when writing the UTM zone (south) into the ENVI hdr file (Greg Ederer)
      * Added processing for Landsat-4 TM (Feng Gao)
    1. Updated the metadata tags to work with the newly released LPGS metadata as well as continuing to support the old metadata tags.
    1. Cleaned up warning messages from compilation.
    1. Reset the version to 1.0.0 as this is our first official version of LEDAPS for the ESPA system.
    1. Changed the _Data Provider_ metadata tag to USGS/EROS.

  * lndcal
    1. Modified calibration of band 6 to flag the saturated thermal pixels in the output brightness temperature product.  This is consistent with flagging the saturated pixels in the reflective bands.
    1. Modified lndcal to write the QA bits for the lndth product (brightness temperature product), including appropriate metadata for the QA band.  The QA bits include flags for both fill pixels and for saturated band 6 pixels, consistent with the QA bits for the reflective bands in the lndcal output.
    1. Cleaned up some compiler warnings and minor bugs when freeing some of the data arrays.
    1. Reset the version to 1.0.0 as this is our first official version of LEDAPS for the ESPA system.

  * lndcsm
    1. No longer use the source code as part of the ESPA LEDAPS processing flow.

  * lndsr
    1. Cleaned up some compiler warnings and minor bugs when freeing some of the data arrays.
    1. Updated the metadata output to include the surface reflectance based QA bits.
    1. Reset the version to 1.0.0 as this is our first official version of LEDAPS for the ESPA system.
    1. Removed lndcsm input for cloud mask.  Will use only the internal cloud mask.
    1. QA bits are no longer output as a packed set of bits, but instead a separate band is written for the cloud, shadow, fill, etc. QA information and each pixel is either on or off.
    1. Cleaned up some of the screen outputs to make the information more concise.

  * lndsrbm
    1. cmrbv1.0.f used a hard coded pixel size of 28.5.  This has been modified to use the pixel size read from the scene metadata.
    1. Updated to handle the new single QA bands vs. the previous packed bit QA band.
    1. Cleaned up some of the screen outputs to make the information more concise.

  * bin
    1. Modified do\_ledaps.csh to no longer call lndcsm as part of the LEDAPS processing flow.