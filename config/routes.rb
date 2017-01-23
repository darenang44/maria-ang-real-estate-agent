Rails.application.routes.draw do
  resources :listings, param: :address
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get 'search', to: 'listings#search'
end

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create
#                     root GET    /                              welcome#index

            #       Prefix Verb   URI Pattern                       Controller#Action
            #     listings GET    /listings(.:format)               listings#index
            #              POST   /listings(.:format)               listings#create
            #  new_listing GET    /listings/new(.:format)           listings#new
            # edit_listing GET    /listings/:address/edit(.:format) listings#edit
            #      listing GET    /listings/:address(.:format)      listings#show
            #              PATCH  /listings/:address(.:format)      listings#update
            #              PUT    /listings/:address(.:format)      listings#update
            #              DELETE /listings/:address(.:format)      listings#destroy
