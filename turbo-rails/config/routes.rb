# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :turbo_frames do
    resources :simple_frames, only: %i[index new]
  end

  resources :rooms do
    resources :messages
  end
end
