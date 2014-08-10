module ApplicationHelper
  def setup_user_data(user)
    user.loans.build if user.loans.blank?
    user.build_contact_information if user.contact_information.blank?
    user.build_passport if user.passport.blank?
    user.build_voen_pasport if user.voen_pasport.blank?
      if user.user_role == 1
        user.build_role_kursant if user.role_kursant.blank?
      elsif user.user_role == 2
        user.build_role_contract if user.role_contract.blank?
      else
        user.build_role_officer if user.role_officer.blank?
      end
    user
  end

end
