# frozen_string_literal: true

Rails.application.routes.draw do
  get 'turbo_frames/index'
  get 'turbo_frames/new'
  resources :rooms do
    resources :messages
  end
end
