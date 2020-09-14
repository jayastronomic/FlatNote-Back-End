Rails.application.routes.draw do
  namespace 'api' do 
    namespace 'v1' do
      resources :users, only: [:create, :show]  
      resources :notes, only: [:index, :create, :update, :destroy, :show]
    end
  end
end
