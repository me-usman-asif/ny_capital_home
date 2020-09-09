Rails.application.routes.draw do
  resources :projects do
    collection do
      get :search
    end
  end
end
