This project is hosted by the US Geological Survey (USGS) Earth Resources Observation and Science (EROS) Land Satellite Data Systems (LSDS) Science Research and Development (LSRD) Project.

Landsat Ecosystem Disturbance Adaptive Processing System (LEDAPS) processes Landsat data from L1B to surface reflectance using atmospheric correction routines similar to that developed for the MODIS instrument. This package includes three basic modules (plus a parameter parser and an internal cloud detection program) to convert Landsat data from digital numbers (DN) to surface reflectance. The three steps include:

a) Calibrate digital number (DN) to top-of-atmosphere (TOA) reflectance.
b) Correct to surface reflectance from TOA reflectance and ancillary data sets.
c) Detect cloud pixels based on the surface reflectance.

Auxiliary NCEP water vapor data and TOMS ozone data are required for processing the surface reflectance products (lndsr). These data products can be downloaded from ESPA. The current file contains data from 1989-2014. For more information on the auxiliary products used by LEDAPS, please see the Wiki.

NCEP Reanalysis data provided by the NOAA/OAR/ESRL PSD, Boulder, Colorado, USA, from their Web site at http://www.esrl.noaa.gov/psd.  The ozone data products can be obtained from NASA GSFC at [ftp://toms.gsfc.nasa.gov/pub/omi/data/ozone](ftp://toms.gsfc.nasa.gov/pub/omi/data/ozone).  These annual NCEP and ozone products need to be further processed and converted into daily HDF files.  Software exists in the ledapsAncSrc directory for this repackaging.

When downloading source code please pull from latest tagged release (see the Wiki for the release versions).  The trunk is used as an active repository and isn't stable or guaranteed to work for external users.

For questions regarding this source code, please contact the Landsat Contact Us page and specify USGS CDR/ECV in the "Regarding" section.
https://landsat.usgs.gov/contactus.php