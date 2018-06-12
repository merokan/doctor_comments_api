
require 'rails_helper'

RSpec.describe 'Comments API', type: :request do
    let!(:comments) { create_list(:comment, 10) }
    let!(:doctors) { create_list(:doctor, 10) }
    let(:doctor_id) { doctors.first.id }
    let(:comment_id) { comments.first.id }
    
    # Test suite for INDEX - GET /comments
    describe "GET /api/v1/doctors/:doctor_id/comments" do
        # make HTTP get request before each example
        before { get "/api/v1/doctors/#{doctor_id}/comments" }
        it 'returns status code 200' do
            expect(response).to have_http_status(200)
        end
    end

    # Test suite for SHOW - GET /comments/:id
    describe 'GET /doctors/:doctor_id/comments/:id' do
        before { get "/api/v1/doctors/#{doctor_id}/comments/#{comment_id}" }
        it 'returns status code 200' do
            expect(response).to have_http_status(200)
        end
    end

    # Test suite for CREATE - POST /comments
    describe 'POST /api/v1/doctors/:doctor_id/comments' do
        let(:valid_attributes) { { comment_body: 'A new comment on a doctor', rating: '4' } }
        context 'when the request is invalid' do
            before { post "/api/v1/doctors/#{doctor_id}/comments", params: { comment_body: 'Foobar' } }
            it 'returns status code 422' do
                expect(response).to have_http_status(422)
            end
            it 'returns a validation failure message' do
                expect(response.body).to match(/Comment not saved/)
            end
        end
    end

    # Test suite for UPDATE - PUT /comments/:id
    describe 'PUT api/v1/doctors/:doctor_id/comments/:id' do
        let(:valid_attributes) { { comment_body: 'new comment', rating: "1" } }
        context 'when the record exists' do
            before { put "/api/v1/doctors/#{doctor_id}/comments/#{comment_id}", params: valid_attributes }
            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end
        end
    end
end