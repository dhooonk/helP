Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/posts/new' => 'posts#new'
  get '/posts/create' => 'posts#create'

  get '/posts/index' => 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'

  get '/posts/destroy/:post_id' => 'posts#destroy'

  get '/posts/edit/:post_id' => 'posts#edit'
  get '/posts/update/:post_id' => 'posts#update'

end
