class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :login, null: false
      t.string :password, null: false
      t.integer :level, null: false, default: 0 #0:系统管理员 1:客服人员
      t.timestamps
    end

    Admin.create!({login: 'admin', password: '123456'})
  end
end
