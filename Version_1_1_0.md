## Ledaps Version 1.1.0 Release Notes ##
Release Date: November 16, 2012

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
#### Updates on November 16, 2012 - USGS EROS ####
  * lndpm
    1. Modified to DIE vs. WARN if the ancillary products (REANALYSIS, EP/TOMS, or DEM) do not exist.
    1. Modified the metadata filename to be .metadata.txt vs. .carbon\_met.txt.

  * lndsr
    1. Modified to make sure no other QA bits are set on if the current pixel is a fill pixel.

  * lndsrbm
    1. Modified to use the fill\_QA band to determin if the current pixel is fill.
    1. Cloud-related QA pixels are not set to on if the current pixel is fill.
    1. Added error checking to the file write/close tasks.
    1. Use snfindex from the HDF libraries to find the index of the specified SDS rather than relying on hard-coded SDS index values.

  * bin
    1. Added a do\_ledaps.py script for better scripting control.

  * other
    1. Added the GCMDEM.hdf file and the GOLD/GNEW ancillary files to the [Downloads](http://code.google.com/p/ledaps/downloads/list) link.