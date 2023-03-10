Rails.application.routes.draw do
  post '/', to: 'pdf#create'
  get "/health", to: "health#show"
end
