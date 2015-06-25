Kuaigou::Application.routes.draw do
  root to: 'home#index'

  namespace "admin" do
    resources :sessions, only: :create
    resources :orders
    resources :admins
  end
  match 'sign_in'  => 'admin/sessions#new',     as: :sign_in
  match 'sign_out' => 'admin/sessions#destroy', as: :sign_out

  resources :orders, :home

  match 'weixin' => 'weixin#index'
  match 'weixin/check' => 'weixin#check'
end
