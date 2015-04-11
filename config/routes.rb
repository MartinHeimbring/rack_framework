MainApplication.router.config do
  get "/test", :to => "CustomController#index"
  get /.*/, :to => "CustomController#show"
end
