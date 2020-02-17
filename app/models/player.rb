# frozen_string_literal: true

class Player < ApplicationRecord
  attribute :player_picture, :string, default: ''

  has_one_attached :picture

  def has_picture?
    File.exist?(ActiveStorage::Blob.service.path_for(picture.key))
  end
end
