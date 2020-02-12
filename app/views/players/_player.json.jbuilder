# frozen_string_literal: true

json.extract! player, :id, :dob, :pob, :age, :height, :citizenship, :position, :foot, :current_club, :contract_expires, :outfitter, :created_at, :updated_at
json.url player_url(player, format: :json)
