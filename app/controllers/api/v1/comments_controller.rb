module Api
  module V1
    class CommentsController < ApplicationController
      def index
        comments = Comment.all
        render json: { status: "SUCCESS", message: "Loaded comments", data: comments }, status: :ok
      end
      def show
        comment = Comment.find(params[:id])
        render json: { status: "SUCCESS", message: "Loaded comment", data: comment }, status: :ok
      end
      def create
        comment = Comment.new(comment_params)
        if comment.save
        # when comment is saved, Display the 5 recommend doctors in area (see in_location method in Comment model)
          @doctor = Doctor.find(params[:id])
          doctors_in_area = @doctor.in_location(@doctor.city)
          render json: { recommended_doctors: doctors_in_area, status: "SUCCESS", message: "Saved comment", data: comment }, status: :ok
        else
          render json: { status: "ERROR", message: "Comment not saved", data: comment.errors }, status: :unprocessable_entity
        end
      end
      def update
        comment = Comment.find(params[:id])
        if comment.update_attributes(comment_params)
          render json: { status: "SUCCESS", message: "Updated comment", data: comment }, status: :ok
        else
          render json: { status: "ERROR", message: "Comment not updated", data: comment.errors }, status: :unprocessable_entity
        end
      end
      def deactivate_comment
        comment = Comment.find(params[:id])
        comment.update status: "Inactive"
        render json: { status: "SUCCESS", message: "Deactivated comment", data: comment }, status: :ok
      end
      def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: { status: "SUCCESS", message: "Deleted comment", data: comment }, status: :ok
      end
      private
      def comment_params
        params.permit(:comment_body, :rating, :author_id, :doctor_id)
      end
    end
  end
end