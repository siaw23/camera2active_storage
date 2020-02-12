# frozen_string_literal: true

json.array! @players, partial: 'players/player', as: :player
