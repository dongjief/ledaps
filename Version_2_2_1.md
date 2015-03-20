## Ledaps Version 2.2.1 Release Notes ##
Release Date: Jan. 21, 2015

### Downloads ###
**Ledaps source code - available via the [LEDAPS Google Projects Source](http://code.google.com/p/ledaps/source/checkout) link**

  * Non-members may check out a read-only working copy anonymously over HTTP.
  * svn checkout http://ledaps.googlecode.com/svn/releases/version_2.2.1 ledaps-read-only

**Ledaps auxiliary files - available via the [LEDAPS auxiliaries](http://espa.cr.usgs.gov/validations/ledaps_auxiliary/ledaps_aux.1978-2014.tar.gz) link**

**Ledaps auxiliary update scripts - found in the LedapsAncSrc directory of the LEDAPS download.**

### Installation ###
Same installation instructions as for Version 2.2.0.

### Dependencies ###
Same dependencies as for Version 2.2.0.

### Data Preprocessing ###
This version of the LEDAPS application requires the input Landsat products to be in the ESPA internal file format.  After compiling the espa-common raw\_binary libraries and tools, the convert\_lpgs\_to\_espa command-line tool can be used to create the ESPA internal file format for input to the LEDAPS application.

### Data Postprocessing ###
After compiling the espa-common raw\_binary libraries and tools, the convert\_espa\_to\_gtif and convert\_espa\_to\_hdf command-line tools can be used to convert the ESPA internal file format to HDF or GeoTIFF.  Otherwise the data will remain in the ESPA internal file format, which includes each band in the ENVI file format (i.e. raw binary file with associated ENVI header file) and an overall XML metadata file.

### Verification Data ###

### User Manual ###

### Product Guide ###

## Changes From Previous Version ##
#### Updates on January 21, 2015 - USGS EROS ####
  * lndsr
    1. Modified the QA descriptions in the XML file which were reversed in previous versions, except for land/water which was correct.  The underlying image data values are accurate and remain the same. These XML descriptions are then populated to the HDF file, if the user specifies HDF for output.