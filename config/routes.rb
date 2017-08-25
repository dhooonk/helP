Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shops#index'
  get '/shops/new' => 'shops#new'
  post '/shops/create' => 'shops#create'

  get '/shops/index' => 'shops#index'
  get '/shops/show/:shop_id' => 'shops#show'

  post '/shops/destroy/:shop_id' => 'shops#destroy'

  get '/shops/edit/:shop_id' => 'shops#edit'
  post '/shops/update/:shop_id' => 'shops#update'


# 공지사항
  post '/shops/show/:shop_id/posts/create' => 'posts#create'

  get '/shops/show/:shop_id/posts/show/:post_id' => 'posts#show'

  get 'posts/edit/:post_id' => 'posts#edit'
  post 'posts/update/:post_id' => 'posts#update'

  post 'posts/destroy/:post_id' => 'posts#destroy'

end
