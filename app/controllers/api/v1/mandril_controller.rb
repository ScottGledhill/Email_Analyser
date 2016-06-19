class Api::V1::MandrilController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    email = Email.new(parsed_params)
    if email.save
      head status: 201
    else
      render json: email.errors, status: 400
    end
  end

  private

  def email_params
    params.permit(
      "Address",
      "EmailType",
      "Event",
      "Timestamp",
    )
  end

  def parsed_params
     email_params.inject({}) do |memo, param|
      key       = param.first.underscore
      value     = param.last
      memo[key] = value
      memo
    end
  end
end
