# app/controllers/patients_controller.rb
class PatientsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @patients = Patient.all
    end
  
    def show
      @patient = Patient.find(params[:id])
    end
  
    def new
      @patient = Patient.new
    end
  
    def create
      @patient = current_user.patients.build(patient_params)
  
      if @patient.save
        redirect_to @patient, notice: 'Patient was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @patient = Patient.find(params[:id])
    end
  
    def update
      @patient = Patient.find(params[:id])
  
      if @patient.update(patient_params)
        redirect_to @patient, notice: 'Patient was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @patient = Patient.find(params[:id])
      @patient.destroy
      redirect_to patients_url, notice: 'Patient was successfully destroyed.'
    end
  
    private
  
    def patient_params
      params.require(:patient).permit(:name, :age, :gender)
    end
  end
  