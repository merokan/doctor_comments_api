module Api
  module V1
    class CommentsController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

      before_action :find_comment, only: [:show, :update, :deactivate_comment, :destroy]

      def index
        comments = Comment.all
        render json: { status: "SUCCESS", message: "Loaded comments", data: comments }, status: :ok
      end

      def show
        render json: { status: "SUCCESS", message: "Loaded comment", data: @comment }, status: :ok
      end

      def create
        comment = Comment.new(comment_params)
        if comment.save
          # when comment is saved, Display the 5 recommend doctors in area (see in_location method in Comment model)
          doctor = Doctor.find(params[:id])
          doctors_in_area = Doctor.in_location(doctor.city, doctor.specialties)
          render json: { recommended_doctors: doctors_in_area, status: "SUCCESS", message: "Saved comment", data: comment }, status: :ok
        else
          # responds with a 400 response if the comment does not pass validations
          render json: { status: "ERROR", message: "Comment not saved", data: comment.errors }, status: :bad_request
        end
      end
      def update
        if @comment.update_attributes(comment_params)
          render json: { status: "SUCCESS", message: "Updated comment", data: @comment }, status: :ok
        else
          # responds with a 400 response if the comment does not pass validations
          render json: { status: "ERROR", message: "Comment not updated", data: @comment.errors }, status: :bad_request
        end
      end
      def deactivate_comment
        # updates comment status to inactive - could make sure to only show active comment to the user
        @comment.update status: "Inactive"
        render json: { status: "SUCCESS", message: "Deactivated comment", data: @comment }, status: :ok
      end
      def destroy
        comment.destroy
        render json: { status: "SUCCESS", message: "Deleted comment", data: @comment }, status: :ok
      end
      private
        def find_comment
          @comment = Comment.find(params[:id])
        end

        def comment_params
          params.permit(:comment_body, :rating, :author_id, :doctor_id)
        end

        def not_found_response(exception)
          # cleaner errors to display if record is not found
          render json: { error: exception.message }, status: :not_found
        end
    end
  end
end