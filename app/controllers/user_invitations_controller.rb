class UserInvitationsController < Devise::InvitationsController

  private

    def invite_params
      devise_parameter_sanitizer.sanitize(:invite).merge!(company_id: current_user.company_id)
    end

end
