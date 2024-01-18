# app/controllers/attendants/home_controller.rb
class Attendants::HomeController < ApplicationController
    def index
      @mensagem_de_boas_vindas = "Bem-vindo à página inicial do Atendente!"
    end
  end
  