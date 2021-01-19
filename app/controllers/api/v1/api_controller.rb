class Api::V1::ApiController < ApplicationController
  layout none: true

  skip_before_action :verify_authenticity_token

end
