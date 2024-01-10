# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class CrmCreateContactRequestDto < StackOne::Utils::FieldAugmented
      extend T::Sig

      # List of associated account IDs
      field :account_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('account_ids') } }
      # The contact company name
      field :company_name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('company_name') } }
      # List of associated deal IDs
      field :deal_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('deal_ids') } }
      # List of contact email addresses
      field :emails, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('emails') } }
      # The contact first name
      field :first_name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('first_name') } }
      # The contact last name
      field :last_name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('last_name') } }
      # List of contact phone numbers
      field :phone_numbers, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('phone_numbers') } }


      sig { params(account_ids: T.nilable(T::Array[String]), company_name: T.nilable(String), deal_ids: T.nilable(T::Array[String]), emails: T.nilable(T::Array[String]), first_name: T.nilable(String), last_name: T.nilable(String), phone_numbers: T.nilable(T::Array[String])).void }
      def initialize(account_ids: nil, company_name: nil, deal_ids: nil, emails: nil, first_name: nil, last_name: nil, phone_numbers: nil)
        @account_ids = account_ids
        @company_name = company_name
        @deal_ids = deal_ids
        @emails = emails
        @first_name = first_name
        @last_name = last_name
        @phone_numbers = phone_numbers
      end
    end
  end
end
