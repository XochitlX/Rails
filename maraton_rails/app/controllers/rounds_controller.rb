class RoundsController < ApplicationController
  
  def show
    p "Para ROund *********"
    p user_id = params[:user_id]
    p @deck_id = params[:deck_id]

    @user = User.find(user_id)
    @cards = Card.where(deck_id: @deck_id) #cartas completas x deck

    #Revolviendo Respuestas x cada pregunta
    card_answer = []
    @cards.each do |card|
      card_answer << Answer.where(card_id: card.id).sort_by{rand}
    end
    p @answers = card_answer
  end

end



