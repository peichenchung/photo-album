Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos #自動產生7個controller#actions的路徑資源(產生7組網址)
  root "photos#index" #將網站根目錄設定為index.html.erb這個頁面

end
