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

  def self.orders_by_date date
    where('DATE(created_at) = ?', date)
  end
  def self.previous_order_grouped
    find(:all,
         :select => "DISTINCT created_at"
    )

    #select("DISTINCT date(created_at)")
    #find(:all,
    #     :select => "dish_id, COUNT(*) AS cnt",
    #     :conditions => ["DATE(orders.created_at) = ?", date],
    #)

    #group("date(created_at)")
  end
end


