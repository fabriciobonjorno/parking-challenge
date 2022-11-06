# frozen_string_literal: true

class Parking < ApplicationRecord
  # Callbacks
  before_save :upcase_plate

  # Validates
  validates :plate, presence: true
  validate :plate_regex
  validate :valid_vehicle_exit, if: :left_changed?

  private

  # Capitalize Name
  def upcase_plate
    self.plate = plate.upcase
  end

  # Capitalize Name
  def valid_vehicle_exit
    errors.add :plate, 'Payment not made!' if paid == false && left == true
  end

  # Validate plates
  def plate_regex
    return if plate.blank? || plate =~ /^([a-zA-Z]{3}-\d{4})$/

    errors.add :plate, 'The plate format is: AAA-9999'
  end
end
