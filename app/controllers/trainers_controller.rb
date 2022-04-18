class TrainersController < ApplicationController
  def index
    @trainers = Trainer.recently_created
  end

  def show
    @trainer = Trainer.find(params[:id])
  end
end
