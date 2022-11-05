# frozen_string_literal: true

FactoryBot.define do
  factory :parking do
    plate { 'MyString' }
    time { 'MyString' }
    paid { false }
    left { false }
  end
end
