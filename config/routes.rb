NcHammerAlpha1::Application.routes.draw do
  root to: 'home#index'

  devise_scope :user do
    match "/signup" => "devise/registrations#new"
    match "/login" => "devise/sessions#new"
  end
  devise_for   :users
  
end
