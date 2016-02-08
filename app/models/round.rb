# == Schema Information
#
# Table name: rounds
#
#  id         :integer          not null, primary key
#  riddle     :string           not null
#  winner_id  :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_rounds_on_game_id    (game_id)
#  index_rounds_on_winner_id  (winner_id)
#

class Round < ActiveRecord::Base
  belongs_to :winner, class_name: 'Team'
  belongs_to :game

  default_scope { order('created_at DESC') }
end
