VoenbankRorPostgres::Application.routes.draw do
  root "loans#new"
  get "static_pages/:page_id", controller: "static_pages", action: "page", as: "static_page"
  post "/login", controller: "application", action: "login"
  get "/private_office/:id", controller: "admin", action: "private_office", as: "private_office"

  get "/feedback", controller: "static_pages", action: "feedback", as: "feedback"

  get "/logout", controller: "application", action: "logout"
  get '/user_cabinet', controller: 'application', action: 'user_cabinet'




  resources :stocks do
    post :stock_switch, on: :member
  end

  resources :feedbacks do
    get :admin, on: :collection
  end

  resources :partners do
    post :partner_switch, on: :member
    get :admin, on: :collection
  end

  resources :faqs do
    # get "/new", controller: 'faqs', action: 'new'
    # post "/new", controller: 'faqs', action: 'create'
    # get '/', controller: 'faqs', action: 'admin'
    # get '/:id/edit', controller: 'faqs', action: 'edit', as: "edit"
    # post '/:id/edit', controller: 'faqs', action: 'update', as: 'update'
    get :admin, on: :collection
    # post '/:id/destroy', controller: 'faqs', action: 'destroy'
  end

  resource :shares do
    get "/new", controller: 'shares', action: 'new'
    post "/new", controller: 'shares', action: 'create'
    get '/', controller: 'shares', action: 'admin'
    get '/index_admin', controller: 'shares', action: 'index_admin'
    get '/:id', controller: 'shares', action: 'show', as: "detail"
    get '/:id/edit', controller: 'shares', action: 'edit', as: "edit"
    post '/:id/edit', controller: 'shares', action: 'update', as: 'update_edit'
    post '/:id/destroy', controller: 'shares', action: 'destroy', as: 'delete'
    post '/:id/share_switch', controller: 'shares', action: 'share_switch'
  end

  resource :contact_messages do
    get '/', controller: 'contact_messages', action: 'admin'
    # get "/new", controller: 'contact_messages', action: 'new'
    post "/new", controller: 'contact_messages', action: 'create'
    post '/:id/destroy', controller: 'contact_messages', action: 'destroy', as: 'delete'
  end

  resources :callbacks

  resource :users do
    get :user_nested_info, on: :collection
    get '/:id/show', controller: 'users', action: 'show', as: :profile_page

    resources :deposits do
      get 'deposit_request', on: :collection
      get 'deposits_contribution_list', on: :member

      resources :contribution_accounts

    end

    resources :loans do
      get 'loan_request', on: :collection
      post 'short_registration', on: :collection
      get 'loan_status', on: :member
      get 'user_loan_payment_history', on: :member
      resources :loan_repayments
    end
  end

  resource :percents do
    get '/', controller: 'percents', action: 'admin'
    # get "/new", controller: 'percents', action: 'new'
    # post "/new", controller: 'percents', action: 'create'
  end

  # post "callbacks/new", controller: 'callbacks', action: 'create'

  namespace :api do
    resources :users do
      post 'login', on: :collection
    end
  end
end
