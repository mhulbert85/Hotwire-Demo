# frozen_string_literal: true

Rails.application.routes.draw do
  root 'turbo_frames#index'

  resources :turbo_frames, only: %i[index new]

  resources :rooms do
    resources :messages
  end
end
