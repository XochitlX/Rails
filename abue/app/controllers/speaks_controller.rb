class SpeaksController < ApplicationController
  def index
    if params[:abuelita]
      @abuelita = params[:abuelita]
    end
  end

  def create
    speak = params[:speak][:text]
    # @speak = speak_params
    
    if speak.upcase == "BYE TQM" || speak.downcase == "bye tqm"
      @abuelita = "Bye hijo tqm"
    elsif speak.upcase == speak
      @abuelita = "NO, NO DESDE 1983"
    else
      @abuelita = "HUH?! NO TE ESCUCHO, HIJO!"
    end

    redirect_to grandma_path(@abuelita)
  end

  
  private
  def speak_params
    params.require(:speak).permit(:text)
  end
end
