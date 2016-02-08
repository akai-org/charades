# == Schema Information
#
# Table name: rounds
#
#  id          :integer          not null, primary key
#  riddle      :string           not null
#  category_id :integer
#  winner_id   :integer
#  game_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_rounds_on_category_id  (category_id)
#  index_rounds_on_game_id      (game_id)
#  index_rounds_on_winner_id    (winner_id)
#

class Round < ActiveRecord::Base
  belongs_to :winner, class_name: 'Team'
  belongs_to :game
  belongs_to :category

  default_scope { order('created_at DESC') }

  after_initialize do
    self.category ||= Category.order('RANDOM()').first
  end

  def riddle=(riddle)
    self[:category] = nil
    self[:riddle] = riddle
  end

  def category=(category)
    self[:category_id] = category&.id
    self[:riddle] = category&.sample_word
  end
end
