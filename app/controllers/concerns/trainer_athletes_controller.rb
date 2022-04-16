class TrainerAthletesController < ApplicationController
  def index
    @trainer_athletes = Trainer.athletes
  end
end
