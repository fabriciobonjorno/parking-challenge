# frozen_string_literal: true

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'parkings', to: 'parkings#parking'
      put 'parkings/out/:id', to: 'parkings#out'
      put 'parkings/pay/:id', to: 'parkings#pay'
      get 'parkings/:plate', to: 'parkings#report_plate'
    end
  end
end
