class Admin::SessionsController < Admin::BaseController
  skip_filter :current_user, :redirect_sign_in

  def create
    admin = Admin.find_by_login_and_password(params[:login], params[:password])
    return redirect_to sign_in_path(login: params[:login]), notice: '用户名或密码错误' unless admin

    session[:admin_id] = admin.id
    redirect_to admin_orders_path, notice: '登录成功'
  end

  def destroy
    session[:admin_id] = nil
    redirect_to sign_in_path
  end

end
