# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#index'

  namespace :turbo_frames do
    resources :nested_frames, only: %i[index new show]
    resources :shared_partials, only: %i[index new]
    resources :simple_frames, only: %i[index new]
  end

  resources :rooms do
    resources :messages
  end
end
