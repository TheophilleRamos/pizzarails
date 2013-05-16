class Pizzarail < ActiveRecord::Base
  attr_accessible :address, :name, :phone, :price, :side_order, :size
end
