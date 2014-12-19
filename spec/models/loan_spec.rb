require 'rails_helper'

describe Loan do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :loan }
  let!(:unpayed_loan){ create :loan,  :unpayed,
                              user_id: user.id,
                              percent_id: percent.id}
  let!(:payed_loan) { create :loan, :payed,
                              user_id: user.id,
                              percent_id: percent.id}
  let!(:loan_repayment) { create :loan_repayment, loan_id: unpayed_loan.id }

  describe ".unpayed_loans" do
    it "return an array of unpayed loans" do
      expect(Loan.unpayed_loans).to eq([unpayed_loan])
    end
  end

  describe ".payed_loans" do
    it "return an array of payed loans" do
      expect(Loan.payed_loans).to eq [payed_loan]
    end
  end

  describe "#date_in_months" do
    it "return number of months between begin date and end date" do
      expect(unpayed_loan.date_in_months).to eq(6)
      expect(payed_loan.date_in_months).to eq(6)
    end
  end

  describe "#date_in_days" do
    it "return number of days between begin date and end date" do
      payed_loan.update(end_date: Time.zone.now + 1.month)
      expect(payed_loan.date_in_days).to eq(30)
    end
  end

  describe "#everymonth_pay" do
      context "with existent percent_id" do
        let!(:pay) { unpayed_loan.sum.to_i / unpayed_loan.date_in_months * percent.value }

        it "return everymonth pay sum" do
          expect(unpayed_loan.everymonth_pay).to eq(pay)
        end
      end

      context "without existent percent_id" do
        before { unpayed_loan.update(percent_id: nil) }

        it "return nil" do
          expect(unpayed_loan.everymonth_pay).to eq(nil)
        end
      end
  end

  describe "#repayments" do
    it "return loan_repayments as json" do
      expect(unpayed_loan.loan_repayments).to eq([loan_repayment])
    end
  end

  describe "#closest_payment_date" do
    it "return the next payment date" do
      expect(unpayed_loan.closest_payment_date.to_date).to eq((Time.zone.now + 1.month).to_date)
    end
  end

  describe "#actual_close_data" do
    context "loan was payed" do
      before {loan_repayment.update(loan_id: payed_loan.id)}
      it "return th last loan repayment date" do
        expect(payed_loan.actual_close_data).to eq(loan_repayment.created_at.to_date)
      end
    end

    context "loan still unpayed" do
      it "return end date of loan" do
        expect(unpayed_loan.actual_close_data).to eq(unpayed_loan.end_date.to_date)
      end
    end
  end

  describe "#current_day_in_loan_history" do
    it "return difference in days between begin date and current date" do
      date = (Time.zone.now.to_date - unpayed_loan.begin_date.to_date).to_i
      expect(unpayed_loan.current_day_in_loan_history).to eq(date)
    end
  end

  describe "#set_response" do
    let!(:loan) { create :loan, user_id: user.id, percent_id: percent.id }
    it "set response after creation of loan" do
      expect(loan.response).to eq(false)
    end
  end

  describe "#payed_sum" do
    context "loan unconfirmed" do
      before {unpayed_loan.update(response: false)}
      it "return an message" do
        expect(unpayed_loan.payed_sum).to eq("Не рассмотрен")
      end
    end
    context "loan confirmed" do
      before do
        payed_loan.update(response: true)
        unpayed_loan.update(response: true)
      end
      context "payed loan" do
        let!(:repayment){ create :loan_repayment, loan_id: payed_loan.id, granted_summ: payed_loan.sum }
        it "return string with same sums" do
          expect(payed_loan.payed_sum).to eq("#{repayment.granted_summ.to_f}/#{payed_loan.sum} р.")
        end
      end
      context "unpayed loan" do
        it "return an string with contrib accounts sum and loan sum" do
          expect(unpayed_loan.payed_sum).to eq("#{loan_repayment.granted_summ}/#{unpayed_loan.sum} р.")
        end
      end
    end

  end
end