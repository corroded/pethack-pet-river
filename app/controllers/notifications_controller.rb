require './lib/message_sender'

class NotificationsController < ApplicationController
  def create
    pet = Pet.find_by(url: params[:id])

    MessageSender.send_message("Someone has found #{pet.name} at #{generate_map_url}")
  end

  private

  def permitted_params
    params.permit(:id, :lat, :lon)
  end

  def generate_map_url
    "https://www.google.com/maps/search/?api=1&query=#{permitted_params[:lat]},#{permitted_params[:lon]}"
  end
end
