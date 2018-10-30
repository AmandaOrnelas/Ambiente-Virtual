class Questao < ApplicationRecord
  belongs_to :capitulo
  has_many :alternativas, dependent: :destroy
end
