BannedWordsApp::Application.routes.draw do
  root :to => 'comments#index'

  resources :comments

  match "add_bw"          => "banned_words#add",      :as => :add_bw
  match "clear_bw"        => "banned_words#clear",    :as => :clear_bw
  match "remove_bw/:name" => "banned_words#destroy",  :as => :remove_bw

end
