class CardsController < ApplicationController

	def index
		@cards = Card.all
	end

	def verfica
	  if params[:cards]
	  	@card = Card.verifica(params[:cards])
	    if @card.present?
	    	redirect_to payments_path, notice: "Se ha encontrado"
	    else
	    	redirect_to payments_path, notice: "No se ha encontrado"
	    end
	  end
	end
end
