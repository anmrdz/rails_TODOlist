class ApiController < ActionController::Base

    before_action :set_format
    skip_before_action :verify_authenticity_token

    def set_format
        request.format = :json
    end
end
