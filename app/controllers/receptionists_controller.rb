# app/controllers/receptionists_controller.rb
class ReceptionistsController < ApplicationController
  before_action :authenticate_receptionist!
  before_action :set_receptionist, only: [:show, :edit, :update, :destroy]

  def index
    @receptionists = Receptionist.all
  end

  def show
    # Show individual receptionist details
  end

  def new
    @receptionist = Receptionist.new
  end

  def create
    @receptionist = Receptionist.new(receptionist_params)

    if @receptionist.save
      redirect_to @receptionist, notice: 'Receptionist was successfully created.'
    else
      render :new
    end
  end

  def edit
    @receptionist = Receptionist.find(params[:id])
    authorize @receptionist

  end

  def update
    if @receptionist.update(receptionist_params)
      redirect_to @receptionist, notice: 'Receptionist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @receptionist.destroy
    redirect_to receptionists_url, notice: 'Receptionist was successfully destroyed.'
  end

  private

  def set_receptionist
    @receptionist = Receptionist.find(params[:id])
  end

  def receptionist_params
    params.require(:receptionist).permit(:name, :email, :password, :password_confirmation)
  end
end
