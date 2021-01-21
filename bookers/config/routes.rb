Rails.application.routes.draw do
resources :bookers
root to:"bookers#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
