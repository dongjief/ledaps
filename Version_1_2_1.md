## Ledaps Version 1.2.1 Release Notes ##
Release Date: April 22, 2013

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
#### Updates on April 22, 2013 - USGS EROS ####
  * lndcal
    1. Modified to output the UL and LR corner lat/longs.  The bounding coords are already being written, however for ascending scenes and scenes in the polar regions, the scenes are flipped upside down.  The bounding coords will be correct in North represents the northernmost latitude and South represents the southernmost latitude.  However, the UL corner in this case would be more south than the LR corner.  Comparing the UL and LR corners will allow the user to determine if the scene is flipped.

  * lndsr
    1. Modified to output the UL and LR corner lat/longs.  The bounding coords are already being written, however for ascending scenes and scenes in the polar regions, the scenes are flipped upside down.  The bounding coords will be correct in North represents the northernmost latitude and South represents the southernmost latitude.  However, the UL corner in this case would be more south than the LR corner. Comparing the UL and LR corners will allow the user to determine if the scene is flipped.
    1. Adjusted the sun azimuth for polar scenes which are ascending/flipped.  The sun azimuth is north up, but these scenes are south up.  So the azimuth needs to be adjusted by 180 degrees when applied to the scene.