class ContractDocument < ActiveRecord::Base
 scope :loan_enable, -> { where(contract_type: true, enabled: true).last }
 scope :deposit_enable, -> { where(contract_type: false, enabled: true).last }
end