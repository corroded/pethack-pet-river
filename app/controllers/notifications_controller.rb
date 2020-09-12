require './lib/message_sender'

class NotificationsController < ApplicationController
  def create
    pet = Pet.find_by(url: params[:id])

    MessageSender.send_message("Someone has found #{pet.name}! Click here to see where they are!")
  end
end
