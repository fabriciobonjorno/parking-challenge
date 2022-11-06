# frozen_string_literal: true

FactoryBot.define do
  factory :parking do
    plate { Faker::Vehicle.license_plate }
    time { rand(1..50).to_s + ' ' + 'minutes' }
    paid { [true, false].sample }
    left { [true, false].sample }
  end
end
