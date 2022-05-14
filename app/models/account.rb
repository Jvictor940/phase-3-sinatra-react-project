class Account < ActiveRecord::Base
    belongs_to :bank
    belongs_to :user

    def summary
        "#{label} #{account_type} account balance is: #{balance}"
    end
end