class Capitulo < ApplicationRecord
	has_many :conteudos, dependent: :destroy
end
