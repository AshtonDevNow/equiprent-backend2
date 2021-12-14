class Api::V1::BaseController < ApplicationController
  skip_before_action :verify_authenticity_token
  acts_as_token_authentication_handler_for User, except: [:login]
end
