class PetsController < ApplicationController
  def show
    @pet = Pet.find_by(url: params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end
end
