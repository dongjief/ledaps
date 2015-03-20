## Ledaps Version 1.2.0 Release Notes ##
Release Date: March 20, 2013

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
#### Updates on March 20, 2013 - USGS EROS ####
  * lndpm
    1. Modified to utilize a single Version value version supporting two version tags with the same value.  This new tag will be LEDAPSVersion.  PGEVersion and ProcessVersion are no longer used.
    1. Modified LPGS and NLAPS WO sections to read the scene center time from the MTL or WO file and pass that time along as the ACQUISITION\_TIME in the .metadata.txt file.  Previously a time of 00:00:00.000Z was used instead of the actual scene time.  This means that the lndsr and lndsrbm applications will have the actual scene time for processing versus approximating the scene time.  The actual scene time should also be posted in the lndcal.hdf, lndth.hdf, and lndsr.hdf files with this change.  The scene time is used to obtain the appropriate atmospheric correction information from the various auxiliary files.  <b>This modification will produce differences in the output surface reflectance values from previously processed scenes.</b>
    1. Modified to support the processing of polar stereographic products (polar regions) for LPGS and NLAPS WO products.

  * lndcal
    1. Modified to utilize a single Version tag versus the current practice of having two tags with the same version number.  LEDAPSVersion will be used.  PGEVersion and ProcessVersion are no longer used.
    1. Modified the application to calculate and write the bounding coordinates as output metadata to the lndcal.hdf file, similar to the metadata in lndsr.hdf.
    1. Modified to read the acquisition time from the input metadata file and pass the acquisition time along for processing.  If the date string is too long, then the last few digits from the seconds (acquisition time is in DMS) will be removed.
    1. Modified to support the processing of polar stereographic products, including reading the projection parameters from the input metadata file and writing those to the lndcal.hdf and lndth.hdf metadata.

  * lndsr
    1. Fixed the issue with the sun angles having an additional 0.5 incorrectly added to their value (leftover from integer rounding).
    1. Modified to utilize a single Version tag versus the current practice of having two tags with the same version number.  LEDAPSVersion will be used.  PGEVersion and ProcessVersion are no longer used.
    1. Modified to support the processing of polar stereographic products, including reading the projection parameters from the lndcal.hdf metadata.
    1. Removed NumberOfBands and BandNumbers fields from the lndsr HDF metadata.  These fields only apply to the surface reflectance bands themselves and don't fully represent the final output bands for the lndsr product.  These fields still remain in the lndcal.hdf and lndth.hdf products.
    1. Acquisition time is read from the lndcal.hdf metadata and used if available versus estimating the scene time.

  * lndsrbm
    1. Modified to support the processing of polar stereographic products, including reading the projection parameters from the lndsr.hdf metadata.
    1. Acquisition time is read from the lndsr.hdf metadata and used if available versus estimating the scene time.
    1. Cleaned up some of the print statements to make it more clear as to the information being printed.
    1. Added an internal/temporary file called geo\_xy.ERROR to flag and catch errors in the geo2xy (lat/long to projection x/y) and xy2geo (projection x/y to lat/long) processing.