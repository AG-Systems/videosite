class RegistrationsController < Devise::RegistrationsController
    def new
        super
    end
    protected
    def after_sign_up_path_for(resource)
        '/subscribers/'
    end
end
