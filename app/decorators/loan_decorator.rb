class LoanDecorator < Draper::Decorator
  delegate_all
  decorates_association :user

  def loan_status
    status ? "Оплачен" : "#{object.payed_sum}"
  end

  def date_of_closing
    if status
      object.actual_close_data.strftime("%d-%m-%Y")
    else
      object.end_date.strftime("%d-%m-%Y")
    end
  end

  def closest_payment_day
    object.closest_payment_date.strftime("%d.%m")
  end

  def history_title
    "#{object.begin_date.to_date} - #{object.actual_close_data.to_date} #{object.loan_sum} р."
  end
end