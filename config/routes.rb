BallinOctoLana::Application.routes.draw do
  resources :things

	root :to => "home#index"
end
