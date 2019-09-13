# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseStockMarketIndexHistoricalData Class
#'
#' @field historical_data 
#' @field index 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseStockMarketIndexHistoricalData <- R6::R6Class(
  'ApiResponseStockMarketIndexHistoricalData',
  public = list(
    `historical_data` = NULL,
    `index` = NULL,
    `next_page` = NULL,
    initialize = function(`historical_data`, `index`, `next_page`){
      if (!missing(`historical_data`)) {
        stopifnot(is.list(`historical_data`))
        lapply(`historical_data`, function(x) stopifnot(R6::is.R6(x)))
        self$`historical_data` <- `historical_data`
      }
      if (!missing(`index`)) {
        stopifnot(R6::is.R6(`index`))
        self$`index` <- `index`
      }
      if (!missing(`next_page`)) {
        stopifnot(is.character(`next_page`), length(`next_page`) == 1)
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseStockMarketIndexHistoricalDataObject <- list()
      if (!is.null(self$`historical_data`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`historical_data`) && ((length(self$`historical_data`) == 0) || ((length(self$`historical_data`) != 0 && R6::is.R6(self$`historical_data`[[1]]))))) {
          ApiResponseStockMarketIndexHistoricalDataObject[['historical_data']] <- lapply(self$`historical_data`, function(x) x$toJSON())
        } else {
          ApiResponseStockMarketIndexHistoricalDataObject[['historical_data']] <- jsonlite::toJSON(self$`historical_data`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`index`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`index`) && ((length(self$`index`) == 0) || ((length(self$`index`) != 0 && R6::is.R6(self$`index`[[1]]))))) {
          ApiResponseStockMarketIndexHistoricalDataObject[['index']] <- lapply(self$`index`, function(x) x$toJSON())
        } else {
          ApiResponseStockMarketIndexHistoricalDataObject[['index']] <- jsonlite::toJSON(self$`index`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseStockMarketIndexHistoricalDataObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseStockMarketIndexHistoricalDataObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseStockMarketIndexHistoricalDataObject
    },
    fromJSON = function(ApiResponseStockMarketIndexHistoricalDataJson) {
      ApiResponseStockMarketIndexHistoricalDataObject <- jsonlite::fromJSON(ApiResponseStockMarketIndexHistoricalDataJson)
      if (!is.null(ApiResponseStockMarketIndexHistoricalDataObject$`historical_data`)) {
        self$`historical_data` <- ApiResponseStockMarketIndexHistoricalDataObject$`historical_data`
      }
      if (!is.null(ApiResponseStockMarketIndexHistoricalDataObject$`index`)) {
        self$`index` <- ApiResponseStockMarketIndexHistoricalDataObject$`index`
      }
      if (!is.null(ApiResponseStockMarketIndexHistoricalDataObject$`next_page`)) {
        self$`next_page` <- ApiResponseStockMarketIndexHistoricalDataObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseStockMarketIndexHistoricalDataJson) {
      ApiResponseStockMarketIndexHistoricalDataObject <- jsonlite::fromJSON(ApiResponseStockMarketIndexHistoricalDataJson)
      self$`historical_data` <- lapply(ApiResponseStockMarketIndexHistoricalDataObject$`historical_data`, function(x) HistoricalData$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      StockMarketIndexSummaryObject <- StockMarketIndexSummary$new()
      self$`index` <- StockMarketIndexSummaryObject$fromJSON(jsonlite::toJSON(ApiResponseStockMarketIndexHistoricalDataObject$index, auto_unbox = TRUE))
      self$`next_page` <- ApiResponseStockMarketIndexHistoricalDataObject$`next_page`
    }
  )
)
