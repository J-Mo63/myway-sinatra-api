# frozen_string_literal: true

# Base properties given to all persisted model files
module BaseModelProperties
  def self.included(base)
    base.class_eval do
      include DataMapper::Resource

      # Basic fields
      property :id, DataMapper::Property::Serial
      property :created_at, DateTime
      property :updated_at, DateTime
    end
  end
end
