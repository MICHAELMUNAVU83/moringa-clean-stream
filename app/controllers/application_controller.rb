class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

        protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:location, :name , :national_id_number , :company_name])
        end
end
