class Admin::BaseController < ApplicationController
  layout 'admin/admin'
  before_filter :current_user, :redirect_sign_in

  def current_user
    @current_user ||= if session[:admin_id]
                        Admin.find_by_id(session[:admin_id])
                      end
    @current_user
  end

  def redirect_sign_in
    redirect_to sign_in_path unless @current_user
  end

end