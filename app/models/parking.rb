# frozen_string_literal: true

class Parking < ApplicationRecord
  # Callbacks
  before_save :upcase_plate

  # Validates
  validates :plate, presence: true
  validate :plate_regex

  private

  # Capitalize Name
  def upcase_plate
    self.plate = plate.upcase
  end

  # Update lenght of stay
  def update_durations
    plate = find(parking)
    update_time = ActiveSupport::Duration.build((plate.updated_at - plate.created_at).round).inspect
    plate.update!(time: update_time)
  end

  # Validate plates
  def plate_regex
    return if plate.blank? || plate =~ /^([a-zA-Z]{3}-\d{4})$/

    errors.add :plate, ' the plate format is: "AAA-9999"'
  end
end
