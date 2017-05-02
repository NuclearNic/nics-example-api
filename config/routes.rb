Rails.application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users

  root :to => redirect('/admin')
  get 'admin' => 'admin#dashboard'
  get 'admin/app_selection/:app_id' => 'admin#app_selection'
  get 'admin/statistics' => 'admin#statistics'
  get 'admin/live_view' => 'admin#live_view'
  get 'admin/api_endpoints' => 'admin#api_endpoints'
  post 'admin/ordered_view_fields/:id/reorder_fields' => 'admin/ordered_view_fields#reorder_fields'
  get 'admin/ordered_view_fields/:id/show_field' => 'admin/ordered_view_fields#show_field', as: :show_field
  get 'admin/ordered_view_fields/:id/hide_field' => 'admin/ordered_view_fields#hide_field', as: :hide_field

  DynamicAdminRouter.load

  namespace :api do
    namespace :v1 do
      resources :apps, only: [:show]
      scope "/:app_id" do
        resources :articles, only: [:index]
        resources :pages, only: [:index]
        resources :videos, only: [:index]
        resources :maps, only: [:index]      
        resources :competitions, only: [:index]
        resources :user_feedbacks, only: [:create]
        resources :schedules, only: [:index, :show]
        resources :galleries, only: [:index]    
        resources :maps, only: [:index]
      end
    end
  end

end
