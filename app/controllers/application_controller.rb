# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from StandardError, with: :internal_server_error

  private

  def internal_server_error
    render json: { message: I18n.t('errors.internal_server_error') }, status: 500
  end
end
