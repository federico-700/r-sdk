# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' StockExchange Class
#'
#' @field id 
#' @field name 
#' @field mic 
#' @field acronym 
#' @field city 
#' @field country 
#' @field country_code 
#' @field website 
#' @field first_stock_price_date 
#' @field last_stock_price_date 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StockExchange <- R6::R6Class(
  'StockExchange',
  public = list(
    `id` = NULL,
    `name` = NULL,
    `mic` = NULL,
    `acronym` = NULL,
    `city` = NULL,
    `country` = NULL,
    `country_code` = NULL,
    `website` = NULL,
    `first_stock_price_date` = NULL,
    `last_stock_price_date` = NULL,
    initialize = function(`id`, `name`, `mic`, `acronym`, `city`, `country`, `country_code`, `website`, `first_stock_price_date`, `last_stock_price_date`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`mic`)) {
        stopifnot(is.character(`mic`), length(`mic`) == 1)
        self$`mic` <- `mic`
      }
      if (!missing(`acronym`)) {
        stopifnot(is.character(`acronym`), length(`acronym`) == 1)
        self$`acronym` <- `acronym`
      }
      if (!missing(`city`)) {
        stopifnot(is.character(`city`), length(`city`) == 1)
        self$`city` <- `city`
      }
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
      if (!missing(`country_code`)) {
        stopifnot(is.character(`country_code`), length(`country_code`) == 1)
        self$`country_code` <- `country_code`
      }
      if (!missing(`website`)) {
        stopifnot(is.character(`website`), length(`website`) == 1)
        self$`website` <- `website`
      }
      if (!missing(`first_stock_price_date`)) {
        stopifnot(is.character(`first_stock_price_date`), length(`first_stock_price_date`) == 1)
        stopifnot(R6::is.R6(`first_stock_price_date`))
        self$`first_stock_price_date` <- `first_stock_price_date`
      }
      if (!missing(`last_stock_price_date`)) {
        stopifnot(is.character(`last_stock_price_date`), length(`last_stock_price_date`) == 1)
        stopifnot(R6::is.R6(`last_stock_price_date`))
        self$`last_stock_price_date` <- `last_stock_price_date`
      }
    },
    toJSON = function() {
      StockExchangeObject <- list()
      if (!is.null(self$`id`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`id`) && ((length(self$`id`) == 0) || ((length(self$`id`) != 0 && R6::is.R6(self$`id`[[1]]))))) {
          StockExchangeObject[['id']] <- lapply(self$`id`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['id']] <- jsonlite::toJSON(self$`id`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          StockExchangeObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`mic`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`mic`) && ((length(self$`mic`) == 0) || ((length(self$`mic`) != 0 && R6::is.R6(self$`mic`[[1]]))))) {
          StockExchangeObject[['mic']] <- lapply(self$`mic`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['mic']] <- jsonlite::toJSON(self$`mic`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`acronym`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`acronym`) && ((length(self$`acronym`) == 0) || ((length(self$`acronym`) != 0 && R6::is.R6(self$`acronym`[[1]]))))) {
          StockExchangeObject[['acronym']] <- lapply(self$`acronym`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['acronym']] <- jsonlite::toJSON(self$`acronym`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`city`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`city`) && ((length(self$`city`) == 0) || ((length(self$`city`) != 0 && R6::is.R6(self$`city`[[1]]))))) {
          StockExchangeObject[['city']] <- lapply(self$`city`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['city']] <- jsonlite::toJSON(self$`city`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`country`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`country`) && ((length(self$`country`) == 0) || ((length(self$`country`) != 0 && R6::is.R6(self$`country`[[1]]))))) {
          StockExchangeObject[['country']] <- lapply(self$`country`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['country']] <- jsonlite::toJSON(self$`country`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`country_code`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`country_code`) && ((length(self$`country_code`) == 0) || ((length(self$`country_code`) != 0 && R6::is.R6(self$`country_code`[[1]]))))) {
          StockExchangeObject[['country_code']] <- lapply(self$`country_code`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['country_code']] <- jsonlite::toJSON(self$`country_code`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`website`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`website`) && ((length(self$`website`) == 0) || ((length(self$`website`) != 0 && R6::is.R6(self$`website`[[1]]))))) {
          StockExchangeObject[['website']] <- lapply(self$`website`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['website']] <- jsonlite::toJSON(self$`website`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`first_stock_price_date`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`first_stock_price_date`) && ((length(self$`first_stock_price_date`) == 0) || ((length(self$`first_stock_price_date`) != 0 && R6::is.R6(self$`first_stock_price_date`[[1]]))))) {
          StockExchangeObject[['first_stock_price_date']] <- lapply(self$`first_stock_price_date`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['first_stock_price_date']] <- jsonlite::toJSON(self$`first_stock_price_date`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`last_stock_price_date`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_stock_price_date`) && ((length(self$`last_stock_price_date`) == 0) || ((length(self$`last_stock_price_date`) != 0 && R6::is.R6(self$`last_stock_price_date`[[1]]))))) {
          StockExchangeObject[['last_stock_price_date']] <- lapply(self$`last_stock_price_date`, function(x) x$toJSON())
        } else {
          StockExchangeObject[['last_stock_price_date']] <- jsonlite::toJSON(self$`last_stock_price_date`, auto_unbox = TRUE)
        }
      }

      StockExchangeObject
    },
    fromJSON = function(StockExchangeJson) {
      StockExchangeObject <- jsonlite::fromJSON(StockExchangeJson)
      if (!is.null(StockExchangeObject$`id`)) {
        self$`id` <- StockExchangeObject$`id`
      }
      if (!is.null(StockExchangeObject$`name`)) {
        self$`name` <- StockExchangeObject$`name`
      }
      if (!is.null(StockExchangeObject$`mic`)) {
        self$`mic` <- StockExchangeObject$`mic`
      }
      if (!is.null(StockExchangeObject$`acronym`)) {
        self$`acronym` <- StockExchangeObject$`acronym`
      }
      if (!is.null(StockExchangeObject$`city`)) {
        self$`city` <- StockExchangeObject$`city`
      }
      if (!is.null(StockExchangeObject$`country`)) {
        self$`country` <- StockExchangeObject$`country`
      }
      if (!is.null(StockExchangeObject$`country_code`)) {
        self$`country_code` <- StockExchangeObject$`country_code`
      }
      if (!is.null(StockExchangeObject$`website`)) {
        self$`website` <- StockExchangeObject$`website`
      }
      if (!is.null(StockExchangeObject$`first_stock_price_date`)) {
        self$`first_stock_price_date` <- StockExchangeObject$`first_stock_price_date`
      }
      if (!is.null(StockExchangeObject$`last_stock_price_date`)) {
        self$`last_stock_price_date` <- StockExchangeObject$`last_stock_price_date`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(StockExchangeJson) {
      StockExchangeObject <- jsonlite::fromJSON(StockExchangeJson)
      self$`id` <- StockExchangeObject$`id`
      self$`name` <- StockExchangeObject$`name`
      self$`mic` <- StockExchangeObject$`mic`
      self$`acronym` <- StockExchangeObject$`acronym`
      self$`city` <- StockExchangeObject$`city`
      self$`country` <- StockExchangeObject$`country`
      self$`country_code` <- StockExchangeObject$`country_code`
      self$`website` <- StockExchangeObject$`website`
      DateObject <- Date$new()
      self$`first_stock_price_date` <- DateObject$fromJSON(jsonlite::toJSON(StockExchangeObject$first_stock_price_date, auto_unbox = TRUE))
      DateObject <- Date$new()
      self$`last_stock_price_date` <- DateObject$fromJSON(jsonlite::toJSON(StockExchangeObject$last_stock_price_date, auto_unbox = TRUE))
    }
  )
)
