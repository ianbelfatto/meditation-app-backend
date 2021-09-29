class MeditationsController < ApplicationController
  before_action :authenticate_user
  def create
    meditation = Meditation.new(
      user_id: current_user.id,
      name: params[:name],
    )
    if meditation.save
      render json: { message: "Meditation created successfully" }, status: :created
    else
      render json: { errors: meditation.errors.full_messages }, status: :bad_request
    end
  end
  
  def index
    meditations = current_user.meditations
    render json: meditations
  end

  def show
    meditation = current_user.meditations.find_by(id: params[:id])
    if params[:q] == "edit"
      render json: meditation
    else
      render json: meditation
    end
  end

  def update
    meditation = current_user.meditations.find_by(id: params[:id])
    meditation.name = params[:name] || meditation.name
    meditation.save
    render json: meditation
  end

  def destroy
    meditation = current_user.meditations.find_by(id: params[:id])
    meditation.destroy
    render json: {
      message: "Meditation successfully deleted!",
      errors:  meditation.errors.full_messages
     }
  end
end
