module Api
    module V1
        class DoctorsController < ApplicationController
            def index
                doctors = Doctor.all
                render json: {status: 'SUCCESS', message: 'Loaded doctors', data:doctors}, status: :ok
            end
            def show
                doctor = Doctor.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded doctor', data:doctor}, status: :ok
            end
        end
    end
end