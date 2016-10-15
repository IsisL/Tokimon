class TrainersController < ApplicationController
	def show
	end 
	def index
	end
	def new
		@tokimon = Trainers.new
	end
	def create
		@trainer = Trainers.new(tokimon_params)
		@trainer.save
		redirect_to @trainer
	end
	def edit
		@trainer = Trainers.find(params[:id])
	end
	def destroy
		@trainer = Trainers.find(params[:id])
		@trainer.destroy
	end
	private 
	def trainer_params
		params.require(:tokimon).permit(:name,:level)
	end
