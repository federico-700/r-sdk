# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.8
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Company operations
#' @description IntrinioSDK.Company
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
#' get_all_companies All Companies
#'
#'
#' get_all_company_news All News
#'
#'
#' get_company Lookup Company
#'
#'
#' get_company_data_point_number Data Point (Number) for Company
#'
#'
#' get_company_data_point_text Data Point (Text) for Company
#'
#'
#' get_company_filings All Filings by Company
#'
#'
#' get_company_fundamentals All Fundamentals by Company
#'
#'
#' get_company_historical_data Historical Data for Company
#'
#'
#' get_company_ipos IPOs
#'
#'
#' get_company_news All News by Company
#'
#'
#' get_company_securities All Securities by Company
#'
#'
#' lookup_company_fundamental Lookup Fundamental by Company
#'
#'
#' search_companies Search Companies
#'
#' }
#'
#' @export
CompanyApi <- R6::R6Class(
  'CompanyApi',
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
    get_all_companies = function(opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('latest_filing_date' %in% names(opts)) {
        queryParams['latest_filing_date'] <- opts['latest_filing_date']
      }
      if ('sic' %in% names(opts)) {
        queryParams['sic'] <- opts['sic']
      }
      if ('template' %in% names(opts)) {
        queryParams['template'] <- opts['template']
      }
      if ('sector' %in% names(opts)) {
        queryParams['sector'] <- opts['sector']
      }
      if ('industry_category' %in% names(opts)) {
        queryParams['industry_category'] <- opts['industry_category']
      }
      if ('industry_group' %in% names(opts)) {
        queryParams['industry_group'] <- opts['industry_group']
      }
      if ('has_fundamentals' %in% names(opts)) {
        queryParams['has_fundamentals'] <- opts['has_fundamentals']
      }
      if ('has_stock_prices' %in% names(opts)) {
        queryParams['has_stock_prices'] <- opts['has_stock_prices']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseCompanies" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanies" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanies" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseCompanies" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseCompanies$new()
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
    get_all_company_news = function(opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies/news"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseNews" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseNews" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseNews" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseNews" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseNews$new()
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
    get_company = function(identifier, opts = list()){
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/companies/{identifier}"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("Company" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("Company" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("Company" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("Company" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- Company$new()
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
    get_company_data_point_number = function(identifier, tag, opts = list()){
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/companies/{identifier}/data_point/{tag}/number"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      if (!missing(`tag`)) {
        urlPath <- gsub(paste0("\\{", "tag", "\\}"), `tag`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("Numeric" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("Numeric" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("Numeric" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("Numeric" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- Numeric$new()
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
    get_company_data_point_text = function(identifier, tag, opts = list()){
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/companies/{identifier}/data_point/{tag}/text"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      if (!missing(`tag`)) {
        urlPath <- gsub(paste0("\\{", "tag", "\\}"), `tag`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("Character" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("Character" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("Character" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("Character" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- Character$new()
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
    get_company_filings = function(identifier, opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('report_type' %in% names(opts)) {
        queryParams['report_type'] <- opts['report_type']
      }
      if ('start_date' %in% names(opts)) {
        queryParams['start_date'] <- opts['start_date']
      }
      if ('end_date' %in% names(opts)) {
        queryParams['end_date'] <- opts['end_date']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies/{identifier}/filings"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseCompanyFilings" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyFilings" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyFilings" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseCompanyFilings" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseCompanyFilings$new()
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
    get_company_fundamentals = function(identifier, opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('filed_after' %in% names(opts)) {
        queryParams['filed_after'] <- opts['filed_after']
      }
      if ('filed_before' %in% names(opts)) {
        queryParams['filed_before'] <- opts['filed_before']
      }
      if ('reported_only' %in% names(opts)) {
        queryParams['reported_only'] <- opts['reported_only']
      }
      if ('fiscal_year' %in% names(opts)) {
        queryParams['fiscal_year'] <- opts['fiscal_year']
      }
      if ('statement_code' %in% names(opts)) {
        queryParams['statement_code'] <- opts['statement_code']
      }
      if ('type' %in% names(opts)) {
        queryParams['type'] <- opts['type']
      }
      if ('start_date' %in% names(opts)) {
        queryParams['start_date'] <- opts['start_date']
      }
      if ('end_date' %in% names(opts)) {
        queryParams['end_date'] <- opts['end_date']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies/{identifier}/fundamentals"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseCompanyFundamentals" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyFundamentals" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyFundamentals" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseCompanyFundamentals" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseCompanyFundamentals$new()
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
    get_company_historical_data = function(identifier, tag, opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('frequency' %in% names(opts)) {
        queryParams['frequency'] <- opts['frequency']
      }
      if ('type' %in% names(opts)) {
        queryParams['type'] <- opts['type']
      }
      if ('start_date' %in% names(opts)) {
        queryParams['start_date'] <- opts['start_date']
      }
      if ('end_date' %in% names(opts)) {
        queryParams['end_date'] <- opts['end_date']
      }
      if ('sort_order' %in% names(opts)) {
        queryParams['sort_order'] <- opts['sort_order']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies/{identifier}/historical_data/{tag}"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      if (!missing(`tag`)) {
        urlPath <- gsub(paste0("\\{", "tag", "\\}"), `tag`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseCompanyHistoricalData" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyHistoricalData" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyHistoricalData" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseCompanyHistoricalData" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseCompanyHistoricalData$new()
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
    get_company_ipos = function(opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('ticker' %in% names(opts)) {
        queryParams['ticker'] <- opts['ticker']
      }
      if ('status' %in% names(opts)) {
        queryParams['status'] <- opts['status']
      }
      if ('start_date' %in% names(opts)) {
        queryParams['start_date'] <- opts['start_date']
      }
      if ('end_date' %in% names(opts)) {
        queryParams['end_date'] <- opts['end_date']
      }
      if ('offer_amount_greater_than' %in% names(opts)) {
        queryParams['offer_amount_greater_than'] <- opts['offer_amount_greater_than']
      }
      if ('offer_amount_less_than' %in% names(opts)) {
        queryParams['offer_amount_less_than'] <- opts['offer_amount_less_than']
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies/ipos"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseInitialPublicOfferings" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseInitialPublicOfferings" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseInitialPublicOfferings" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseInitialPublicOfferings" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseInitialPublicOfferings$new()
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
    get_company_news = function(identifier, opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies/{identifier}/news"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseCompanyNews" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyNews" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanyNews" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseCompanyNews" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseCompanyNews$new()
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
    get_company_securities = function(identifier, opts = list()){
      queryParams <- list()
      headerParams <- character()

      if ('next_page' %in% names(opts)) {
        queryParams['next_page'] <- opts['next_page']
      }
      urlPath <- "/companies/{identifier}/securities"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseCompanySecurities" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanySecurities" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompanySecurities" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseCompanySecurities" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseCompanySecurities$new()
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
    lookup_company_fundamental = function(identifier, statement_code, fiscal_period, fiscal_year, opts = list()){
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/companies/{identifier}/fundamentals/lookup/{statement_code}/{fiscal_year}/{fiscal_period}"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      if (!missing(`statement_code`)) {
        urlPath <- gsub(paste0("\\{", "statement_code", "\\}"), `statement_code`, urlPath)
      }

      if (!missing(`fiscal_period`)) {
        urlPath <- gsub(paste0("\\{", "fiscal_period", "\\}"), `fiscal_period`, urlPath)
      }

      if (!missing(`fiscal_year`)) {
        urlPath <- gsub(paste0("\\{", "fiscal_year", "\\}"), `fiscal_year`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("Fundamental" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("Fundamental" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("Fundamental" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("Fundamental" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- Fundamental$new()
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
    search_companies = function(query, opts = list()){
      queryParams <- list()
      headerParams <- character()

      if (!missing(`query`)) {
        queryParams['query'] <- `query`
      }
      if ('page_size' %in% names(opts)) {
        queryParams['page_size'] <- opts['page_size']
      }
      urlPath <- "/companies/search"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("ApiResponseCompaniesSearch" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompaniesSearch" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("ApiResponseCompaniesSearch" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("ApiResponseCompaniesSearch" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- ApiResponseCompaniesSearch$new()
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
