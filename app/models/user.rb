class User < ActiveRecord::Base
    has_many :accounts
    has_many :banks, through: :accounts

    def total_balance 
        self.accounts.sum(:balance)
    end
end

# -> { distinct },