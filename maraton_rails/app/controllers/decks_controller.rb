class DecksController < ApplicationController
  def show
    p "Para Decksssssssss *********"
    p user_id = params[:user_id]

    @user = User.find(user_id)
    @decks = Deck.all
  end
end
