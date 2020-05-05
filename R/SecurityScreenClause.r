# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.13.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SecurityScreenClause Class
#'
#' @field field 
#' @field operator 
#' @field value 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SecurityScreenClause <- R6::R6Class(
  'SecurityScreenClause',
  public = list(
    `field` = NA,
    `operator` = NA,
    `value` = NA,
    initialize = function(`field`, `operator`, `value`){
      if (!missing(`field`)) {
        self$`field` <- `field`
      }
      if (!missing(`operator`)) {
        self$`operator` <- `operator`
      }
      if (!missing(`value`)) {
        self$`value` <- `value`
      }
    },
    toJSON = function() {
      SecurityScreenClauseObject <- list()
      if (!is.null(self$`field`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`field`) && ((length(self$`field`) == 0) || ((length(self$`field`) != 0 && R6::is.R6(self$`field`[[1]]))))) {
          SecurityScreenClauseObject[['field']] <- lapply(self$`field`, function(x) x$toJSON())
        } else {
          SecurityScreenClauseObject[['field']] <- jsonlite::toJSON(self$`field`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`operator`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`operator`) && ((length(self$`operator`) == 0) || ((length(self$`operator`) != 0 && R6::is.R6(self$`operator`[[1]]))))) {
          SecurityScreenClauseObject[['operator']] <- lapply(self$`operator`, function(x) x$toJSON())
        } else {
          SecurityScreenClauseObject[['operator']] <- jsonlite::toJSON(self$`operator`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`value`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`value`) && ((length(self$`value`) == 0) || ((length(self$`value`) != 0 && R6::is.R6(self$`value`[[1]]))))) {
          SecurityScreenClauseObject[['value']] <- lapply(self$`value`, function(x) x$toJSON())
        } else {
          SecurityScreenClauseObject[['value']] <- jsonlite::toJSON(self$`value`, auto_unbox = TRUE)
        }
      }

      SecurityScreenClauseObject
    },
    fromJSON = function(SecurityScreenClauseJson) {
      SecurityScreenClauseObject <- jsonlite::fromJSON(SecurityScreenClauseJson)
      if (!is.null(SecurityScreenClauseObject$`field`)) {
        self$`field` <- SecurityScreenClauseObject$`field`
      }
      if (!is.null(SecurityScreenClauseObject$`operator`)) {
        self$`operator` <- SecurityScreenClauseObject$`operator`
      }
      if (!is.null(SecurityScreenClauseObject$`value`)) {
        self$`value` <- SecurityScreenClauseObject$`value`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(SecurityScreenClauseJson) {
      SecurityScreenClauseObject <- jsonlite::fromJSON(SecurityScreenClauseJson, simplifyDataFrame = FALSE)
      self$setFromList(SecurityScreenClauseObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`field`)) {
        self$`field` <- listObject$`field`
      }
      else {
        self$`field` <- NA 
      }

      if (!is.null(listObject$`operator`)) {
        self$`operator` <- listObject$`operator`
      }
      else {
        self$`operator` <- NA 
      }

      if (!is.null(listObject$`value`)) {
        self$`value` <- listObject$`value`
      }
      else {
        self$`value` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["field"]] <- self$`field`
      listObject[["operator"]] <- self$`operator`
      listObject[["value"]] <- self$`value`
      return(listObject)
    }
  )
)
