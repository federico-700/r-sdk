# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCryptoSnapshot Class
#'
#' @field pair 
#' @field exchange 
#' @field snapshot 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseCryptoSnapshot <- R6::R6Class(
  'ApiResponseCryptoSnapshot',
  public = list(
    `pair` = NULL,
    `exchange` = NULL,
    `snapshot` = NULL,
    initialize = function(`pair`, `exchange`, `snapshot`){
      if (!missing(`pair`)) {
        stopifnot(R6::is.R6(`pair`))
        self$`pair` <- `pair`
      }
      if (!missing(`exchange`)) {
        stopifnot(R6::is.R6(`exchange`))
        self$`exchange` <- `exchange`
      }
      if (!missing(`snapshot`)) {
        stopifnot(R6::is.R6(`snapshot`))
        self$`snapshot` <- `snapshot`
      }
    },
    toJSON = function() {
      ApiResponseCryptoSnapshotObject <- list()
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseCryptoSnapshotObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoSnapshotObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`exchange`) && ((length(self$`exchange`) == 0) || ((length(self$`exchange`) != 0 && R6::is.R6(self$`exchange`[[1]]))))) {
          ApiResponseCryptoSnapshotObject[['exchange']] <- lapply(self$`exchange`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoSnapshotObject[['exchange']] <- jsonlite::toJSON(self$`exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`snapshot`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`snapshot`) && ((length(self$`snapshot`) == 0) || ((length(self$`snapshot`) != 0 && R6::is.R6(self$`snapshot`[[1]]))))) {
          ApiResponseCryptoSnapshotObject[['snapshot']] <- lapply(self$`snapshot`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoSnapshotObject[['snapshot']] <- jsonlite::toJSON(self$`snapshot`, auto_unbox = TRUE)
        }
      }

      ApiResponseCryptoSnapshotObject
    },
    fromJSON = function(ApiResponseCryptoSnapshotJson) {
      ApiResponseCryptoSnapshotObject <- jsonlite::fromJSON(ApiResponseCryptoSnapshotJson)
      if (!is.null(ApiResponseCryptoSnapshotObject$`pair`)) {
        self$`pair` <- ApiResponseCryptoSnapshotObject$`pair`
      }
      if (!is.null(ApiResponseCryptoSnapshotObject$`exchange`)) {
        self$`exchange` <- ApiResponseCryptoSnapshotObject$`exchange`
      }
      if (!is.null(ApiResponseCryptoSnapshotObject$`snapshot`)) {
        self$`snapshot` <- ApiResponseCryptoSnapshotObject$`snapshot`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCryptoSnapshotJson) {
      ApiResponseCryptoSnapshotObject <- jsonlite::fromJSON(ApiResponseCryptoSnapshotJson)
      CryptoPairSummaryObject <- CryptoPairSummary$new()
      self$`pair` <- CryptoPairSummaryObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoSnapshotObject$pair, auto_unbox = TRUE))
      CryptoExchangeSummaryObject <- CryptoExchangeSummary$new()
      self$`exchange` <- CryptoExchangeSummaryObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoSnapshotObject$exchange, auto_unbox = TRUE))
      CryptoSnapshotObject <- CryptoSnapshot$new()
      self$`snapshot` <- CryptoSnapshotObject$fromJSON(jsonlite::toJSON(ApiResponseCryptoSnapshotObject$snapshot, auto_unbox = TRUE))
    }
  )
)
