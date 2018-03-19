Rails.application.routes.draw do
  
  root to: 'static_pages#home'
  get '/:locale' => 'static_pages#home'
  scope "/:locale" do
    get 'static_pages/home'
  end 
  scope "/:locale" do 
    get 'hosting', to: 'static_pages#hosting'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
