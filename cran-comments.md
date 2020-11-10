Updated all included drivers (see NEWS.md)

---

## Test environments
* Ubuntu 16.04.6 LTS (Travis), R 4.0.2
* Windows 7, R 4.0.3

## R CMD check results

There were no ERRORs or WARNINGs. There is one note because the java directory is 12.3Mb.

## Downstream dependencies

- DatabaseConnector depends on DatabaseConnectorJars, and has been tested with this new version. No problems were found.

- Eunomia depends on DatabaseConnector, and has been tested with this new version. No problems were found.