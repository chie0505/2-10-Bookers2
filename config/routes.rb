Rails.application.routes.draw do
  root to: 'homes#top'
  get "/home/about" => "homes#about"
  devise_for :users
  resources :homes
  resources :users
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# /XXXs	index	GET	一覧画面を生成
# /XXXs/:id	show	GET	詳細画面を生成
# /XXXs/new	new	GET	登録画面を生成
# /XXXs	create	POST	登録処理
# /XXXs/:id/edit	edit	GET	編集画面を生成
# /XXXs/:id	update	PUT	更新処理
# /XXXs/:id	destroy	DELETE	削除処理