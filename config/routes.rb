Rails.application.routes.draw do
  
  scope '/(:locale)', defaults: { locale: 'en' }, constraints: { locale: /en|es/ } do

      resources :articles
      root "articles#index"

   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
