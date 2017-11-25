class LandmarksController < ApplicationController
  get "/landmarks" do

    erb :index
  end

  get "/landmarks/new" do
    erb :'landmarks/new'
  end

  post "/landmarks" do

    redirect to "/landmarks/#{@figure.id}"
  end

  get "/landmarks/:id" do

    erb :show
  end

  get "/landmarks/:id/edit" do

    erb :edit
  end

  post "/landmarks/:id" do

    redirect to "/figures/#{@figure.id}"
  end
end
