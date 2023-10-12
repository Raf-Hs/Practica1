Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :blog_posts do
    post 'rate', to: 'blog_posts#rate'
    resources :comentarios
  end
  get '/search', to: 'blog_posts#search', as: :search_blog_posts
  root "blog_posts#index"

end
