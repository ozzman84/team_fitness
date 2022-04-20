class TrainersController < ApplicationController
  def index
    @trainers = Trainer.recently_created
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def new
    @trainer = Trainer.new
  end

  def create
    trainer = Trainer.create!(trainer_params)
    redirect_to trainers_path
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :years_of_experience, :certified)
  end
end
