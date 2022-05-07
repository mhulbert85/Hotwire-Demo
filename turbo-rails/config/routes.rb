# frozen_string_literal: true

Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
end
