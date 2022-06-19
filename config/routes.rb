# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api, module: 'api', defaults: { format: 'json' } do
    scope :v1, module: 'v1' do
      resources :track
      get 'search', to: 'track#search'
    end
  end
end
