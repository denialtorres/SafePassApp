class Api::V2::ApiBaseController < ApplicationController
  attr_reader :current_user

  skip_before_action :verify_authenticity_token
end
