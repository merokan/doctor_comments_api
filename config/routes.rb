Rails.application.routes.draw do

  namespace "api" do
    namespace "v1" do
      resources :doctors do
        resources :comments
      end
    end
  end
end

# Prefix Verb   URI Pattern                                                                              Controller#Action
#         GET    /api/v1/doctors/:doctor_id/comments(.:format)                                            api/v1/comments#index
#         POST   /api/v1/doctors/:doctor_id/comments(.:format)                                            api/v1/comments#create
#         GET    /api/v1/doctors/:doctor_id/comments/:id(.:format)                                        api/v1/comments#show
#         PATCH  /api/v1/doctors/:doctor_id/comments/:id(.:format)                                        api/v1/comments#update
#         PUT    /api/v1/doctors/:doctor_id/comments/:id(.:format)                                        api/v1/comments#update
#         DELETE /api/v1/doctors/:doctor_id/comments/:id(.:format)                                        api/v1/comments#destroy
#         GET    /api/v1/doctors(.:format)                                                                api/v1/doctors#index
#         POST   /api/v1/doctors(.:format)                                                                api/v1/doctors#create
#         GET    /api/v1/doctors/:id(.:format)                                                            api/v1/doctors#show
#         PATCH  /api/v1/doctors/:id(.:format)                                                            api/v1/doctors#update
#         PUT    /api/v1/doctors/:id(.:format)                                                            api/v1/doctors#update
#         DELETE /api/v1/doctors/:id(.:format)                                                            api/v1/doctors#destroy