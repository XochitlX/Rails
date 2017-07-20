class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :statiscics
  has_many :cards, through: :statiscics
  has_many :answers, through: :statiscics
end
