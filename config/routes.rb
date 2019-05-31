Rails.application.routes.draw do
  get 'apis/return_scraping_data' => 'apis#return_scraping_data'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
