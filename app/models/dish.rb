class Dish < ActiveRecord::Base
  WEEK_DAYS = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'all_days']
  belongs_to :category
  has_many :order_dishes, :dependent => :destroy
  has_many :orders, :through => :order_dishes

  validates :name,  :presence => true,
            :length => {:minimum => 3, :maximum => 254}

  validates :description,  :presence => true,
            :uniqueness => true

  validates :price,  :presence => true

  validates :category_id,  :presence => true


  def self.week_day_dishes week_day
    where("week_day = ? OR week_day = ?", week_day, 6).includes(:category).order(:category_id).order(:id)
  end

  def self.tomorrow_dishes
    where("week_day = ? OR week_day = ?", Dish.next_work_day, 6).includes(:category).order(:category_id).order(:id)
  end

  def self.next_work_day
    if Time.now.wday != 5
      Time.now.wday+1
    else
      1
    end
  end
end
