# frozen_string_literal: true

class CreateParkings < ActiveRecord::Migration[7.0]
  def change
    create_table :parkings do |t|
      t.string :plate
      t.string :time
      t.boolean :paid, default: false
      t.boolean :left, default: false

      t.timestamps
    end
    add_index :parkings, :plate
    add_index :parkings, :time
    add_index :parkings, :paid
    add_index :parkings, :left
  end
end
