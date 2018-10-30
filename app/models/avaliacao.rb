class Avaliacao < ApplicationRecord
  belongs_to :capitulo
   has_many :questaos, dependent: :destroy
   has_many :prova_alunos, dependent: :destroy
end
