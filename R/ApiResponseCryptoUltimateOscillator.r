# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCryptoUltimateOscillator Class
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
ApiResponseCryptoUltimateOscillator <- R6::R6Class(
  'ApiResponseCryptoUltimateOscillator',
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
      ApiResponseCryptoUltimateOscillatorObject <- list()
      if (!is.null(self$`technicals`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`technicals`) && ((length(self$`technicals`) == 0) || ((length(self$`technicals`) != 0 && R6::is.R6(self$`technicals`[[1]]))))) {
          ApiResponseCryptoUltimateOscillatorObject[['technicals']] <- lapply(self$`technicals`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoUltimateOscillatorObject[['technicals']] <- jsonlite::toJSON(self$`technicals`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`indicator`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`indicator`) && ((length(self$`indicator`) == 0) || ((length(self$`indicator`) != 0 && R6::is.R6(self$`indicator`[[1]]))))) {
          ApiResponseCryptoUltimateOscillatorObject[['indicator']] <- lapply(self$`indicator`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoUltimateOscillatorObject[['indicator']] <- jsonlite::toJSON(self$`indicator`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseCryptoUltimateOscillatorObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoUltimateOscillatorObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`exchange`) && ((length(self$`exchange`) == 0) || ((length(self$`exchange`) != 0 && R6::is.R6(self$`exchange`[[1]]))))) {
          ApiResponseCryptoUltimateOscillatorObject[['exchange']] <- lapply(self$`exchange`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoUltimateOscillatorObject[['exchange']] <- jsonlite::toJSON(self$`exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`timeframe`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`timeframe`) && ((length(self$`timeframe`) == 0) || ((length(self$`timeframe`) != 0 && R6::is.R6(self$`timeframe`[[1]]))))) {
          ApiResponseCryptoUltimateOscillatorObject[['timeframe']] <- lapply(self$`timeframe`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoUltimateOscillatorObject[['timeframe']] <- jsonlite::toJSON(self$`timeframe`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseCryptoUltimateOscillatorObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoUltimateOscillatorObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseCryptoUltimateOscillatorObject
    },
    fromJSON = function(ApiResponseCryptoUltimateOscillatorJson) {
      ApiResponseCryptoUltimateOscillatorObject <- jsonlite::fromJSON(ApiResponseCryptoUltimateOscillatorJson)
      if (!is.null(ApiResponseCryptoUltimateOscillatorObject$`technicals`)) {
        self$`technicals` <- ApiResponseCryptoUltimateOscillatorObject$`technicals`
      }
      if (!is.null(ApiResponseCryptoUltimateOscillatorObject$`indicator`)) {
        self$`indicator` <- ApiResponseCryptoUltimateOscillatorObject$`indicator`
      }
      if (!is.null(ApiResponseCryptoUltimateOscillatorObject$`pair`)) {
        self$`pair` <- ApiResponseCryptoUltimateOscillatorObject$`pair`
      }
      if (!is.null(ApiResponseCryptoUltimateOscillatorObject$`exchange`)) {
        self$`exchange` <- ApiResponseCryptoUltimateOscillatorObject$`exchange`
      }
      if (!is.null(ApiResponseCryptoUltimateOscillatorObject$`timeframe`)) {
        self$`timeframe` <- ApiResponseCryptoUltimateOscillatorObject$`timeframe`
      }
      if (!is.null(ApiResponseCryptoUltimateOscillatorObject$`next_page`)) {
        self$`next_page` <- ApiResponseCryptoUltimateOscillatorObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCryptoUltimateOscillatorJson) {
      ApiResponseCryptoUltimateOscillatorObject <- jsonlite::fromJSON(ApiResponseCryptoUltimateOscillatorJson)
      self$`technicals` <- lapply(ApiResponseCryptoUltimateOscillatorObject$`technicals`, function(x) UltimateOscillatorTechnicalValue$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      TechnicalIndicatorObject <- TechnicalIndicator$new()
      self$`indicator` <- TechnicalIndicatorObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoUltimateOscillatorObject$indicator, auto_unbox = TRUE))
      CryptoPairSummaryObject <- CryptoPairSummary$new()
      self$`pair` <- CryptoPairSummaryObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoUltimateOscillatorObject$pair, auto_unbox = TRUE))
      CryptoExchangeSummaryObject <- CryptoExchangeSummary$new()
      self$`exchange` <- CryptoExchangeSummaryObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoUltimateOscillatorObject$exchange, auto_unbox = TRUE))
      self$`timeframe` <- ApiResponseCryptoUltimateOscillatorObject$`timeframe`
      self$`next_page` <- ApiResponseCryptoUltimateOscillatorObject$`next_page`
    }
  )
)