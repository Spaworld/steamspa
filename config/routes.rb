Rails.application.routes.draw do
  resources :generators, only: [:index]
  get 'products/steam-generator-kits' => 'static#kits', as: :kits
  get 'steam-generators-sizing-tool' => 'static#sizing', as: :sizing_tool
  get 'temp' => 'static#temp', as: :temp
  root 'static#sizing'
end
