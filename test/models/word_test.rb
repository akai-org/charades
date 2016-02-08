require 'test_helper'

describe Word do
  let(:word) { Word.new }

  it 'must be valid' do
    value(word).must_be :valid?
  end
end
