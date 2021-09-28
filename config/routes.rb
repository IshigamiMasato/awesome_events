Rails.application.routes.draw do
  resources :events do
    resources :tickets
  end
  root "welcome#index"
  # 認証成功時に下期のURLにアクセスする
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
