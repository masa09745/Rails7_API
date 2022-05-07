class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private

    def sign_up_params
      params.permit(:email, :employee_number, :password, :password_confirmation, :name)
    end
end
