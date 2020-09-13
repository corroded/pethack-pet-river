class PetsController < ApplicationController
  def show
    @pet = Pet.find_by(url: params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])

    if @pet.update!(pet_params)
      flash[:notice] = 'Pet profile updated!'
      redirect_to pet_path(@pet.url)
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :bounty, :description)
  end
end
