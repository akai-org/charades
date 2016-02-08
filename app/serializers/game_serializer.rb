class GameSerializer < ActiveModel::Serializer
  attributes :id, :duration, :rounds, :status

  has_many :teams
  has_many :rounds
end
