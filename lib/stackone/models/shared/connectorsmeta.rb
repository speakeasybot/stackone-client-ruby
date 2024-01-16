# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared
    # Category - The provider service category
    class Category < T::Enum
      enums do
        ATS = new('ats')
        HRIS = new('hris')
        HRIS_LEGACY = new('hris-legacy')
        CRM = new('crm')
        MARKETING = new('marketing')
        STACKONE = new('stackone')
      end
    end



    class ConnectorsMeta < StackOne::Utils::FieldAugmented
      extend T::Sig

      # Whether this provider has been enabled on the integrations page for the current project
      field :active, T::Boolean, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('active') } }
      # The provider service category
      field :category, Shared::Category, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('category'), 'decoder': Utils.enum_from_string(Shared::Category, false) } }

      field :models, T::Hash[Symbol, Object], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('models') } }
      # The provider key
      field :provider, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('provider') } }
      # The provider human-readable label
      field :provider_name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('provider_name') } }
      # Resources for this provider, such as image assets
      field :resources, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('resources') } }


      sig { params(active: T::Boolean, category: Shared::Category, models: T::Hash[Symbol, Object], provider: String, provider_name: String, resources: T.nilable(T::Hash[Symbol, Object])).void }
      def initialize(active: nil, category: nil, models: nil, provider: nil, provider_name: nil, resources: nil)
        @active = active
        @category = category
        @models = models
        @provider = provider
        @provider_name = provider_name
        @resources = resources
      end
    end
  end
end
