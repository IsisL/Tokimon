class TokimonsController < ApplicationController
	def show
	end 
	def index
	end
	def new
		@tokimon = Tokimon.new
	end
	def create
		@tokimon = Tokimon.new(tokimon_params)
		@tokimon.save
		redirect_to @tokimon
	end
	def edit
		@tokimon = Tokimon.find(params[:id])
	end
	def destroy
		@tokimon = Tokimon.find(params[:id])
		@tokimon.destroy
	end
	private 
	def tokimon_params
		params.require(:tokimon).permit(:name,:weight,:height,:fly,:fight,:fire, :water,:electric,:ice)
	end
end

# <%= form_tag "/tokimons" do |f| %>
	# <%= text_field_tag "name"%>
	# <p><%= submit_tag "Save" %></p>