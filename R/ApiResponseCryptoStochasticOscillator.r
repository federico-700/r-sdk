# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCryptoStochasticOscillator Class
#'
#' @field technicals 
#' @field indicator 
#' @field pair 
#' @field exchange 
#' @field timeframe 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseCryptoStochasticOscillator <- R6::R6Class(
  'ApiResponseCryptoStochasticOscillator',
  public = list(
    `technicals` = NULL,
    `indicator` = NULL,
    `pair` = NULL,
    `exchange` = NULL,
    `timeframe` = NULL,
    `next_page` = NULL,
    initialize = function(`technicals`, `indicator`, `pair`, `exchange`, `timeframe`, `next_page`){
      if (!missing(`technicals`)) {
        stopifnot(is.list(`technicals`))
        lapply(`technicals`, function(x) stopifnot(R6::is.R6(x)))
        self$`technicals` <- `technicals`
      }
      if (!missing(`indicator`)) {
        stopifnot(R6::is.R6(`indicator`))
        self$`indicator` <- `indicator`
      }
      if (!missing(`pair`)) {
        stopifnot(R6::is.R6(`pair`))
        self$`pair` <- `pair`
      }
      if (!missing(`exchange`)) {
        stopifnot(R6::is.R6(`exchange`))
        self$`exchange` <- `exchange`
      }
      if (!missing(`timeframe`)) {
        stopifnot(is.character(`timeframe`), length(`timeframe`) == 1)
        self$`timeframe` <- `timeframe`
      }
      if (!missing(`next_page`)) {
        stopifnot(is.character(`next_page`), length(`next_page`) == 1)
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseCryptoStochasticOscillatorObject <- list()
      if (!is.null(self$`technicals`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`technicals`) && ((length(self$`technicals`) == 0) || ((length(self$`technicals`) != 0 && R6::is.R6(self$`technicals`[[1]]))))) {
          ApiResponseCryptoStochasticOscillatorObject[['technicals']] <- lapply(self$`technicals`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoStochasticOscillatorObject[['technicals']] <- jsonlite::toJSON(self$`technicals`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`indicator`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`indicator`) && ((length(self$`indicator`) == 0) || ((length(self$`indicator`) != 0 && R6::is.R6(self$`indicator`[[1]]))))) {
          ApiResponseCryptoStochasticOscillatorObject[['indicator']] <- lapply(self$`indicator`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoStochasticOscillatorObject[['indicator']] <- jsonlite::toJSON(self$`indicator`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseCryptoStochasticOscillatorObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoStochasticOscillatorObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`exchange`) && ((length(self$`exchange`) == 0) || ((length(self$`exchange`) != 0 && R6::is.R6(self$`exchange`[[1]]))))) {
          ApiResponseCryptoStochasticOscillatorObject[['exchange']] <- lapply(self$`exchange`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoStochasticOscillatorObject[['exchange']] <- jsonlite::toJSON(self$`exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`timeframe`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`timeframe`) && ((length(self$`timeframe`) == 0) || ((length(self$`timeframe`) != 0 && R6::is.R6(self$`timeframe`[[1]]))))) {
          ApiResponseCryptoStochasticOscillatorObject[['timeframe']] <- lapply(self$`timeframe`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoStochasticOscillatorObject[['timeframe']] <- jsonlite::toJSON(self$`timeframe`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseCryptoStochasticOscillatorObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoStochasticOscillatorObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseCryptoStochasticOscillatorObject
    },
    fromJSON = function(ApiResponseCryptoStochasticOscillatorJson) {
      ApiResponseCryptoStochasticOscillatorObject <- jsonlite::fromJSON(ApiResponseCryptoStochasticOscillatorJson)
      if (!is.null(ApiResponseCryptoStochasticOscillatorObject$`technicals`)) {
        self$`technicals` <- ApiResponseCryptoStochasticOscillatorObject$`technicals`
      }
      if (!is.null(ApiResponseCryptoStochasticOscillatorObject$`indicator`)) {
        self$`indicator` <- ApiResponseCryptoStochasticOscillatorObject$`indicator`
      }
      if (!is.null(ApiResponseCryptoStochasticOscillatorObject$`pair`)) {
        self$`pair` <- ApiResponseCryptoStochasticOscillatorObject$`pair`
      }
      if (!is.null(ApiResponseCryptoStochasticOscillatorObject$`exchange`)) {
        self$`exchange` <- ApiResponseCryptoStochasticOscillatorObject$`exchange`
      }
      if (!is.null(ApiResponseCryptoStochasticOscillatorObject$`timeframe`)) {
        self$`timeframe` <- ApiResponseCryptoStochasticOscillatorObject$`timeframe`
      }
      if (!is.null(ApiResponseCryptoStochasticOscillatorObject$`next_page`)) {
        self$`next_page` <- ApiResponseCryptoStochasticOscillatorObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCryptoStochasticOscillatorJson) {
      ApiResponseCryptoStochasticOscillatorObject <- jsonlite::fromJSON(ApiResponseCryptoStochasticOscillatorJson)
      self$`technicals` <- lapply(ApiResponseCryptoStochasticOscillatorObject$`technicals`, function(x) StochasticOscillatorTechnicalValue$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      TechnicalIndicatorObject <- TechnicalIndicator$new()
      self$`indicator` <- TechnicalIndicatorObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoStochasticOscillatorObject$indicator, auto_unbox = TRUE))
      CryptoPairSummaryObject <- CryptoPairSummary$new()
      self$`pair` <- CryptoPairSummaryObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoStochasticOscillatorObject$pair, auto_unbox = TRUE))
      CryptoExchangeSummaryObject <- CryptoExchangeSummary$new()
      self$`exchange` <- CryptoExchangeSummaryObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoStochasticOscillatorObject$exchange, auto_unbox = TRUE))
      self$`timeframe` <- ApiResponseCryptoStochasticOscillatorObject$`timeframe`
      self$`next_page` <- ApiResponseCryptoStochasticOscillatorObject$`next_page`
    }
  )
)
