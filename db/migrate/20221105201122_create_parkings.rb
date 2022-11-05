# frozen_string_literal: true

class CreateParkings < ActiveRecord::Migration[7.0]
  def change
    create_table :parkings do |t|
      t.string :plate
      t.string :time
      t.boolean :paid
      t.boolean :left

      t.timestamps
    end
  end
end
