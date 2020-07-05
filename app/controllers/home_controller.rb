class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  	@debtors = Debtor.where(:user_id => current_user.id).all
  	#@totaldebt = Debtor.where(:user_id => current_user.id).sum(:amount)
  	#@totalbalance = @totaldebt - Debtor.sum(:totalpayments)
  end

  # def totalpaymentsmade
  # 	@totaldebtbalance - 
  # end
end
