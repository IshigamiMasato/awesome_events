Rails.application.routes.draw do
  resources :events do
    resources :tickets
  end
  root "welcome#index"
  # 認証成功時に下期のURLにアクセスする
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  resources :retirements
  get "status" => "status#index", defaults: { format: "json" }
end
