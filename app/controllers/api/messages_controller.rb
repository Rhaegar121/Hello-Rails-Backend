class Api::MessagesController < ApplicationController
  def random_greeting
    message = Message.order('RANDOM()').first
    render json: { greeting: message.content }
  end
end
