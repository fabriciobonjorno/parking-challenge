# frozen_string_literal: true

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'parking'
      put 'parkings/out/:id', to: 'parkings#out'
      put 'parkings/pay/:id', to: 'parkings#pay'
      get 'parkings/:plate', to: 'parkings#plate'
    end
  end
end
