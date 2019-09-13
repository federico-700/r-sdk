# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CryptoBid Class
#'
#' @field price 
#' @field size 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CryptoBid <- R6::R6Class(
  'CryptoBid',
  public = list(
    `price` = NULL,
    `size` = NULL,
    initialize = function(`price`, `size`){
      if (!missing(`price`)) {
        self$`price` <- `price`
      }
      if (!missing(`size`)) {
        self$`size` <- `size`
      }
    },
    toJSON = function() {
      CryptoBidObject <- list()
      if (!is.null(self$`price`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`price`) && ((length(self$`price`) == 0) || ((length(self$`price`) != 0 && R6::is.R6(self$`price`[[1]]))))) {
          CryptoBidObject[['price']] <- lapply(self$`price`, function(x) x$toJSON())
        } else {
          CryptoBidObject[['price']] <- jsonlite::toJSON(self$`price`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`size`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`size`) && ((length(self$`size`) == 0) || ((length(self$`size`) != 0 && R6::is.R6(self$`size`[[1]]))))) {
          CryptoBidObject[['size']] <- lapply(self$`size`, function(x) x$toJSON())
        } else {
          CryptoBidObject[['size']] <- jsonlite::toJSON(self$`size`, auto_unbox = TRUE)
        }
      }

      CryptoBidObject
    },
    fromJSON = function(CryptoBidJson) {
      CryptoBidObject <- jsonlite::fromJSON(CryptoBidJson)
      if (!is.null(CryptoBidObject$`price`)) {
        self$`price` <- CryptoBidObject$`price`
      }
      if (!is.null(CryptoBidObject$`size`)) {
        self$`size` <- CryptoBidObject$`size`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(CryptoBidJson) {
      CryptoBidObject <- jsonlite::fromJSON(CryptoBidJson)
      self$`price` <- CryptoBidObject$`price`
      self$`size` <- CryptoBidObject$`size`
    }
  )
)