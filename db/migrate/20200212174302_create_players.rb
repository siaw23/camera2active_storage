# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.date :dob
      t.string :pob
      t.integer :age
      t.float :height
      t.string :citizenship
      t.string :position
      t.string :foot
      t.string :current_club
      t.date :contract_expires
      t.string :outfitter

      t.timestamps
    end
  end
end
