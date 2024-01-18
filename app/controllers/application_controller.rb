# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
    # ... (outros códigos)
  
    protected
  
    def after_sign_in_path_for(resource)
      # Verifica o tipo de usuário e redireciona para a página inicial correspondente
      case resource
      when Admin
        admins_root_path
      when Attendant
        attendant_root_path
      when Employee
        employee_root_path
      else
        root_path
      end
    end
  end
  