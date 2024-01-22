class Employee < ApplicationRecord
  # Inclui módulos padrão do Devise. Outros disponíveis:
  # :confirmable, :lockable, :timeoutable, :trackable e :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validações:
  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true
  validates :rg, presence: true
  validates :telefone, presence: true
  validates :secretaria, presence: true
  validates :unidade, presence: true
  validates :cargo, presence: true
end
