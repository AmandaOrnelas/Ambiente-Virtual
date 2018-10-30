class Capitulo < ApplicationRecord
	has_many :conteudos, dependent: :destroy
	has_many :avaliacaos, dependent: :destroy
end
