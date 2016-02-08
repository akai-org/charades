# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  has_many :words

  validates :name, presence: true

  accepts_nested_attributes_for :words

  def sample_word
    words.sample.word
  end
end
