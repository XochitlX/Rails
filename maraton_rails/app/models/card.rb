class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :answers
  has_many :statistics
end
