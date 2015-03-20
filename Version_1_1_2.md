## Ledaps Version 1.1.2 Release Notes ##
Release Date: December 31, 2012

### Downloads ###

**Ledaps source code - available via the [LEDAPS Google Projects Source](http://code.google.com/p/ledaps/source/checkout) link**

**[Ledaps ancillaries](http://landsat.usgs.gov/espa/files/ledaps_anc_1980-2012.tar.gz)**

**Ledaps ancillary update scripts**


### Installation ###
Same installation instructions as for Version 1.0.0

### Dependencies ###
Same dependencies as for Version 1.0.0

### Verification Data ###

### User Manual ###

### Product Guide ###

## Changes From Previous Version ##
#### Updates on December 31, 2012 - USGS EROS ####
  * lndpm
    1. Added META\_FILE field to the lndsr parameter file which provides the filename of the L1G/L1T metadata file, containing valuable information for some of the data users.

  * lndsr
    1. Modified the data fields in the output metadata to be one-based so they align with the metadata fields appended in lndapp.
    1. Modified the fill\_QA band to flag pixels as fill if the pixel is fill in any of the reflective bands and not just band 1 as was the previous implementation.
    1. Added META\_FILE field to the lndsr parameter file.  This field is read and used for the output lndsr metadata.
    1. Added a global metadata tag called LPGSMetadataFile to keep track of the input LPGS metadata file used for processing the L1G/L1T product.  This file contains information that will be of value to the downstream user.
    1. Modified the 6s processing to utilize descriptive filenames for the 6s command and 6s output files.  These files are no longer deleted but instead are left for the user to review/utilize, if desired.  These files are written to the local directory instead of /tmp.

  * lndapp
    1. Added band6\_fill\_QA as an additional quality band to be output in the surface reflectance product.

  * bin
    1. Modified do\_ledaps.py to allow the user to call this script from any directory vs. the directory where the MTL file resides.  The script will parse the directory from the MTL file and then change to that directory to process the data.

  * ledapsAncSrc
    1. Modified the update scripts to limit the number of retries to 5 in the case the ftp site is not available or due to a connection problem.