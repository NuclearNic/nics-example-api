class DynamicAdminRouter
  def self.load
    Rails.application.routes.draw do
      namespace :admin do
        # mount Bootsy::Engine => '/bootsy', as: 'bootsy'
         # resources :dashboard
        (Admin.models).each do |model|
          resources model.pluralize.to_sym
        end
      end
    end
  end
end


