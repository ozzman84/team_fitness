class TrainerAthletesController < ApplicationController
  def index
    @trainer_athletes = Trainer.find(params[:trainer_id]).athletes
  end
end
