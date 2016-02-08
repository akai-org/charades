class GameSerializer < ActiveModel::Serializer
  attributes :id, :duration, :round_count, :status

  has_many :teams
  has_many :rounds

  has_one :current_round
end
