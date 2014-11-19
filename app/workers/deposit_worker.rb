class DepositWorker
  include Sidekiq::Worker
  sidekiq_options queue: :high_priority, retry: 5, bactrace: true

  def perform
    Deposit.find(9).update_balance
  end
end