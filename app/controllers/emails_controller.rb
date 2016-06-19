class EmailsController < ApplicationController
  def index
    @emails      = Email
    @email_types = Email.pluck(:email_type).uniq
  end
end
