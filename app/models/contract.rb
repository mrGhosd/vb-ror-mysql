class Contract < Prawn::Document

  def initialize(user, loan)
    super()
    @user = user
    @loan = loan
    @template = ContractDocument.loan_enable
    logo
    render_pdf
  end

  def get_title
    @template.file_name % special_keys_title
  end

  def logo
    path = "#{Rails.root}/app/assets/images/vb-logo.png"
    image path, width: 251, height: 40, position: :center
  end

  def render_pdf
    font_families.update("DejaVuSans" => {
        :normal => "#{Rails.root}/app/assets/font/DejaVuSans.ttf",
        :bold => "#{Rails.root}/app/assets/font/DejaVuSans-Bold.ttf",
        :italic => "#{Rails.root}/app/assets/font/DejaVuSans-Oblique.ttf",
        :bold_italic => "#{Rails.root}/app/assets/font/DejaVuSans-BoldOblique",
    })
    font "DejaVuSans"
    text get_text

  end

  private

  def get_text
    @template.main_text % special_keys_text
  end

  def special_keys_text
    {full_name: @user.full_name,
     new_line: "\n".html_safe,
     loan_id: @loan.id,
     loan_sum: @loan.loan_sum,
     loan_time: @loan.date_in_months,
     month_pay: @loan.everymonth_pay,
     pasport_seria: @user.passport.pasport_seria,
     pasport_number: @user.passport.pasport_number,
     pasport_when: @user.passport.pasport_when,
     pasport_where: @user.passport.pasport_where,
     user_phone: @user.contact_phone,
     user_email: @user.contact_information.email

    }
  end

  def special_keys_title
    {full_name: @user.full_name}
  end

end