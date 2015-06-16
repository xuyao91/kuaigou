class Admin::AdminsController < Admin::BaseController
  before_filter :find_admin, only: [:edit, :update]

  def index
    @admins = Admin.service_admin
    # @search = Order.order("status asc,id desc").search(params[:search])
    # @orders = @search.page(params[:page])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params[:admin].merge({level: 1}))
    if @admin.save
      redirect_to admin_admins_path, notice: '客服账户创建成功'
    else
      render :new, alert: '创建失败'
    end
  end

  def edit

  end

  def update
    if @admin.update_attributes(params[:admin])
      redirect_to admin_admins_path, notice: '客服账户修改成功'
    else
      redirect_to admin_admins_path, notice: '修改失败,登录名和密码必填,请确认!'
    end
  end

  private

  def find_admin
    @admin = Admin.find_by_id(params[:id])
    return redirect_to admin_admins_path, notice: '客服账号不存在' unless @admin
  end

end