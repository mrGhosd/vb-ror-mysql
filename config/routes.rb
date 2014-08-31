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
    get :admin, on: :collection
  end

  resources :shares do
    post :share_switch, on: :member
    get :admin, on: :collection
  end

  resources :contact_messages do
    get :admin, on: :collection
  end

  resources :callbacks

  resource :users do
    get :user_nested_info, on: :collection
    get :index, on: :collection
    get '/:id/show', controller: 'users', action: 'show', as: :profile_page
    get '/:id/get_document', controller: 'users', action: 'get_document', as: :document

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

  resources :percents do
    # get '/', controller: 'percents', action: 'admin'
  end

  resources :statistics

  resources :contract_documents

  # post "callbacks/new", controller: 'callbacks', action: 'create'

  namespace :api do
    resources :index do
      post 'login', on: :collection
    end
  end
end
