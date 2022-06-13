# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api, module: 'api', defaults: { format: 'json' } do
    scope :v1, module: 'v1' do
      resources :track
    end
  end
end
