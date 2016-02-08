# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  duration    :integer          not null
#  round_count :integer          not null
#  status      :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Game < ActiveRecord::Base
  include AASM

  has_many :teams
  has_many :rounds

  validates :duration, presence: true
  validates :round_count, presence: true

  enum status: %i(created playing finished)

  aasm column: :status do
    state :created, initial: true
    state :playing
    state :finished

    event :start do
      transitions from: :created, to: :playing
    end

    event :finish do
      transitions from: :playing, to: :finished
    end
  end

  def current_round
    rounds.first
  end
end
