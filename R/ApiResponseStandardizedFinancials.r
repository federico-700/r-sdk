# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseStandardizedFinancials Class
#'
#' @field standardized_financials 
#' @field fundamental 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseStandardizedFinancials <- R6::R6Class(
  'ApiResponseStandardizedFinancials',
  public = list(
    `standardized_financials` = NULL,
    `fundamental` = NULL,
    `next_page` = NULL,
    initialize = function(`standardized_financials`, `fundamental`, `next_page`){
      if (!missing(`standardized_financials`)) {
        stopifnot(is.list(`standardized_financials`))
        lapply(`standardized_financials`, function(x) stopifnot(R6::is.R6(x)))
        self$`standardized_financials` <- `standardized_financials`
      }
      if (!missing(`fundamental`)) {
        stopifnot(R6::is.R6(`fundamental`))
        self$`fundamental` <- `fundamental`
      }
      if (!missing(`next_page`)) {
        stopifnot(is.character(`next_page`), length(`next_page`) == 1)
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseStandardizedFinancialsObject <- list()
      if (!is.null(self$`standardized_financials`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`standardized_financials`) && ((length(self$`standardized_financials`) == 0) || ((length(self$`standardized_financials`) != 0 && R6::is.R6(self$`standardized_financials`[[1]]))))) {
          ApiResponseStandardizedFinancialsObject[['standardized_financials']] <- lapply(self$`standardized_financials`, function(x) x$toJSON())
        } else {
          ApiResponseStandardizedFinancialsObject[['standardized_financials']] <- jsonlite::toJSON(self$`standardized_financials`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`fundamental`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`fundamental`) && ((length(self$`fundamental`) == 0) || ((length(self$`fundamental`) != 0 && R6::is.R6(self$`fundamental`[[1]]))))) {
          ApiResponseStandardizedFinancialsObject[['fundamental']] <- lapply(self$`fundamental`, function(x) x$toJSON())
        } else {
          ApiResponseStandardizedFinancialsObject[['fundamental']] <- jsonlite::toJSON(self$`fundamental`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseStandardizedFinancialsObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseStandardizedFinancialsObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseStandardizedFinancialsObject
    },
    fromJSON = function(ApiResponseStandardizedFinancialsJson) {
      ApiResponseStandardizedFinancialsObject <- jsonlite::fromJSON(ApiResponseStandardizedFinancialsJson)
      if (!is.null(ApiResponseStandardizedFinancialsObject$`standardized_financials`)) {
        self$`standardized_financials` <- ApiResponseStandardizedFinancialsObject$`standardized_financials`
      }
      if (!is.null(ApiResponseStandardizedFinancialsObject$`fundamental`)) {
        self$`fundamental` <- ApiResponseStandardizedFinancialsObject$`fundamental`
      }
      if (!is.null(ApiResponseStandardizedFinancialsObject$`next_page`)) {
        self$`next_page` <- ApiResponseStandardizedFinancialsObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseStandardizedFinancialsJson) {
      ApiResponseStandardizedFinancialsObject <- jsonlite::fromJSON(ApiResponseStandardizedFinancialsJson)
      self$`standardized_financials` <- lapply(ApiResponseStandardizedFinancialsObject$`standardized_financials`, function(x) StandardizedFinancial$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      FundamentalObject <- Fundamental$new()
      self$`fundamental` <- FundamentalObject$fromJSON(jsonlite::toJSON(ApiResponseStandardizedFinancialsObject$fundamental, auto_unbox = TRUE))
      self$`next_page` <- ApiResponseStandardizedFinancialsObject$`next_page`
    }
  )
)