class ApplicationController < ActionController::Base
    include Pagy::Backend
    Pagy::DEFAULT[:items] = 10

    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :telefono, :direccion, :edad])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nombre, :telefono, :direccion, :edad])
    end
    
    def after_sign_in_path_for(resource)
        home_path
    end  

end
