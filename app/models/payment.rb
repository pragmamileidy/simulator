class Payment < ActiveRecord::Base
	belongs_to :merchant
	belongs_to :client
	belongs_to :card

	accepts_nested_attributes_for :card

	before_create :verifica_card


  def verifica_card
    card = Card.verifica(params[:payment][:cards])
    if card
    	redirect_to payments_path, notice: "Se ha encontrado"
    else
    	redirect_to payments_path, notice: "No se ha encontrado"
    end
  end
end
