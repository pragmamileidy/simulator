class Card < ActiveRecord::Base
	has_many :payments
	accepts_nested_attributes_for :payments

	#def verifica
	  where("number like ?", "%#{params}%") 
	 # true
	  #find_by(params)
	#end

	def vaerifica(params)
		find_ny(params)
	end

	def age
	  (Date.today - birthday).to_i/365
	end

end
