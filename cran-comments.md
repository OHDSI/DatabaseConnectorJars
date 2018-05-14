Referencing our e-mail discussion with title "Re: How to submit 'data packages' to CRAN?"

Indeed, we expect the jar files in this package to stay fairly constant over time, and not require frequent updates. 

Redistributing these jar libraries without modifications would be consistent with their respective licenses.

Added single quotes to 'DatabaseConnector' in Title and Description.

---

## Test environments
* Ubuntu 14.04.5 LTS (Travis), R 3.4.4
* Windows 7, R 3.4.4

## R CMD check results

There were no ERRORs or WARNINGs. There is one note because the java directory is 15.2Mb.

## Downstream dependencies

There are currently no downstream dependencies. When this package is accepted in CRAN, we will submit the DatabaseConnector package which requires this package.