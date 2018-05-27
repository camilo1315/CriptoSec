# == Route Map
#
#               Prefix Verb   URI Pattern                              Controller#Action
#           home_index GET    /home/index(.:format)                    home#index
#               cities GET    /cities(.:format)                        cities#index
#                      POST   /cities(.:format)                        cities#create
#                 city GET    /cities/:id(.:format)                    cities#show
#                      PATCH  /cities/:id(.:format)                    cities#update
#                      PUT    /cities/:id(.:format)                    cities#update
#                      DELETE /cities/:id(.:format)                    cities#destroy
#                users GET    /users(.:format)                         users#index
#                      POST   /users(.:format)                         users#create
#                 user GET    /users/:id(.:format)                     users#show
#                      PATCH  /users/:id(.:format)                     users#update
#                      PUT    /users/:id(.:format)                     users#update
#                      DELETE /users/:id(.:format)                     users#destroy
#         transactions GET    /transactions(.:format)                  transactions#index
#                      POST   /transactions(.:format)                  transactions#create
#          transaction GET    /transactions/:id(.:format)              transactions#show
#                      PATCH  /transactions/:id(.:format)              transactions#update
#                      PUT    /transactions/:id(.:format)              transactions#update
#                      DELETE /transactions/:id(.:format)              transactions#destroy
#          technicians GET    /technicians(.:format)                   technicians#index
#                      POST   /technicians(.:format)                   technicians#create
#           technician GET    /technicians/:id(.:format)               technicians#show
#                      PATCH  /technicians/:id(.:format)               technicians#update
#                      PUT    /technicians/:id(.:format)               technicians#update
#                      DELETE /technicians/:id(.:format)               technicians#destroy
#               stores GET    /stores(.:format)                        stores#index
#                      POST   /stores(.:format)                        stores#create
#                store GET    /stores/:id(.:format)                    stores#show
#                      PATCH  /stores/:id(.:format)                    stores#update
#                      PUT    /stores/:id(.:format)                    stores#update
#                      DELETE /stores/:id(.:format)                    stores#destroy
#               images GET    /images(.:format)                        images#index
#                      POST   /images(.:format)                        images#create
#                image GET    /images/:id(.:format)                    images#show
#                      PATCH  /images/:id(.:format)                    images#update
#                      PUT    /images/:id(.:format)                    images#update
#                      DELETE /images/:id(.:format)                    images#destroy
#       forum_comments GET    /forums/:forum_id/comments(.:format)     comments#index
#                      POST   /forums/:forum_id/comments(.:format)     comments#create
#        forum_comment DELETE /forums/:forum_id/comments/:id(.:format) comments#destroy
#               forums GET    /forums(.:format)                        forums#index
#                      POST   /forums(.:format)                        forums#create
#                forum GET    /forums/:id(.:format)                    forums#show
#                      PATCH  /forums/:id(.:format)                    forums#update
#                      PUT    /forums/:id(.:format)                    forums#update
#                      DELETE /forums/:id(.:format)                    forums#destroy
#           components GET    /components(.:format)                    components#index
#                      POST   /components(.:format)                    components#create
#            component GET    /components/:id(.:format)                components#show
#                      PATCH  /components/:id(.:format)                components#update
#                      PUT    /components/:id(.:format)                components#update
#                      DELETE /components/:id(.:format)                components#destroy
#             bicycles GET    /bicycles(.:format)                      bicycles#index
#                      POST   /bicycles(.:format)                      bicycles#create
#              bicycle GET    /bicycles/:id(.:format)                  bicycles#show
#                      PATCH  /bicycles/:id(.:format)                  bicycles#update
#                      PUT    /bicycles/:id(.:format)                  bicycles#update
#                      DELETE /bicycles/:id(.:format)                  bicycles#destroy
#       users_sessions POST   /users_sessions(.:format)                users_sessions#create
#        users_session DELETE /users_sessions/:id(.:format)            users_sessions#destroy
# technicians_sessions POST   /technicians_sessions(.:format)          technicians_sessions#create
#  technicians_session DELETE /technicians_sessions/:id(.:format)      technicians_sessions#destroy
#      stores_sessions POST   /stores_sessions(.:format)               stores_sessions#create
#       stores_session DELETE /stores_sessions/:id(.:format)           stores_sessions#destroy
#                 root GET    /                                        home#index
# 

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'home/index'

  #devise_for :technicians
  #devise_for :stores
  #devise_for :users
  resources :cities
  resources :users
  resources :transactions
  resources :technicians
  resources :stores
  resources :images
  resources :forums do
    resources :comments , only: [:create, :index, :destroy]
  end
  resources :components
  resources :bicycles
  resources :users_sessions, only: [ :create ,:destroy]
  #resources :technicians_sessions, only: [ :create ,:destroy]
  #resources :stores_sessions, only: [ :create ,:destroy]
  
  root to: "home#index"

end
