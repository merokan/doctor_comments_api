module Api
  module V1
    class DoctorsController < ApplicationController
      before_action :find_doctor, only: [:show]

      def index
        doctors = Doctor.all
        render json: { status: "SUCCESS", message: "Loaded doctors", data: doctors }, status: :ok
      end
      def show
        render json: { status: "SUCCESS", message: "Loaded doctor", data: @doctor }, status: :ok
      end
      private
        def find_comment
          @doctor = Doctor.find(params[:id])
        end
    end
  end
end