class Bank < ActiveRecord::Base
    has_many :accounts
    has_many :users, through: :accounts

    # def open_account(user, label, account_type, opening_deposit)
    #     Account.create(
    #       user: user,
    #       bank: self,
    #       label: label,
    #       balance: opening_deposit,
    #       account_type: account_type
    #     )
    # end

    # def accounts_summary(user)
    #     Account.where(user_id: user.id, bank_id: self.id).map do |acct|
    #       acct.summary
    # end

    # def balance_by_account_type(account_type)
    #     self.accounts.where(account_type: account_type).sum(:balance)
    # end
end

# -> {distinct},