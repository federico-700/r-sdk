# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.14.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseSecurities Class
#'
#' @field securities 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseSecurities <- R6::R6Class(
  'ApiResponseSecurities',
  public = list(
    `securities` = NA,
    `securities_data_frame` = NULL,
    `next_page` = NA,
    initialize = function(`securities`, `next_page`){
      if (!missing(`securities`)) {
        self$`securities` <- `securities`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseSecuritiesObject <- list()
      if (!is.null(self$`securities`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`securities`) && ((length(self$`securities`) == 0) || ((length(self$`securities`) != 0 && R6::is.R6(self$`securities`[[1]]))))) {
          ApiResponseSecuritiesObject[['securities']] <- lapply(self$`securities`, function(x) x$toJSON())
        } else {
          ApiResponseSecuritiesObject[['securities']] <- jsonlite::toJSON(self$`securities`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseSecuritiesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseSecuritiesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseSecuritiesObject
    },
    fromJSON = function(ApiResponseSecuritiesJson) {
      ApiResponseSecuritiesObject <- jsonlite::fromJSON(ApiResponseSecuritiesJson)
      if (!is.null(ApiResponseSecuritiesObject$`securities`)) {
        self$`securities` <- ApiResponseSecuritiesObject$`securities`
      }
      if (!is.null(ApiResponseSecuritiesObject$`next_page`)) {
        self$`next_page` <- ApiResponseSecuritiesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseSecuritiesJson) {
      ApiResponseSecuritiesObject <- jsonlite::fromJSON(ApiResponseSecuritiesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseSecuritiesObject)
    },
    setFromList = function(listObject) {


      self$`securities` <- lapply(listObject$`securities`, function(x) {
      SecuritySummaryObject <- SecuritySummary$new()
      SecuritySummaryObject$setFromList(x)
      return(SecuritySummaryObject)
      })

      securities_list <- lapply(self$`securities`, function(x) {
        return(x$getAsList()) 
      })

      self$`securities_data_frame` <- do.call(rbind, lapply(securities_list, data.frame))






      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["securities"]] <- lapply(self$`securities`, function(o) {
      #  return(o$getAsList())
      # })




        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
