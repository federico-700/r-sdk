# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SICIndex Class
#'
#' @field id 
#' @field symbol 
#' @field name 
#' @field continent 
#' @field country 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SICIndex <- R6::R6Class(
  'SICIndex',
  public = list(
    `id` = NULL,
    `symbol` = NULL,
    `name` = NULL,
    `continent` = NULL,
    `country` = NULL,
    initialize = function(`id`, `symbol`, `name`, `continent`, `country`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`symbol`)) {
        stopifnot(is.character(`symbol`), length(`symbol`) == 1)
        self$`symbol` <- `symbol`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`continent`)) {
        stopifnot(is.character(`continent`), length(`continent`) == 1)
        self$`continent` <- `continent`
      }
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
    },
    toJSON = function() {
      SICIndexObject <- list()
      if (!is.null(self$`id`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`id`) && ((length(self$`id`) == 0) || ((length(self$`id`) != 0 && R6::is.R6(self$`id`[[1]]))))) {
          SICIndexObject[['id']] <- lapply(self$`id`, function(x) x$toJSON())
        } else {
          SICIndexObject[['id']] <- jsonlite::toJSON(self$`id`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`symbol`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`symbol`) && ((length(self$`symbol`) == 0) || ((length(self$`symbol`) != 0 && R6::is.R6(self$`symbol`[[1]]))))) {
          SICIndexObject[['symbol']] <- lapply(self$`symbol`, function(x) x$toJSON())
        } else {
          SICIndexObject[['symbol']] <- jsonlite::toJSON(self$`symbol`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          SICIndexObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          SICIndexObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`continent`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`continent`) && ((length(self$`continent`) == 0) || ((length(self$`continent`) != 0 && R6::is.R6(self$`continent`[[1]]))))) {
          SICIndexObject[['continent']] <- lapply(self$`continent`, function(x) x$toJSON())
        } else {
          SICIndexObject[['continent']] <- jsonlite::toJSON(self$`continent`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`country`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`country`) && ((length(self$`country`) == 0) || ((length(self$`country`) != 0 && R6::is.R6(self$`country`[[1]]))))) {
          SICIndexObject[['country']] <- lapply(self$`country`, function(x) x$toJSON())
        } else {
          SICIndexObject[['country']] <- jsonlite::toJSON(self$`country`, auto_unbox = TRUE)
        }
      }

      SICIndexObject
    },
    fromJSON = function(SICIndexJson) {
      SICIndexObject <- jsonlite::fromJSON(SICIndexJson)
      if (!is.null(SICIndexObject$`id`)) {
        self$`id` <- SICIndexObject$`id`
      }
      if (!is.null(SICIndexObject$`symbol`)) {
        self$`symbol` <- SICIndexObject$`symbol`
      }
      if (!is.null(SICIndexObject$`name`)) {
        self$`name` <- SICIndexObject$`name`
      }
      if (!is.null(SICIndexObject$`continent`)) {
        self$`continent` <- SICIndexObject$`continent`
      }
      if (!is.null(SICIndexObject$`country`)) {
        self$`country` <- SICIndexObject$`country`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(SICIndexJson) {
      SICIndexObject <- jsonlite::fromJSON(SICIndexJson)
      self$`id` <- SICIndexObject$`id`
      self$`symbol` <- SICIndexObject$`symbol`
      self$`name` <- SICIndexObject$`name`
      self$`continent` <- SICIndexObject$`continent`
      self$`country` <- SICIndexObject$`country`
    }
  )
)