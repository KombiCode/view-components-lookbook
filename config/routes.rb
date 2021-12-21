Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"
  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
end
