 class Deposit < ActiveRecord::Base
  belongs_to :user
  has_many :percent
  has_many :contribution_account
  validates_presence_of :current_amount
  before_create :add_percent

   def accounts
       arr = []
       self.contribution_account.each do |account|
         arr << account
       end
       arr
   end

   def days_diff
     (Time.zone.now.to_date - self.created_at.to_date ).to_i
   end

  def update_balance
    new_amount = self.current_amount + 100
    self.update(current_amount: new_amount)
  end

  def add_percent
    self.percent_id = self.user.active_percent if self.percent_id.blank?
  end
end