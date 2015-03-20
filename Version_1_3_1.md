## Ledaps Version 1.3.1 Release Notes ##
Release Date: August 30, 2013

### Downloads ###

**Ledaps source code - available via the [LEDAPS Google Projects Source](http://code.google.com/p/ledaps/source/checkout) link**

  * Non-members may check out a read-only working copy anonymously over HTTP.
  * svn checkout http://ledaps.googlecode.com/svn/tags/version_1.3.1 ledaps-read-only

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
#### Updates on August 30, 2013 - USGS EROS ####
  * lndcal
    1. Modified to validate that the output pixel values remain within the documented min/max TOA reflectance and brightness values.
    1. Modified to write the gain and bias values to the global metadata for the TOA reflectance and brightness temperature calculations.

  * lndsr
    1. Modified to copy the gain and bias values to the global metadata for the TOA reflectance and brightness temperature calculations.