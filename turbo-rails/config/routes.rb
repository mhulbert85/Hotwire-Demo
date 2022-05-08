# frozen_string_literal: true

Rails.application.routes.draw do
  root 'turbo_frames/nested_frames#index'

  namespace :turbo_frames do
    resources :nested_frames, only: %i[index new show]
  end

  resources :rooms do
    resources :messages
  end
end
