# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/rejectedreasonresult'

module StackOne
  module Operations
    # Query parameters that can be used to pass through parameters to the underlying provider request by surrounding them with "proxy" key
    class AtsGetRejectedReasonQueryParamProxy < StackOne::Utils::FieldAugmented
      extend T::Sig



      
      def initialize; end
    end


    class AtsGetRejectedReasonRequest < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # The account identifier
      field :x_account_id, String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }
      # The comma separated list of fields to return in the response (if empty, all fields are returned)
      field :fields, T.nilable(String), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }
      # The unified cursor
      field :next_, T.nilable(String), { 'query_param': { 'field_name': 'next', 'style': 'form', 'explode': true } }
      # The page number of the results to fetch
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :page, T.nilable(String), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # The number of results per page
      field :page_size, T.nilable(String), { 'query_param': { 'field_name': 'page_size', 'style': 'form', 'explode': true } }
      # Query parameters that can be used to pass through parameters to the underlying provider request by surrounding them with "proxy" key
      field :proxy, T.nilable(Operations::AtsGetRejectedReasonQueryParamProxy), { 'query_param': { 'field_name': 'proxy', 'style': 'form', 'explode': true } }
      # Indicates that the raw request result is returned
      field :raw, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'raw', 'style': 'form', 'explode': true } }
      # The sync token to select the only updated results
      field :sync_token, T.nilable(String), { 'query_param': { 'field_name': 'sync_token', 'style': 'form', 'explode': true } }
      # Use a string with a date to only select results updated after that given date
      field :updated_after, T.nilable(String), { 'query_param': { 'field_name': 'updated_after', 'style': 'form', 'explode': true } }


      sig { params(id: String, x_account_id: String, fields: T.nilable(String), next_: T.nilable(String), page: T.nilable(String), page_size: T.nilable(String), proxy: T.nilable(Operations::AtsGetRejectedReasonQueryParamProxy), raw: T.nilable(T::Boolean), sync_token: T.nilable(String), updated_after: T.nilable(String)).void }
      def initialize(id: nil, x_account_id: nil, fields: nil, next_: nil, page: nil, page_size: nil, proxy: nil, raw: nil, sync_token: nil, updated_after: nil)
        @id = id
        @x_account_id = x_account_id
        @fields = fields
        @next_ = next_
        @page = page
        @page_size = page_size
        @proxy = proxy
        @raw = raw
        @sync_token = sync_token
        @updated_after = updated_after
      end
    end


    class AtsGetRejectedReasonResponse < StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # The rejected reason with the given identifier was retrieved.
      field :rejected_reason_result, T.nilable(Shared::RejectedReasonResult)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, rejected_reason_result: T.nilable(Shared::RejectedReasonResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, rejected_reason_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @rejected_reason_result = rejected_reason_result
      end
    end
  end
end
