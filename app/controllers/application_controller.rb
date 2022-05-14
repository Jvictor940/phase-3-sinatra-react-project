class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  get '/users' do 
    users = User.all
    # users.to_json(only:[:full_name, :country_of_residence], include: {accounts:{only: [:label, :balance, :account_type], include: {banks: {only: [:name, :market_capitalization, :country]}})
    users.to_json(include: { accounts: {include: :bank}})
  end

  get '/users/:id' do 
    user = User.find(params[:id])
    user.to_json(include: { accounts: {include: :bank}})
  end

  get '/accounts' do
    accounts = Account.all
    accounts.to_json
  end

  post '/accounts' do 
    accounts = Account.create(label: params[:label], balance: params[:balance], account_type: params[:account_type], bank_id: params[:bank_id], user_id: params[:user_id])
    accounts.to_json
  end
  
  patch '/accounts/:id' do 
    account = Account.find(params[:id])
    account.update(label: params[:label], balance: params[:balance], account_type: params[:account_type], bank_id: params[:bank_id], user_id: params[:user_id])
    account.to_json
  end

  delete '/accounts/:id' do 
    account = Account.find(params[:id])
    account.destroy
    account.to_json
  end

end
