BannedWordsApp::Application.routes.draw do
  root :to => 'comments#index'
  resources :comments, :only => [:index, :create]
  match "add_bw" => "banned_words#add", :as => :add_bw
end
