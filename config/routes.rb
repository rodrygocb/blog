Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_for :attendants, controllers: {
    sessions: 'attendants/sessions',
    registrations: 'attendants/registrations'
  }
  
  devise_for :employees, controllers: {
    sessions: 'employees/sessions',
    registrations: 'employees/registrations'
  }

  # Rotas para os usuários administradores (admins)
  namespace :admins do
    root to: 'home#index'
    get 'home', to: 'home#index', as: 'home'
  end

  # Rotas para os usuários atendentes (attendants)
  namespace :attendants do
    root to: 'home#index'
    get 'home', to: 'home#index', as: 'home'
  end

  # Rotas para os usuários funcionários (employees)
  namespace :employees do
    root to: 'home#index'
    get 'home', to: 'home#index', as: 'home'
  end

  # Sua rota raiz
  root 'home#index'

  # Seus recursos existentes...
  resources :posts

  # Define suas rotas de aplicação conforme a DSL em https://guides.rubyonrails.org/routing.html

  # Revela o status de saúde em /up que retorna 200 se o aplicativo inicializar sem exceções, caso contrário, 500.
  # Pode ser usado por balanceadores de carga e monitores de tempo de atividade para verificar se o aplicativo está ativo.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define a rota do caminho raiz ("/")
  # root "posts#index"
end
