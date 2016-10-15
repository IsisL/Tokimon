class TrainersController < ApplicationController
	def show
		@trainer = Trainer.find(params[:id])
	end 
	def index
		@trainers = Trainer.all
	end
	def new
		@trainer = Trainer.new
	end
	def create
		@trainer = Trainer.new(trainer_params)
		@trainer.save
		redirect_to @trainer
	end
	def edit
		@trainer = Trainer.find(params[:id])
	end
	def destroy
		@trainer = Trainer.find(params[:id])
		@trainer.destroy
	end
	private 
	def trainer_params
		params.require(:trainer).permit(:name,:level)
	end
end
