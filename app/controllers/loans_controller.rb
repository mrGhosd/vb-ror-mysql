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
    @user = User.new(user_reg_params)
    if @user.save
      render json: {notice: "Спасибо за использование нашей системы! В ближайшее время с вами свяжется наш менеджер"}
      UserMailer.register_email(@user).deliver
    else
      render json: {errors: @user.errors}, status: :forbidden
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def loan_status
    loan = Loan.find(params[:id])
    if params[:result] == "loan-accept"
      stat = true
    else
      stat = false
    end
    loan.response = stat
    loan.save
    head :ok
  end

  def loan_request
    if current_user
      current_user_create_loan
      render json: {answer: flash[:notice]}, status: 200
    else
      new
      render 'loans/loan_request', layout: false
    end
  end


  def user_loan_payment_history
    loan = Loan.find(params[:id])
    redirect_to users_loan_loan_repayments_path(loan_id: loan.id)
  end


  private
  def user_reg_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone, :role_id, :sex, :date_of_birth, :place_of_birth,
                                 loans_attributes: [:id, :user_id, :loan_sum, :percent_id, :begin_date, :end_date],
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

  def current_user_loan_attributes
    {
        user_id: current_user.id,
        loan_sum: params[:amount],
        percent_id: current_user.active_percent,
        begin_date: Time.zone.now,
        end_date: Time.zone.now + params[:time].to_i.months
    }
  end

  def current_user_create_loan
    if current_user.loans.unpayed_loans.blank?
      current_user.loans.create(current_user_loan_attributes)
    else
      flash[:notice] = "У вас есть неоплаченные кредиты! Закройте сперва их"
    end
  end
end