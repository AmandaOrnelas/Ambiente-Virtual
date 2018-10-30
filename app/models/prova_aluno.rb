class ProvaAluno < ApplicationRecord
  belongs_to :avaliacao
  belongs_to :user
end
