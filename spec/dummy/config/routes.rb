Rails.application.routes.draw do
  root 'home#index'

  mount EngineWithWebpacker::Engine => "/engine_with_webpacker"
end
