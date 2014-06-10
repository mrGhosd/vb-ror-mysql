VoenbankRorPostgres::Application.routes.draw do
  root "index#index"
  get "static_pages/:page_id", controller: "static_pages", action: "page", as: "static_page"
  post "/login", controller: "index", action: "login"
  post "/index", controller: "index", action: "index"
  get "/private_office/:id", controller: "index", action: "private_office", as: "private_office"
  get "/logout", controller: "index", action: "logout"
  resource :stocks do
    # get '/:id', controller: 'stocks', action: 'show'
    get '/', controller: 'stocks', action: 'index'
    get '/:id/edit', controller: 'stocks', action: 'edit', as: "stock_edit"
    post '/:id/edit', controller: 'stocks', action: 'update', as: 'update_stock_edit'
    post '/:id/destroy', controller: 'stocks', action: 'destroy', as: 'delete'
    get "/new", controller: 'stocks', action: 'new'
    post "/new", controller: 'stocks', action: 'create'
    post '/:id/stock_switch', controller: 'stocks', action: 'stock_switch'
    end
  end
