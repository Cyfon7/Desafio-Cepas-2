class ApplicationController < ActionController::Base
    def authorize_user!
        unless current_user.admin?
            redirect_to root_path, notice: "Forbidden access - only Admins"
        end
    end
end
