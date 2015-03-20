## Ledaps Version 2.1.0 Release Notes ##
Release Date: Oct. 31, 2014

### Downloads ###

**Ledaps source code - available via the [LEDAPS Google Projects Source](http://code.google.com/p/ledaps/source/checkout) link**

  * Non-members may check out a read-only working copy anonymously over HTTP.
  * svn checkout http://ledaps.googlecode.com/svn/releases/version_2.1.0 ledaps-read-only

**Ledaps auxiliary files - available via the [LEDAPS auxiliaries](http://espa.cr.usgs.gov/validations/ledaps_auxiliary/ledaps_aux.1978-2014.tar.gz) link**

**Ledaps auxiliary update scripts - found in the LedapsAncSrc directory of the LEDAPS download.**

### Installation ###
  1. Install dependent libraries - HDF-EOS GCTP, HDF4, HDF-EOS2, TIFF, GeoTIFF, HDF5, netCDF4.
    * It's recommended to build the HDF4 library using --disable-netcdf.
    * It's recommended to follow the netCDF4 build instructions for building HDF5 libraries.
  1. Set up environment variables.  Can create an environment shell file or add the following to your bash shell.  For C shell, use 'setenv VAR "directory"'.  Note: If the HDF library was configured and built with szip support, then the user will also need to add an environment variable for SZIP include (SZIPINC) and library (SZIPLIB) files.
```
    export HDFEOS_GCTPINC="path_to_HDF-EOS_GCTP_include_files"
    export HDFEOS_GCTPLIB="path_to_HDF-EOS_GCTP_libraries"
    export TIFFINC="path_to_TIFF_include_files"
    export TIFFLIB="path_to_TIFF_libraries"
    export GEOTIFF_INC="path_to_GEOTIFF_include_files"
    export GEOTIFF_LIB="path_to_GEOTIFF_libraries"
    export HDFINC="path_to_HDF4_include_files"
    export HDFLIB="path_to_HDF4_libraries"
    export HDFEOS_INC="path_to_HDFEOS_include_files"
    export HDFEOS_LIB="path_to_HDFEOS_libraries"
    export HDF5INC="path_to_HDF5_include_files"
    export HDF5LIB="path_to_HDF5_libraries"
    export NCDF4INC="path_to_NetCDF4_include_files"
    export NCDF4LIB="path_to_NetCDF4_libraries"
    export JPEGINC="path_to_JPEG_include_files"
    export JPEGLIB="path_to_JPEG_libraries"
    export CURLINC="path_to_CURL_include_files"
    export CURLLIB="path_to_CURL_libraries"
    export IDNINC="path_to_LIBIDN_include_files"
    export IDNLIB="path_to_LIBIDN_libraries"
    export ESPAINC="path_to_ESPA-COMMON_raw_binary_include_files"
    export ESPALIB="path_to_ESPA-COMMON_raw_binary_libraries"
    export BIN="path_to_directory_for_LEDAPS_binaries"
```
  1. Install ESPA COMMON raw binary libraries and tools. Checkout the latest release from https://code.google.com/p/espa-common/source/checkout.  Goto the src/raw\_binary directory and build the source code there. ESPAINC and ESPALIB above refer to the include and lib directories created by building this source code using make followed by make install. The ESPA raw binary conversion tools will be located in the $BIN directory.
  1. Install baseline auxiliary files.
**Please note that the original ozone data has data gaps in 1978 (actual data starts on Nov. 1, 1978), 1979 (partial), 1982 (partial - 1 day), 1993 (partial), 1994 (partial), 1995 (complete gap), 1996 (partial), 1997 (partial), 1998 (missing DOY 347+), 1999 (missing DOY 001), 2002 (partial - 9 days), 2003 (partial - 6 days), 2006 (partial - 3 days), 2008 (missing Sept. 28/29), ...  You will want to run the updatetoms script (described later) on this baseline set of data.  The NASA LEDAPS group has filled some of these larger data gaps by interpolating the missing data. If the ozone data is missing from the NASA ftp site, then the updatetoms script will not try to update that auxiliary file.
```
    tar -xvzf ledaps_aux.1978-2014.tar.gz
```
  1. Checkout (from Google ledaps project) and install source files
```
cd ledapsSrc/src
make
make install
```
```
cd ledapsAncSrc/src
make
make install
```
This will create a list of executable files under $BIN (tested in gcc and gfortran compiler)**


**Note that if the HDF library was configured and built with szip support, then the user will also need to add "-L$(SZIPLIB) -lsz" at the end of the library defines in the Makefiles.  The user should also add "-I$(SZIPINC)" to the include directory defines in the Makefile.**

  1. Setup environment
```
export LEDAPS_AUX_DIR="directory_saved_auxiliary_files"
(or in c shell use 
setenv LEDAPS_AUX_DIR "directory_saved_auxiliary_files")
```

  1. Update the auxiliary files
Run updatencep.py and updatetoms.py using the --today or --quarterly options, depending on whether or not your auxiliary data files are up-to-date.  You might consider adding these two updates with the --today option to a nightly cron job to keep your auxiliary files up-to-date.

  1. Test - Download Landsat GeoTIFF files and then run the following commands separately
```
convert_lpgs_to_espa --mtl <Landsat_meta_file> --xml <output_espa_xml_file>
lndpm <espa_xml_file>
lndcal <lndcal_input_text>
lndsr <lndsr_input_text>
lndsrbm.ksh <lndsr_input_text>
```
Or simply run the do\_ledaps Python script in the LEDAPS bin directory to run the applications (after running the convert\_lpgs\_to\_espa conversion).  Use do\_ledaps.py --help for the usage information.  This script requires that your LEDAPS binaries are in your $PATH or that you have a $BIN environment variable set up to point to the LEDAPS bin directory.
```
do_ledaps.py --xml <ESPA_XML_file>
```
  1. Check output
```
*_toa_*.img: top-of-atmosphere (TOA) reflectance in raw binary format
*_toa_band6*.img: thermal brightness temperature in raw binary format
*_sr_*.img: surface reflectance data and associated QA in raw binary format
(each file is also associated with a ENVI header file that contains geographic information)
```

### Dependencies ###
  * GCTP libraries
  * TIFF libraries
  * GeoTIFF libraries
  * HDF4 libraries
  * HDF-EOS2 libraries
  * HDF5 libraries
  * netCDF4 libraries
  * Auxiliary data products
    1. NCEP water vapor data
    1. TOMS ozone data
    1. CMGDEM HDF file

### Verification Data ###

### User Manual ###

### Product Guide ###


## Changes From Previous Version ##
#### Updates on October 29, 2014 - USGS EROS ####
  * Overall
    1. Switched the ANC\_PATH environment variable name to LEDAPS\_AUX\_DIR to be more consistent with the Landsat 8 auxiliary pathname and to better identify the environment variable points to the LEDAPS auxiliary data.

  * lndsr
    1. Updated to modify the interpolation of the cloud diagnostics, particularly in areas of heavy cloud cover where the auxiliary 2m air temp values are needed/utilized to assist in the cloud and snow cover assessment. In these areas, the average band6 temperature is not available due to the lack of clear pixels from heavy cloud cover. The fix involved interpolating the 2m air temp independently of the band6 temperature, so that the 2m air temp is always interpolated even when there aren’t any clear band6 values.
    1. Updated to work with the new NCEP variables as floating point values without scale factors and offsets.
    1. Updated 6S code to do error checking in the event that a file is not available to be opened/created. The error is caught and a message is printed. Updated lndsr code to use the bash shell instead of the sh shell to invoke the 6s command file. These mods were made in an attempt to prevent the temporary file error which occurs intermittently in ESPA.

  * lndsrbm
    1. Updated to work with the new NCEP variables as floating point values without scale factors and offsets.

  * bin
    1. Updated do\_ledaps.py to support --process\_sr “True”/”False” just like the do\_l8\_sr.py. This allows us to not run SR processing if it is not needed. If --process\_sr is not provided on the command line, then it will be defaulted to “True” and SR processing will be performed.

  * ledapsAncSrc
    1. Modified the NCEP repackage executable in the ledapsAncSrc to process the newly released NCEP products.  The NCEP products are in netCDF4 vs. netCDF3.  The variables are now written as floating point vs. int16, and no longer have a scale factor or offset.