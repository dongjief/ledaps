## Ledaps Version 1.3.0 Release Notes ##
Release Date: July 12, 2013

### Downloads ###

**Ledaps source code - available via the [LEDAPS Google Projects Source](http://code.google.com/p/ledaps/source/checkout) link**

**[Ledaps ancillaries](http://landsat.usgs.gov/espa/files/ledaps_anc_1980-2012.tar.gz)**

**Ledaps ancillary update scripts - found in the LedapsAncSrc directory of the LEDAPS download.**


### Installation ###
Same installation instructions as for Version 1.0.0

### Dependencies ###
Same dependencies as for Version 1.0.0

### Verification Data ###

### User Manual ###

### Product Guide ###

## Changes From Previous Version ##
#### Updates on July 12, 2013 - USGS EROS ####
  * lndpm
    1. Modified to replace C++ style comments with C style comments.

  * lndcal
    1. Modifed the HDFEOSVersion to be pulled from the HDF-EOS include files versus being hard-coded.  Also added an HDFVersion.

  * lndcsm
    1. Modifed the HDFEOSVersion to be pulled from the HDF-EOS include files versus being hard-coded.  Also added an HDFVersion.

  * lndsr
    1. Modified to replace C++ style comments with C style comments.
    1. Modifed the HDFEOSVersion to be pulled from the HDF-EOS include files versus being hard-coded.  Also added an HDFVersion.
    1. Fixed a bug for reading the ozone data for OMI.  Previously the min/max and delta latitude and longitude values were hard-coded, which created an issue as the resolution of the OMI platform was different from the pre-OMI platforms.  The application has been updated to read the min/max latitude and longitude values from the HDF file dimensions, and to calculate the deltas from these dimensional arrays instead of hard-coding the values.  The modification will support the upside down latitude values (see updates for ledapsAncSrc below) as well as the corrected latitude values.

  * lndsrbm
    1. Modified to replace C++ style comments with C style comments.

  * ledapsAncSrc
    1. Modified the update scripts to correctly write the latitude values for the ozone products.  The ozone values in the baseline text files are actually in the order from southern latitudes to northern latitudes.  The script has been converting the ozone data to be north to south on the output HDF files, but the latitudes were not being updated/flipped to correctly represent this.  Ultimately, for LEDAPS, this wasn't an issue but more of a cosmetic change to make sure the auxiliary files contained correct information for the latitude and longitude dimensions.