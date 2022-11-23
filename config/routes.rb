Rails.application.routes.draw do
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions",
  }
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"

  }



  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"

    resources :customers, only: [:show, :update, :edit, :index] do
      get :unsubscribe, on: :member
      patch :withdrawal, on: :member
    end
    
    resources :professions, only: [:show, :index]
    resources :questions do
      resource :favorites, only: [:create, :destroy]
      resources :answers, only: [:show, :index, :create, :destroy] do
        resources :replies, only: [:create, :destroy]
      end
    end
  end

  namespace :admin do
    get "/" => "homes#top"
    resources :questions
    resources :answers, only: [:destroy]
    resources :replies, only: [:destroy]
    resources :customers, only: [:show, :index, :edit, :update]
    resources :professions, only: [:index, :edit, :update, :create]
  end

  get "search" => "searches#search"
  get "admin/search" => "searches#admin_search"
  get "admin/customer_search" => "searches#admin_customer_search"
end
