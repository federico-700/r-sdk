# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DetrendedPriceOscillatorTechnicalValue Class
#'
#' @field date_time 
#' @field dpo 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DetrendedPriceOscillatorTechnicalValue <- R6::R6Class(
  'DetrendedPriceOscillatorTechnicalValue',
  public = list(
    `date_time` = NULL,
    `dpo` = NULL,
    initialize = function(`date_time`, `dpo`){
      if (!missing(`date_time`)) {
        stopifnot(is.character(`date_time`), length(`date_time`) == 1)
        stopifnot(R6::is.R6(`date_time`))
        self$`date_time` <- `date_time`
      }
      if (!missing(`dpo`)) {
        stopifnot(is.numeric(`dpo`), length(`dpo`) == 1)
        self$`dpo` <- `dpo`
      }
    },
    toJSON = function() {
      DetrendedPriceOscillatorTechnicalValueObject <- list()
      if (!is.null(self$`date_time`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`date_time`) && ((length(self$`date_time`) == 0) || ((length(self$`date_time`) != 0 && R6::is.R6(self$`date_time`[[1]]))))) {
          DetrendedPriceOscillatorTechnicalValueObject[['date_time']] <- lapply(self$`date_time`, function(x) x$toJSON())
        } else {
          DetrendedPriceOscillatorTechnicalValueObject[['date_time']] <- jsonlite::toJSON(self$`date_time`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`dpo`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`dpo`) && ((length(self$`dpo`) == 0) || ((length(self$`dpo`) != 0 && R6::is.R6(self$`dpo`[[1]]))))) {
          DetrendedPriceOscillatorTechnicalValueObject[['dpo']] <- lapply(self$`dpo`, function(x) x$toJSON())
        } else {
          DetrendedPriceOscillatorTechnicalValueObject[['dpo']] <- jsonlite::toJSON(self$`dpo`, auto_unbox = TRUE)
        }
      }

      DetrendedPriceOscillatorTechnicalValueObject
    },
    fromJSON = function(DetrendedPriceOscillatorTechnicalValueJson) {
      DetrendedPriceOscillatorTechnicalValueObject <- jsonlite::fromJSON(DetrendedPriceOscillatorTechnicalValueJson)
      if (!is.null(DetrendedPriceOscillatorTechnicalValueObject$`date_time`)) {
        self$`date_time` <- DetrendedPriceOscillatorTechnicalValueObject$`date_time`
      }
      if (!is.null(DetrendedPriceOscillatorTechnicalValueObject$`dpo`)) {
        self$`dpo` <- DetrendedPriceOscillatorTechnicalValueObject$`dpo`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(DetrendedPriceOscillatorTechnicalValueJson) {
      DetrendedPriceOscillatorTechnicalValueObject <- jsonlite::fromJSON(DetrendedPriceOscillatorTechnicalValueJson)
      POSIXltObject <- POSIXlt$new()
      self$`date_time` <- POSIXltObject$fromJSON(jsonlite::toJSON(DetrendedPriceOscillatorTechnicalValueObject$date_time, auto_unbox = TRUE))
      self$`dpo` <- DetrendedPriceOscillatorTechnicalValueObject$`dpo`
    }
  )
)
