## Ledaps Version 2.0.0 Release Notes ##
Release Date: June 6, 2014

### Downloads ###
**Ledaps source code - available via the [LEDAPS Google Projects Source](http://code.google.com/p/ledaps/source/checkout) link**

  * Non-members may check out a read-only working copy anonymously over HTTP.
  * svn checkout http://ledaps.googlecode.com/svn/releases/version_2.0.0 ledaps-read-only

**Ledaps auxiliary files - available via the [LEDAPS auxiliaries](http://espa.cr.usgs.gov/validations/ledaps_auxiliary/ledaps_aux.1978-2014.tar.gz) link**

**Ledaps auxiliary update scripts - found in the LedapsAncSrc directory of the LEDAPS download.**

  1. Install dependent libraries - ESPA raw binary libraries (dependent upon HDF-EOS GCTP, HDF4, HDF-EOS2, TIFF, GeoTIFF), LIBXML2
  1. ESPA raw binary libraries and tools are in the [espa\_common Google Project](https://code.google.com/p/espa-common/).  The user will need to build the src/raw\_binary code to create the libraries used for building the current version of the spectral indices application.  The Wiki for ESPA-COMMON provides install instructions for these libraries and tools.
  1. Set up environment variables.  Can create an environment shell file or add the following to your bash shell.  For C shell, use 'setenv VAR "directory"'.
```
    export ESPAINC="path_to_ESPA_include_files"
    export ESPALIB="path_to_ESPA_library_files"
    export HDFEOS_GCTPINC="path_to_HDF-EOS_GCTP_include_files"
    export HDFEOS_GCTPLIB="path_to_HDF-EOS_GCTP_libraries"
    export XML2INC="path_to_libxml2_include_files"
    export XML2LIB="path_to_libxml2_libraries"
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
lndcal  lndpm  lndsr  lndsrbm.ksh sixsV1.0B
cmrbv1.0  compadjn  comptemp  geo2xy SDSreader3.0 xy2geo
(tested in gcc and gfortran compiler)

  1. Setup environment
```
export LEDAPS_AUX_DIR="directory_saved_auxiliary_files"
(or in c shell use 
setenv LEDAPS_AUX_DIR "directory_saved_auxiliary_files")
```
  1. Test - Download Landsat files and then run following commands separately
```
convert_lpgs_to_espa --mtl <Landsat_MTL_file> --xml <Landsat_ESPA_XML_file>
lndpm <Landsat_ESPA_XML_file>
lndcal <lndcal_input_text>
lndsr <lndsr_input_text>
lndsrbm.ksh <lndsr_input_text>
```
Or simply run the do\_ledaps Python script in the LEDAPS bin directory to run the applications.  Use do\_ledaps.py --help for the usage information.  This script requires that your LEDAPS binaries are in your $PATH or that you have a $BIN environment variable set up to point to the LEDAPS bin directory.
```
convert_lpgs_to_espa --mtl <Landsat_MTL_file> --xml <Landsat_ESPA_XML_file>
do_ledaps.py --xml <Landsat_ESPA_XML_file>
```
  1. Check output
```
{scene_name}_toa_*: top-of-atmosphere (TOA) reflectance in internal ESPA file format (brightness temperatures are _toa_band6*)
{scene_name}_sr_*: surface reflectance in internal ESPA file format
```

### Dependencies ###
  * ESPA common libraries
  * GCTP libraries
  * TIFF libraries
  * GeoTIFF libraries
  * HDF4 libraries
  * HDF-EOS2 libraries
  * GCTP libraries
  * LIBXML2 libraries
  * Ancillary data products
    1. NCEP water vapor data
    1. TOMS ozone data
    1. CMGDEM HDF file

### Data Preprocessing ###
This version of the LEDAPS application requires the input Landsat products to be in the ESPA internal file format.  After compiling the espa-common raw\_binary libraries and tools, the convert\_lpgs\_to\_espa command-line tool can be used to create the ESPA internal file format for input to the LEDAPS application.

### Data Postprocessing ###
After compiling the espa-common raw\_binary libraries and tools, the convert\_espa\_to\_gtif and convert\_espa\_to\_hdf command-line tools can be used to convert the ESPA internal file format to HDF or GeoTIFF.  Otherwise the data will remain in the ESPA internal file format, which includes each band in the ENVI file format (i.e. raw binary file with associated ENVI header file) and an overall XML metadata file.

### Verification Data ###

### User Manual ###

### Product Guide ###

## Changes From Previous Version ##
#### Updates on June 6, 2014 - USGS EROS ####
  * Overall
    1. Input products are expected to be Landsat products from LPGS converted to the ESPA internal file format (see the Data Preprocessing section for more information).
    1. Output products are written in the ESPA internal file format (see the Data Postprocessing section for more information).
    1. Updated all the Makefiles to use install instead of cp.

  * lndpm
    1. Removed support in lndpm for any Landsat products other than LPGS products.  Scenes previously processed through NLAPS are now available via LPGS.  And, the UMD format previously supported is no longer utilized.  At the very least, all those scenes should be available from LPGS.  lndpm now reads the XML metadata file instead of the LPGS metadata file.
    1. Updated lndpm to use the espa-common error handling and included ESPA headers and comments for each routine in the file.
    1. Modified lndpm to pass the name of the XML file to the downstream apps in the parameter files.
    1. Also, lndcal no longer needs the **.metadata.txt file, so that is no longer produced by lndpm**

  * lndcal
    1. Modified lndcal to pull all the metadata information from the XML file instead of the **.metadata.txt file.
    1. Modified lndcal to read raw binary products vs. GeoTIFF products.
    1. Removed any recalibration or DN map related code.  The latest LPGS MTL files contain the gain/bias values and they are accurate, thus they will be used in the TOA reflectance computation.
    1. Brightness temperature values are now written in Kelvin vs. degrees Celsius.  The valid range is 150 to 350 Kelvin and the scaling factor has been modified to be 0.1 (vs. the previous 0.01 for degrees Celsius).  The fill value remains the same as previous products.**

  * lndsr
    1. Modified lndsr to pull all the metadata information from the XML file instead of the HDF file.
    1. Modified lndsr to read raw binary products vs. HDF products.
    1. Handled appropriate changes to deal with the brightness temp change to Kelvin vs. degrees C.
    1. Replaced a few “/ 10000” with “**0.0001” (or similar) in the cloud processing routine to speed up the math.
    1. Updated all the Makefiles to use install instead of cp.**

  * lndsrbm
    1. Modified lndsrbm to pull all the metadata information from the XML file instead of the HDF file.
    1. Modified lndsrbm to read raw binary products vs. HDF products.
    1. There is now no need to append band6 from lndth to lndsr, as it’s already part of the overall raw binary product.
    1. Handled appropriate changes to deal with the brightness temp change to Kelvin vs. degrees C.
    1. Rewrote all of the FORTRAN routines as it doesn’t play nicely with raw binary files, and to just clean things up and use C across the board.

  * lndapp
    1. Removed lndapp since it’s no longer used for appending band6 to the lndsr product in lndsrbm.