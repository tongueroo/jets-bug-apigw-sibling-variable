Jets.application.routes.draw do
  resources :posts

  # :foo and *catchcall conflicts. Will get this error:
  #
  #     A sibling ({catchall+}) of this resource already has a variable path part -- only one is allowed
  #
  # get ':foo/posts', to: 'posts#index' - uncomment out this route to reproduce

  any "*catchall", to: "jets/public#show"

  root "jets/public#show"
end
