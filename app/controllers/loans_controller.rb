class LoansController < ApplicationController
  def new
    ::Callback.new
    @user = User.new
    @loan = @user.loans.build
    @info = @user.build_contact_information
    @pasport = @user.build_passport
    @voen_pass = @user.build_voen_pasport
  end

  def create
    binding.pry
    if params[:short_registration].blank?
      params[:user][:passport_attributes][:pasport_when].to_date
      @user = User.new(user_reg_params)
    else
      @user = User.new(user_short_reg_params)
    end
    @user.save
    redirect_to root_path
  end

  def loan_request
    self.new
    render 'loans/loan_request', layout: false
  end


  private
  def user_short_reg_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone,
                                 loans_attributes: [:id, :user_id, :loan_sum, :begin_date, :end_date],
                                 contact_information_attributes: [:id, :user_id, :email])
  end

  def user_reg_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone,
                                 loans_attributes: [:id, :user_id, :loan_sum, :begin_date, :end_date],
                                 contact_information_attributes: [:id, :user_id, :email, :actual_adress, :phone_adress,
                                                                  :contact_person_surname, :contact_person_name,
                                                                  :contact_person_secondname, :contact_person_phone],
                                 passport_attributes: [:id, :user_id, :pasport_seria, :pasport_number, :pasport_when,
                                                       :pasport_where, :pasport_code, :definite_registration,
                                                       :old_pasport_seria, :old_pasport_number],
                                 voen_pasport_attributes: [:id, :user_id, :voen_seria, :voen_number, :voen_where,
                                                           :voen_when, :nationality_id, :education_id,
                                                           :relashionship_id, :specialization_id, :sport_mastery_id])
  end
end