# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ProxyRequestBody < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The body of the request
      field :body, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }
      # The headers to send in the request
      field :headers, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('headers') } }
      # The method of the request
      field :method, T.nilable(::StackOne::Shared::Method), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('method'), 'decoder': Utils.enum_from_string(::StackOne::Shared::Method, true) } }
      # The path of the request including any query paramters
      field :path, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('path') } }
      # The base url of the request
      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


      sig { params(body: T.nilable(T::Hash[Symbol, ::Object]), headers: T.nilable(T::Hash[Symbol, ::Object]), method: T.nilable(::StackOne::Shared::Method), path: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(body: nil, headers: nil, method: nil, path: nil, url: nil)
        @body = body
        @headers = headers
        @method = method
        @path = path
        @url = url
      end
    end
  end
end
