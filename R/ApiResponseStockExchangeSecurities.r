# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseStockExchangeSecurities Class
#'
#' @field securities 
#' @field stock_exchange 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseStockExchangeSecurities <- R6::R6Class(
  'ApiResponseStockExchangeSecurities',
  public = list(
    `securities` = NULL,
    `stock_exchange` = NULL,
    `next_page` = NULL,
    initialize = function(`securities`, `stock_exchange`, `next_page`){
      if (!missing(`securities`)) {
        stopifnot(is.list(`securities`))
        lapply(`securities`, function(x) stopifnot(R6::is.R6(x)))
        self$`securities` <- `securities`
      }
      if (!missing(`stock_exchange`)) {
        stopifnot(R6::is.R6(`stock_exchange`))
        self$`stock_exchange` <- `stock_exchange`
      }
      if (!missing(`next_page`)) {
        stopifnot(is.character(`next_page`), length(`next_page`) == 1)
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseStockExchangeSecuritiesObject <- list()
      if (!is.null(self$`securities`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`securities`) && ((length(self$`securities`) == 0) || ((length(self$`securities`) != 0 && R6::is.R6(self$`securities`[[1]]))))) {
          ApiResponseStockExchangeSecuritiesObject[['securities']] <- lapply(self$`securities`, function(x) x$toJSON())
        } else {
          ApiResponseStockExchangeSecuritiesObject[['securities']] <- jsonlite::toJSON(self$`securities`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`stock_exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`stock_exchange`) && ((length(self$`stock_exchange`) == 0) || ((length(self$`stock_exchange`) != 0 && R6::is.R6(self$`stock_exchange`[[1]]))))) {
          ApiResponseStockExchangeSecuritiesObject[['stock_exchange']] <- lapply(self$`stock_exchange`, function(x) x$toJSON())
        } else {
          ApiResponseStockExchangeSecuritiesObject[['stock_exchange']] <- jsonlite::toJSON(self$`stock_exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseStockExchangeSecuritiesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseStockExchangeSecuritiesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseStockExchangeSecuritiesObject
    },
    fromJSON = function(ApiResponseStockExchangeSecuritiesJson) {
      ApiResponseStockExchangeSecuritiesObject <- jsonlite::fromJSON(ApiResponseStockExchangeSecuritiesJson)
      if (!is.null(ApiResponseStockExchangeSecuritiesObject$`securities`)) {
        self$`securities` <- ApiResponseStockExchangeSecuritiesObject$`securities`
      }
      if (!is.null(ApiResponseStockExchangeSecuritiesObject$`stock_exchange`)) {
        self$`stock_exchange` <- ApiResponseStockExchangeSecuritiesObject$`stock_exchange`
      }
      if (!is.null(ApiResponseStockExchangeSecuritiesObject$`next_page`)) {
        self$`next_page` <- ApiResponseStockExchangeSecuritiesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseStockExchangeSecuritiesJson) {
      ApiResponseStockExchangeSecuritiesObject <- jsonlite::fromJSON(ApiResponseStockExchangeSecuritiesJson)
      self$`securities` <- lapply(ApiResponseStockExchangeSecuritiesObject$`securities`, function(x) SecuritySummary$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      StockExchangeObject <- StockExchange$new()
      self$`stock_exchange` <- StockExchangeObject$fromJSON(jsonlite::toJSON(ApiResponseStockExchangeSecuritiesObject$stock_exchange, auto_unbox = TRUE))
      self$`next_page` <- ApiResponseStockExchangeSecuritiesObject$`next_page`
    }
  )
)
