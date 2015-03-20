## Ledaps Version 1.1.1 Release Notes ##
Release Date: November 30, 2012

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
#### Updates on November 30, 2012 - USGS EROS ####
  * lndpm
    1. Corrected spelling of SATTELITE to SATELLITE in the output metadata.txt file.

  * lndcal
    1. Corrected spelling of SATTELITE to SATELLITE in the output metadata.txt file.

  * lndsr
    1. Fixed a bug in cld\_diags.std\_b7\_clear to be based on the sqrt of band 7 and not the band 6 temperature.

  * bin
    1. Modified do\_ledaps.py to be a class and to allow an -l or --logfile option to write the output to a log file.
    1. Added a findAncillary method to the Ledaps class to determine if the required EP/TOMS and NCEP REANALYSIS ancillary files exist for the specified year (all days) or year/DOY.

  * ledapsAncSrc
    1. Added source code and scripts to download and process the NCEP and EP/TOMS ozone ancillary products.