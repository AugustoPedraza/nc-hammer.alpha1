NcHammerAlpha1::Application.routes.draw do
  
  resource :invitation, :only => [:new, :create]

  root to: 'home#index'

  
  

  devise_scope :user do
    match "/signup" => "devise/registrations#new"
    match "/login" => "devise/sessions#new"
  end
  devise_for :users
end
