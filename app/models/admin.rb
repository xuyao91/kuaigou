class Admin < ActiveRecord::Base
  validates :login, :password, :level, presence: true

  attr_accessible :login, :password, :level

  enum_attr :level, :in => [
                     ['admin', 0, '系统管理员'],
                     ['service_admin', 1, '客服管理员']
                 ]
end
