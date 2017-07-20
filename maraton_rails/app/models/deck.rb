class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :user, through: :games
  has_many :cards
end
