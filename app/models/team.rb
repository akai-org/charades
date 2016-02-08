# == Schema Information
#
# Table name: teams
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  password_digest :string
#  game_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Team < ActiveRecord::Base
  has_secure_password validations: false

  has_many :wins, class_name: 'Round', foreign_key: :winner_id

  validates :name, presence: true, uniqueness: { scope: :game_id }

  default_scope { with_points.order('points DESC') }

  def self.with_points
    joins('LEFT JOIN "rounds" ON "rounds"."winner_id" = "teams"."id"')
      .select('teams.*, COUNT(rounds.id) as points')
  end
end
