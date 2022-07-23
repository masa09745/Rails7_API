class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private

    def sign_up_params
      params.permit(:first_name, :last_name, :first_kana, :last_kana, :employee_number, :email, :section, :password, :password_confirmation)
    end
end
