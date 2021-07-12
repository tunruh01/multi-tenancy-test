class ApplicationController < ActionController::Base
  set_current_tenant_through_filter
  before_action :set_tenant
  before_action :authenticate_user!

  private

  def set_tenant
    # if current_user
      current_account = current_user&.account
    # else
    #   current_account = Account.find(3)
    # end
    set_current_tenant(current_account)
  end
end
