class Category < ActiveRecord::Base
  has_many :dishes
  validates :name,  :presence => true,
                    :uniqueness => true,
                    :length => {:minimum => 3, :maximum => 254}
end
