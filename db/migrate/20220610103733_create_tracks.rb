# frozen_string_literal: true

class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :duration
      t.integer :likes

      t.timestamps
    end
  end
end
