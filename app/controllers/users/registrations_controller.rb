# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  private

  def respond_with(current_user, _opts = {})
  if resource.persisted?
    render json: {
      status: { code: 200, message: 'Signed up successfully.'},
      data: UserSerializer.new(current_user).serializable_hash[:data][:attrinutes]
    }
    else
      render json: {
        status: {message: "User couldn't be creater succesfully. #{current_user.error.full_messages.to_sentence}"}, status: :unprocessable_entity
      }
    end
  end
end
