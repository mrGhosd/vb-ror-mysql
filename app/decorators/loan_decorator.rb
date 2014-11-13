class LoanDecorator < Draper::Decorator
  delegate_all
  decorates_association :user

  def loan_status
    status ? "Оплачен" : "#{object.payed_sum}"
  end

  def sum
    object.blank? ? "Не указана" : "#{object.sum} р."
  end

  def date_of_closing
    if status
      object.try(:actual_close_data).strftime("%d-%m-%Y")
    else
      object.end_date.strftime("%d-%m-%Y")
    end
  end

  def status
    object.blank? ? "Не существует"  : object.status
  end

  def closest_payment_day
    object.closest_payment_date.strftime("%d.%m")
  end

  def history_title
    if object
      "#{object.begin_date.to_date} - #{object.try(:actual_close_data).to_date} #{object.sum} р."
    end
  end
end