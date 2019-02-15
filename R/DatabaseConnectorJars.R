# @file DatabaseConnectorJars.R
#
# Copyright 2019 Observational Health Data Sciences and Informatics
#
# This file is part of DatabaseConnectorJars
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#' DatabaseConnectorJars
#'
#' @docType package
#' @name DatabaseConnectorJars
NULL

.onLoad <- function(libname, pkgname) {
  rJava::.jinit()
  javaVersion <- rJava::.jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
  if(substr(javaVersion, 1L, 2L) == "1.") {
    javaVersionNumber <- as.numeric(paste0(strsplit(javaVersion, "[.]")[[1L]][1:2], collapse = "."))
    if(javaVersionNumber < 1.6) stop("Java 6 or higher is needed for this package")
  }
}
