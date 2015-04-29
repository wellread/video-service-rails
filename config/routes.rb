Rails.application.routes.draw do
  post 'support/create'

  delete '/support/:id' => 'support#destroy'

  get 'support/list'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'products#list'

  get '/products/:id', to: 'products#show', as: 'product'
  post 'call' => 'twilio#call'
  post 'connect' => 'twilio#connect'

end
