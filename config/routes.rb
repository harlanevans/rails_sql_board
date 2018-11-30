Rails.application.routes.draw do
  root "boards#index"

  resources :boards do
    resources :lists
  end



  scope 'list/:list_id', as: 'list' do 
    resources :taks, only: [:new, :create]
  end

end
