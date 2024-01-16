# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class ConnectSessionCreateCategories < T::Enum
      enums do
        ATS = new('ats')
        HRIS = new('hris')
        HRIS_LEGACY = new('hris-legacy')
        CRM = new('crm')
        MARKETING = new('marketing')
        STACKONE = new('stackone')
      end
    end


    # The metadata for the connection
    class Metadata < StackOne::Utils::FieldAugmented
      extend T::Sig



      
      def initialize; end
    end


    class ConnectSessionCreate < StackOne::Utils::FieldAugmented
      extend T::Sig

      # The origin owner identifier
      field :origin_owner_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('origin_owner_id') } }
      # The origin owner name
      field :origin_owner_name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('origin_owner_name') } }
      # The unique identifier for the account associated with this connect session. When this field is present, the hub will launch in edit mode using the retrieved token.
      field :account_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('account_id') } }
      # The categories of the provider to connect to
      field :categories, T.nilable(T::Array[Shared::ConnectSessionCreateCategories]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('categories') } }
      # How long the session should be valid for in seconds
      field :expires_in, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('expires_in') } }
      # The label to be applied to the account associated with this connect session.
      field :label, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('label') } }
      # The metadata for the connection
      field :metadata, T.nilable(Shared::Metadata), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('metadata') } }
      # If set, this connect session will allow creation of multiple accounts with the same origin owner id and provider. Has no effect if account_id is set.
      field :multiple, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('multiple') } }
      # The origin username
      field :origin_username, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('origin_username') } }
      # The provider to connect to
      field :provider, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('provider') } }


      sig { params(origin_owner_id: String, origin_owner_name: String, account_id: T.nilable(String), categories: T.nilable(T::Array[Shared::ConnectSessionCreateCategories]), expires_in: T.nilable(Float), label: T.nilable(String), metadata: T.nilable(Shared::Metadata), multiple: T.nilable(T::Boolean), origin_username: T.nilable(String), provider: T.nilable(String)).void }
      def initialize(origin_owner_id: nil, origin_owner_name: nil, account_id: nil, categories: nil, expires_in: nil, label: nil, metadata: nil, multiple: nil, origin_username: nil, provider: nil)
        @origin_owner_id = origin_owner_id
        @origin_owner_name = origin_owner_name
        @account_id = account_id
        @categories = categories
        @expires_in = expires_in
        @label = label
        @metadata = metadata
        @multiple = multiple
        @origin_username = origin_username
        @provider = provider
      end
    end
  end
end
