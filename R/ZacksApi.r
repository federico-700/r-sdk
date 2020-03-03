# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.8
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Zacks operations
#' @description IntrinioSDK.Zacks
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_zacks_analyst_ratings Zacks Analyst Ratings
#'
#'
#' get_zacks_eps_surprises Zacks EPS Surprises
#'
#'
#' get_zacks_sales_surprises Zacks Sales Surprises
#'
#' }
#'
#' @export
ZacksApi <- R6::R6Class(
  'ZacksApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_zacks_analyst_ratings = function(opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('identifier' %in% names(opts)) {
        queryParams['identifier'] <- opts['identifier']
      }
      if ('start_date' %in% names(opts)) {
        queryParams['start_date'] <- opts['start_date']
      }
      if ('end_date' %in% names(opts)) {
        queryParams['end_date'] <- opts['end_date']
      }
      if ('mean_greater' %in% names(opts)) {
        queryParams['mean_greater'] <- opts['mean_greater']
      }
      if ('mean_less' %in% names(opts)) {
        queryParams['mean_less'] <- opts['mean_less']
      }
      if ('strong_buys_greater' %in% names(opts)) {
        queryParams['strong_buys_greater'] <- opts['strong_buys_greater']
      }
      if ('strong_buys_less' %in% names(opts)) {
        queryParams['strong_buys_less'] <- opts['strong_buys_less']
      }
      if ('buys_greater' %in% names(opts)) {
        queryParams['buys_greater'] <- opts['buys_greater']
      }
      if ('buys_less' %in% names(opts)) {
        queryParams['buys_less'] <- opts['buys_less']
      }
      if ('holds_greater' %in% names(opts)) {
        queryParams['holds_greater'] <- opts['holds_greater']
      }
      if ('holds_less' %in% names(opts)) {
        queryParams['holds_less'] <- opts['holds_less']
      }
      if ('sells_greater' %in% names(opts)) {
        queryParams['sells_greater'] <- opts['sells_greater']
      }
      if ('sells_less' %in% names(opts)) {
        queryParams['sells_less'] <- opts['sells_less']
      }
      if ('strong_sells_greater' %in% names(opts)) {
        queryParams['strong_sells_greater'] <- opts['strong_sells_greater']
      }
      if ('strong_sells_less' %in% names(opts)) {
        queryParams['strong_sells_less'] <- opts['strong_sells_less']
      }
      if ('total_greater' %in% names(opts)) {
        queryParams['total_greater'] <- opts['total_greater']
      }
      if ('total_less' %in% names(opts)) {
        queryParams['total_less'] <- opts['total_less']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/zacks/analyst_ratings"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseZacksAnalystRatings" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseZacksAnalystRatings" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseZacksAnalystRatings" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseZacksAnalystRatings" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseZacksAnalystRatings$new()
          returnObject$fromJSONString(result)
        }

        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        result <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        result <- httr::content(resp, "text", encoding = "UTF-8")
        Response$new(result, resp)
      }

    },
    get_zacks_eps_surprises = function(opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('start_date' %in% names(opts)) {
        queryParams['start_date'] <- opts['start_date']
      }
      if ('end_date' %in% names(opts)) {
        queryParams['end_date'] <- opts['end_date']
      }
      if ('eps_actual_greater' %in% names(opts)) {
        queryParams['eps_actual_greater'] <- opts['eps_actual_greater']
      }
      if ('eps_actual_less' %in% names(opts)) {
        queryParams['eps_actual_less'] <- opts['eps_actual_less']
      }
      if ('eps_mean_estimate_greater' %in% names(opts)) {
        queryParams['eps_mean_estimate_greater'] <- opts['eps_mean_estimate_greater']
      }
      if ('eps_mean_estimate_less' %in% names(opts)) {
        queryParams['eps_mean_estimate_less'] <- opts['eps_mean_estimate_less']
      }
      if ('eps_amount_diff_greater' %in% names(opts)) {
        queryParams['eps_amount_diff_greater'] <- opts['eps_amount_diff_greater']
      }
      if ('eps_amount_diff_less' %in% names(opts)) {
        queryParams['eps_amount_diff_less'] <- opts['eps_amount_diff_less']
      }
      if ('eps_percent_diff_greater' %in% names(opts)) {
        queryParams['eps_percent_diff_greater'] <- opts['eps_percent_diff_greater']
      }
      if ('eps_percent_diff_less' %in% names(opts)) {
        queryParams['eps_percent_diff_less'] <- opts['eps_percent_diff_less']
      }
      if ('eps_count_estimate_greater' %in% names(opts)) {
        queryParams['eps_count_estimate_greater'] <- opts['eps_count_estimate_greater']
      }
      if ('eps_count_estimate_less' %in% names(opts)) {
        queryParams['eps_count_estimate_less'] <- opts['eps_count_estimate_less']
      }
      if ('eps_std_dev_estimate_greater' %in% names(opts)) {
        queryParams['eps_std_dev_estimate_greater'] <- opts['eps_std_dev_estimate_greater']
      }
      if ('eps_std_dev_estimate_less' %in% names(opts)) {
        queryParams['eps_std_dev_estimate_less'] <- opts['eps_std_dev_estimate_less']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/zacks/eps_surprises"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseZacksEPSSurprises" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseZacksEPSSurprises" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseZacksEPSSurprises" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseZacksEPSSurprises" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseZacksEPSSurprises$new()
          returnObject$fromJSONString(result)
        }

        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        result <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        result <- httr::content(resp, "text", encoding = "UTF-8")
        Response$new(result, resp)
      }

    },
    get_zacks_sales_surprises = function(opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('start_date' %in% names(opts)) {
        queryParams['start_date'] <- opts['start_date']
      }
      if ('end_date' %in% names(opts)) {
        queryParams['end_date'] <- opts['end_date']
      }
      if ('sales_actual_greater' %in% names(opts)) {
        queryParams['sales_actual_greater'] <- opts['sales_actual_greater']
      }
      if ('sales_actual_less' %in% names(opts)) {
        queryParams['sales_actual_less'] <- opts['sales_actual_less']
      }
      if ('sales_mean_estimate_greater' %in% names(opts)) {
        queryParams['sales_mean_estimate_greater'] <- opts['sales_mean_estimate_greater']
      }
      if ('sales_mean_estimate_less' %in% names(opts)) {
        queryParams['sales_mean_estimate_less'] <- opts['sales_mean_estimate_less']
      }
      if ('sales_amount_diff_greater' %in% names(opts)) {
        queryParams['sales_amount_diff_greater'] <- opts['sales_amount_diff_greater']
      }
      if ('sales_amount_diff_less' %in% names(opts)) {
        queryParams['sales_amount_diff_less'] <- opts['sales_amount_diff_less']
      }
      if ('sales_percent_diff_greater' %in% names(opts)) {
        queryParams['sales_percent_diff_greater'] <- opts['sales_percent_diff_greater']
      }
      if ('sales_percent_diff_less' %in% names(opts)) {
        queryParams['sales_percent_diff_less'] <- opts['sales_percent_diff_less']
      }
      if ('sales_count_estimate_greater' %in% names(opts)) {
        queryParams['sales_count_estimate_greater'] <- opts['sales_count_estimate_greater']
      }
      if ('sales_count_estimate_less' %in% names(opts)) {
        queryParams['sales_count_estimate_less'] <- opts['sales_count_estimate_less']
      }
      if ('sales_std_dev_estimate_greater' %in% names(opts)) {
        queryParams['sales_std_dev_estimate_greater'] <- opts['sales_std_dev_estimate_greater']
      }
      if ('sales_std_dev_estimate_less' %in% names(opts)) {
        queryParams['sales_std_dev_estimate_less'] <- opts['sales_std_dev_estimate_less']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/zacks/sales_surprises"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseZacksSalesSurprises" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseZacksSalesSurprises" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseZacksSalesSurprises" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseZacksSalesSurprises" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseZacksSalesSurprises$new()
          returnObject$fromJSONString(result)
        }

        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        result <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        result <- httr::content(resp, "text", encoding = "UTF-8")
        Response$new(result, resp)
      }

    }
  )
)
