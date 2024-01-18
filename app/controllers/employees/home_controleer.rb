# app/controllers/attendants/home_controller.rb
class Employees::HomeController < ApplicationController
    def index
      @mensagem_de_boas_vindas = "Bem-vindo à página inicial do Funcionário!"
    end
  end
  