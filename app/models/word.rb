# == Schema Information
#
# Table name: words
#
#  id          :integer          not null, primary key
#  word        :string           not null
#  category_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_words_on_category_id  (category_id)
#

class Word < ActiveRecord::Base
  belongs_to :category

  validates :word, presence: true
end
