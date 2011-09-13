class Order < ActiveRecord::Base
  has_many :order_dishes, :dependent => :destroy
  has_many :dishes, :through => :order_dishes
  belongs_to :user

  attr_accessor :dish_ids
  after_save :update_dishes

  def update_dishes
    unless dish_ids.nil?
      self.order_dishes.each do |o|
        o.destroy unless dish_ids.include?(o.dish_id.to_s)
        dish_ids.delete(o.dish_id.to_s)
      end
      dish_ids.each do |d|
        self.order_dishes.create(:dish_id => d) unless d.blank?
      end
      reload
      self.dish_ids = nil
    end
  end

  def self.today_orders
    where('DATE(created_at) = ?', Date.today)
  end
end


