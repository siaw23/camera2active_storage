# frozen_string_literal: true

class Player < ApplicationRecord
  attribute :player_picture, :string, default: ''

  has_one_attached :picture
end
