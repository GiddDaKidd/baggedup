Rails.application.routes.draw do
  root 'welcome#index'
  get 'home', to: 'welcome#index'
  get 'category', to: 'category#category'
  get 'cart', to: 'cart#cart'
  get 'blog', to: 'blog#blog'
  get 'blog_post', to: 'blog_post#blog_post'
  get 'contact', to: 'contact#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
