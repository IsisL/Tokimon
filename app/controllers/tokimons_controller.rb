class TokimonsController < ApplicationController
	def show
		@tokimon = Tokimon.find(params[:id])
	end 
	def index
		@tokimons = Tokimon.all
	end
	def new
		@tokimon = Tokimon.new
	end
	def create
		@tokimon = Tokimon.new(tokimon_params)
		if @tokimon.save
			redirect_to @tokimon, :notice => "Success Tokimon created!"
		else
			render "new"
		end
	end
	def edit
		@tokimon = Tokimon.find(params[:id])
	end
	def update 
		@tokimon = Tokimon.find(params[:id])
		if @tokimon.update_attributes(tokimon_params)
			redirect_to @tokimon, :notice => "Update complete!"
		else 
			render "edit"
		end
	end
	def destroy
		@tokimon = Tokimon.find(params[:id])
		@tokimon.destroy
		redirect_to tokimons_path, :notice => "Tokimon has been transferred to Professor Maple"
	end
	private 
	def tokimon_params
		params.require(:tokimon).permit(:name,:weight,:height,:fly,:fight,:fire, :water,:electric,:ice)
	end
end

# <%= form_tag "/tokimons" do |f| %>
	# <%= text_field_tag "name"%>
	# <p><%= submit_tag "Save" %></p>