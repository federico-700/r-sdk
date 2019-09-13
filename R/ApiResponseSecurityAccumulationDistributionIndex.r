# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseSecurityAccumulationDistributionIndex Class
#'
#' @field technicals 
#' @field indicator 
#' @field security 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseSecurityAccumulationDistributionIndex <- R6::R6Class(
  'ApiResponseSecurityAccumulationDistributionIndex',
  public = list(
    `technicals` = NULL,
    `indicator` = NULL,
    `security` = NULL,
    `next_page` = NULL,
    initialize = function(`technicals`, `indicator`, `security`, `next_page`){
      if (!missing(`technicals`)) {
        stopifnot(is.list(`technicals`))
        lapply(`technicals`, function(x) stopifnot(R6::is.R6(x)))
        self$`technicals` <- `technicals`
      }
      if (!missing(`indicator`)) {
        stopifnot(R6::is.R6(`indicator`))
        self$`indicator` <- `indicator`
      }
      if (!missing(`security`)) {
        stopifnot(R6::is.R6(`security`))
        self$`security` <- `security`
      }
      if (!missing(`next_page`)) {
        stopifnot(is.character(`next_page`), length(`next_page`) == 1)
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseSecurityAccumulationDistributionIndexObject <- list()
      if (!is.null(self$`technicals`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`technicals`) && ((length(self$`technicals`) == 0) || ((length(self$`technicals`) != 0 && R6::is.R6(self$`technicals`[[1]]))))) {
          ApiResponseSecurityAccumulationDistributionIndexObject[['technicals']] <- lapply(self$`technicals`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityAccumulationDistributionIndexObject[['technicals']] <- jsonlite::toJSON(self$`technicals`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`indicator`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`indicator`) && ((length(self$`indicator`) == 0) || ((length(self$`indicator`) != 0 && R6::is.R6(self$`indicator`[[1]]))))) {
          ApiResponseSecurityAccumulationDistributionIndexObject[['indicator']] <- lapply(self$`indicator`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityAccumulationDistributionIndexObject[['indicator']] <- jsonlite::toJSON(self$`indicator`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`security`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`security`) && ((length(self$`security`) == 0) || ((length(self$`security`) != 0 && R6::is.R6(self$`security`[[1]]))))) {
          ApiResponseSecurityAccumulationDistributionIndexObject[['security']] <- lapply(self$`security`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityAccumulationDistributionIndexObject[['security']] <- jsonlite::toJSON(self$`security`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseSecurityAccumulationDistributionIndexObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityAccumulationDistributionIndexObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseSecurityAccumulationDistributionIndexObject
    },
    fromJSON = function(ApiResponseSecurityAccumulationDistributionIndexJson) {
      ApiResponseSecurityAccumulationDistributionIndexObject <- jsonlite::fromJSON(ApiResponseSecurityAccumulationDistributionIndexJson)
      if (!is.null(ApiResponseSecurityAccumulationDistributionIndexObject$`technicals`)) {
        self$`technicals` <- ApiResponseSecurityAccumulationDistributionIndexObject$`technicals`
      }
      if (!is.null(ApiResponseSecurityAccumulationDistributionIndexObject$`indicator`)) {
        self$`indicator` <- ApiResponseSecurityAccumulationDistributionIndexObject$`indicator`
      }
      if (!is.null(ApiResponseSecurityAccumulationDistributionIndexObject$`security`)) {
        self$`security` <- ApiResponseSecurityAccumulationDistributionIndexObject$`security`
      }
      if (!is.null(ApiResponseSecurityAccumulationDistributionIndexObject$`next_page`)) {
        self$`next_page` <- ApiResponseSecurityAccumulationDistributionIndexObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseSecurityAccumulationDistributionIndexJson) {
      ApiResponseSecurityAccumulationDistributionIndexObject <- jsonlite::fromJSON(ApiResponseSecurityAccumulationDistributionIndexJson)
      self$`technicals` <- lapply(ApiResponseSecurityAccumulationDistributionIndexObject$`technicals`, function(x) AccumulationDistributionIndexTechnicalValue$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      TechnicalIndicatorObject <- TechnicalIndicator$new()
      self$`indicator` <- TechnicalIndicatorObject$fromJSON(jsonlite::toJSON(ApiResponseSecurityAccumulationDistributionIndexObject$indicator, auto_unbox = TRUE))
      SecuritySummaryObject <- SecuritySummary$new()
      self$`security` <- SecuritySummaryObject$fromJSON(jsonlite::toJSON(ApiResponseSecurityAccumulationDistributionIndexObject$security, auto_unbox = TRUE))
      self$`next_page` <- ApiResponseSecurityAccumulationDistributionIndexObject$`next_page`
    }
  )
)
