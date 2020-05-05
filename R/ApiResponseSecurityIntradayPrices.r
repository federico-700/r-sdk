# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.13.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseSecurityIntradayPrices Class
#'
#' @field intraday_prices 
#' @field security 
#' @field source 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseSecurityIntradayPrices <- R6::R6Class(
  'ApiResponseSecurityIntradayPrices',
  public = list(
    `intraday_prices` = NA,
    `intraday_prices_data_frame` = NULL,
    `security` = NA,
    `source` = NA,
    `next_page` = NA,
    initialize = function(`intraday_prices`, `security`, `source`, `next_page`){
      if (!missing(`intraday_prices`)) {
        self$`intraday_prices` <- `intraday_prices`
      }
      if (!missing(`security`)) {
        self$`security` <- `security`
      }
      if (!missing(`source`)) {
        self$`source` <- `source`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseSecurityIntradayPricesObject <- list()
      if (!is.null(self$`intraday_prices`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`intraday_prices`) && ((length(self$`intraday_prices`) == 0) || ((length(self$`intraday_prices`) != 0 && R6::is.R6(self$`intraday_prices`[[1]]))))) {
          ApiResponseSecurityIntradayPricesObject[['intraday_prices']] <- lapply(self$`intraday_prices`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityIntradayPricesObject[['intraday_prices']] <- jsonlite::toJSON(self$`intraday_prices`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`security`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`security`) && ((length(self$`security`) == 0) || ((length(self$`security`) != 0 && R6::is.R6(self$`security`[[1]]))))) {
          ApiResponseSecurityIntradayPricesObject[['security']] <- lapply(self$`security`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityIntradayPricesObject[['security']] <- jsonlite::toJSON(self$`security`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`source`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`source`) && ((length(self$`source`) == 0) || ((length(self$`source`) != 0 && R6::is.R6(self$`source`[[1]]))))) {
          ApiResponseSecurityIntradayPricesObject[['source']] <- lapply(self$`source`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityIntradayPricesObject[['source']] <- jsonlite::toJSON(self$`source`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseSecurityIntradayPricesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityIntradayPricesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseSecurityIntradayPricesObject
    },
    fromJSON = function(ApiResponseSecurityIntradayPricesJson) {
      ApiResponseSecurityIntradayPricesObject <- jsonlite::fromJSON(ApiResponseSecurityIntradayPricesJson)
      if (!is.null(ApiResponseSecurityIntradayPricesObject$`intraday_prices`)) {
        self$`intraday_prices` <- ApiResponseSecurityIntradayPricesObject$`intraday_prices`
      }
      if (!is.null(ApiResponseSecurityIntradayPricesObject$`security`)) {
        self$`security` <- ApiResponseSecurityIntradayPricesObject$`security`
      }
      if (!is.null(ApiResponseSecurityIntradayPricesObject$`source`)) {
        self$`source` <- ApiResponseSecurityIntradayPricesObject$`source`
      }
      if (!is.null(ApiResponseSecurityIntradayPricesObject$`next_page`)) {
        self$`next_page` <- ApiResponseSecurityIntradayPricesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseSecurityIntradayPricesJson) {
      ApiResponseSecurityIntradayPricesObject <- jsonlite::fromJSON(ApiResponseSecurityIntradayPricesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseSecurityIntradayPricesObject)
    },
    setFromList = function(listObject) {


      self$`intraday_prices` <- lapply(listObject$`intraday_prices`, function(x) {
      IntradayStockPriceObject <- IntradayStockPrice$new()
      IntradayStockPriceObject$setFromList(x)
      return(IntradayStockPriceObject)
      })

      intraday_prices_list <- lapply(self$`intraday_prices`, function(x) {
        return(x$getAsList()) 
      })

      self$`intraday_prices_data_frame` <- do.call(rbind, lapply(intraday_prices_list, data.frame))













      self$`security` <- SecuritySummary$new()
      self$`security`$setFromList(listObject$`security`)

      if (!is.null(listObject$`source`)) {
        self$`source` <- listObject$`source`
      }
      else {
        self$`source` <- NA 
      }

      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["intraday_prices"]] <- lapply(self$`intraday_prices`, function(o) {
      #  return(o$getAsList())
      # })




        




      security_list <- self$`security`$getAsList()
      for (x in names(security_list)) {
        listObject[[paste("security_",x, sep = "")]] <- self$`security`[[x]]
      }
        
      listObject[["source"]] <- self$`source`
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
