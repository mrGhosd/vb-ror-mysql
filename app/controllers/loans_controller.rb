class LoansController < ApplicationController

  def index
    @loans = Loan.all
  end

  def new
    ::Callback.new
    @user = User.new
    @loan = @user.loans.build
    @info = @user.build_contact_information
    @pasport = @user.build_passport
    @voen_pass = @user.build_voen_pasport
    @role_kursant = @user.build_role_kursant
    @role_contract = @user.build_role_contract
    @role_officer = @user.build_role_officer
  end

  def create
    params[:user][:date_of_birth].to_date
    @user = User.new(user_reg_params)
    @user.save
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  def loan_request
    new
    render 'loans/loan_request', layout: false
  end


  private
  def user_short_reg_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone, :user_role, :user_sex, :date_of_birth, :place_of_birth,
                                 loans_attributes: [:id, :user_id, :loan_sum, :begin_date, :end_date],
                                 contact_information_attributes: [:id, :user_id, :email])
  end

  def user_reg_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone, :role_id, :sex, :date_of_birth, :place_of_birth,
                                 loans_attributes: [:id, :user_id, :loan_sum, :begin_date, :end_date],
                                 contact_information_attributes: [:id, :user_id, :email, :actual_adress, :phone_adress,
                                                                  :contact_person_surname, :contact_person_name,
                                                                  :contact_person_secondname, :contact_person_phone],
                                 passport_attributes: [:id, :user_id, :pasport_seria, :pasport_number, :pasport_when,
                                                       :pasport_where, :pasport_code, :definite_registration,
                                                       :old_pasport_seria, :old_pasport_number],
                                 voen_pasport_attributes: [:id, :user_id, :voen_seria, :voen_number, :voen_where,
                                                           :voen_when, :nationality_id, :education_id,
                                                           :relashionship_id, :specialization_id, :sport_mastery_id],

                                 role_kursant_attributes: [:id, :user_id, :univercity_name, :faculty, :course,
                                                           :graduate_date, :course_post, :excelent_student, :debt,
                                                          :contract, :duty_phone, :education_phone],

                                 role_contract_attributes: [:id, :user_id, :rank_id, :post_id, :military_unit,
                                                            :unit_address, :duty_phone],

                                 role_officer_attributes: [:id, :user_id, :post_id, :unit_number, :unit_address,
                                                          :duty_phone, :rank_id],
                                 )

  end
end