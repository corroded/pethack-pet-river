class PetsController < ApplicationController
  def show
    @pet = Pet.find_by(url: params[:id])
  end
end
