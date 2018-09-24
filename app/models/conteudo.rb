class Conteudo < ApplicationRecord
  belongs_to :capitulo
  has_many :aulas, dependent: :destroy
end
