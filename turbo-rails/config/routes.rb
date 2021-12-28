Rails.application.routes.draw do
  
  scope module: :forms do
    resources :examples do
      resources :steps
    end
  end

  resources :rooms do
    resources :messages
  end
end
