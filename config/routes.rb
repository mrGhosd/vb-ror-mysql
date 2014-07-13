VoenbankRorPostgres::Application.routes.draw do
  root "index#index"
  get "static_pages/:page_id", controller: "static_pages", action: "page", as: "static_page"
  post "/login", controller: "index", action: "login"
  post "/index", controller: "index", action: "index"
  get "/private_office/:id", controller: "index", action: "private_office", as: "private_office"

  get "/feedback", controller: "static_pages", action: "feedback", as: "feedback"

  get "/logout", controller: "index", action: "logout"




  resource :stocks do
    get '/:id', controller: 'stocks', action: 'show'
    get '/', controller: 'stocks', action: 'index'
    get '/:id/edit', controller: 'stocks', action: 'edit', as: "stock_edit"
    post '/:id/edit', controller: 'stocks', action: 'update', as: 'update_stock_edit'
    post '/:id/destroy', controller: 'stocks', action: 'destroy', as: 'delete'
    get "/new", controller: 'stocks', action: 'new'
    post "/new", controller: 'stocks', action: 'create'
    post '/:id/stock_switch', controller: 'stocks', action: 'stock_switch'
  end

  resource :feedbacks do
    # post "/new", controller: 'feedbacks', action: 'new'
    post "/new", controller: 'feedbacks', action: 'create'
  end

  resource :partners do
    get "/new", controller: 'partners', action: 'new'
    post "/new", controller: 'partners', action: 'create'
    get '/', controller: 'partners', action: 'index'
    get '/index_admin', controller: 'partners', action: 'index_admin'
    get '/:id', controller: 'partners', action: 'show', as: "detail"
    get '/:id/edit', controller: 'partners', action: 'edit', as: "edit"
    post '/:id/edit', controller: 'partners', action: 'update', as: 'update_edit'
    post '/:id/destroy', controller: 'partners', action: 'destroy', as: 'delete'
    post '/:id/partner_switch', controller: 'partners', action: 'partner_switch'
  end

  resource :faqs do
    get "/new", controller: 'faqs', action: 'new'
    post "/new", controller: 'faqs', action: 'create'
    get '/', controller: 'faqs', action: 'index'
    get '/:id/edit', controller: 'faqs', action: 'edit', as: "edit"
    post '/:id/edit', controller: 'faqs', action: 'update', as: 'update'
    get '/admin_show', controller: 'faqs', action: 'admin_show'
    post '/:id/destroy', controller: 'faqs', action: 'destroy'
  end

  resource :shares do
    get "/new", controller: 'shares', action: 'new'
    post "/new", controller: 'shares', action: 'create'
    get '/', controller: 'shares', action: 'index'
    get '/index_admin', controller: 'shares', action: 'index_admin'
    get '/:id', controller: 'shares', action: 'show', as: "detail"
    get '/:id/edit', controller: 'shares', action: 'edit', as: "edit"
    post '/:id/edit', controller: 'shares', action: 'update', as: 'update_edit'
    post '/:id/destroy', controller: 'shares', action: 'destroy', as: 'delete'
    post '/:id/share_switch', controller: 'shares', action: 'share_switch'
  end

  resource :contact_messages do
    get '/', controller: 'contact_messages', action: 'index'
    # get "/new", controller: 'contact_messages', action: 'new'
    post "/new", controller: 'contact_messages', action: 'create'
    post '/:id/destroy', controller: 'contact_messages', action: 'destroy', as: 'delete'
  end

  resource :callbacks do
    get "/new", controller: 'callbacks', action: 'new'
    post "/new", controller: 'callbacks', action: 'create'
  end
  resource :users do
    resource :deposits do
      get 'deposit_request', on: :collection
    end
  end

  resource :percents do
    get '/', controller: 'percents', action: 'index'
    # get "/new", controller: 'percents', action: 'new'
    # post "/new", controller: 'percents', action: 'create'
  end

  # post "callbacks/new", controller: 'callbacks', action: 'create'
end
