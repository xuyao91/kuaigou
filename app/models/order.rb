class Order < ActiveRecord::Base
  attr_accessible :city, :car_type, :address_start, :address_end, :name, :tel, :total_price, :memo, :status, :update_author
  # 杭州、南京、宁波、常州、无锡
  enum_attr :city, :in => [
       ['shanghai', 1, '上海'],
       # ['hongzhou', 2, '杭州'],
       # ['nanjing', 3, '南京'],
       # ['ningbo', 4, '宁波'],
       # ['changzhou', 5, '常州'],
       # ['wuxi', 6, '无锡']
       ['beijing', 2, '北京'],
       ['qingdao', 3, '青岛'],
       ['wuhan', 4, '武汉']
   ]

  enum_attr :car_type, :in => [
       ['tricycle', 1, '三轮车'],
       ['sbread', 2, '小型面包车'],
       ['mbread', 3, '中型面包车'],
       ['bbread', 4, '大型面包车'],
       ['struck', 5, '小型货车'],
       ['mtruck', 6, '中型货车'],
       ['btruck', 7, '大型货车'],
       ['ltruck', 8, '超大大型货车']
   ]

  enum_attr :status, :in => [
       ['initial', 0, '新订单'],
       ['following', 1, '跟进中订单'],
       ['completed', 2, '已完成订单']
   ]
end
