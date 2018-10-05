class TempoCapitulo < ApplicationRecord
  belongs_to :user
  belongs_to :capitulo

  before_save { self.tempo_total ||= 0 }
end
