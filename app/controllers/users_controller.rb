class UsersController < ApplicationController
  def index
    @users = User.all.paginate(page: params[:page], per_page: 10)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def edit
    @user = User.find(params[:user_id])
    render '/users/edit', layout: false
  end

  def update
    @user = User.find(params[:user][:id])
    if @user.update_attributes(user_params)
       message = "Ваша личная информация успешно обновлена"
    else
      message = "Ошибка! Повторите операцию позденее!"
    end
    flash[:notice] = message
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # redirect_to users_path
    render json: {success: true}
  end

  def user_nested_info
    render json: params[:class_name].constantize.all
  end

private
  def user_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone, :user_role, :user_sex, :date_of_birth, :place_of_birth,
                                 :avatar, :login, :password,
                                 contact_information_attributes: [:id, :user_id, :email, :actual_adress, :phone_adress,
                                                                  :contact_person_surname, :contact_person_name,
                                                                  :contact_person_secondname, :contact_person_phone],
                                 passport_attributes: [:id, :user_id, :pasport_seria, :pasport_number, :pasport_when,
                                                       :pasport_where, :pasport_code, :definite_registration,
                                                       :old_pasport_seria, :old_pasport_number],
                                 voen_pasport_attributes: [:id, :user_id, :voen_seria, :voen_number, :voen_where,
                                                           :voen_when, :user_nationality, :user_education,
                                                           :user_relashionship, :user_specialization, :user_sport_mastery],

                                 role_kursant_attributes: [:id, :user_id, :univercity_name, :faculty, :course,
                                                           :graduate_date, :course_post, :excelent_student, :debt,
                                                           :contract, :duty_phone, :education_phone],

                                 role_contract_attributes: [:id, :user_id, :rank_id, :post_id, :military_unit,
                                                            :unit_address, :duty_phone],

                                 role_officer_attributes: [:id, :user_id, :post_id, :unit_number, :unit_address,
                                                           :duty_phone, :rank_id],
    )
  end

  def edit_user_params
    params.require(:user).permit(:id, :surname, :name, :secondname, :contact_phone, :user_role, :sex, :date_of_birth, :place_of_birth,
                                 :avatar, :login, :password,
                                 contact_information_attributes: [:id, :user_id, :email, :actual_adress, :phone_adress,
                                                                  :contact_person_surname, :contact_person_name,
                                                                  :contact_person_secondname, :contact_person_phone],
                                 passport_attributes: [:id, :user_id, :pasport_seria, :pasport_number, :pasport_when,
                                                       :pasport_where, :pasport_code, :definite_registration,
                                                       :old_pasport_seria, :old_pasport_number],
                                 voen_pasport_attributes: [:id, :user_id, :voen_seria, :voen_number, :voen_where,
                                                           :voen_when, :user_nationality, :user_education,
                                                           :user_relashionship, :user_specialization, :user_sport_mastery],

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